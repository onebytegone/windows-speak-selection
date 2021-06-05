Add-Type -AssemblyName System.Speech

# Stop the current running instance of this script if there is one
if (Test-Path -Path .\lock -PathType Leaf) {
    $PreviousPID = Get-Content -Path .\lock
    if (Get-Process -Id $PreviousPID -ErrorAction SilentlyContinue) {
        Stop-Process -ID $PreviousPID -Force
        Remove-Item .\lock
        return
    }
}

$Text = Get-Clipboard -Raw
if ($null -eq $Text) {
    [console]::Beep(262, 100)
    return
}

$PID | Out-File -FilePath .\lock

$SpeechSynthesizer = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
$SpeechSynthesizer.Rate = 4.5
$SpeechSynthesizer.Speak($Text)

Remove-Item .\lock
