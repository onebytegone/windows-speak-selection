# Windows: Speak Selected Text

On macOS there is a [feature][macos-docs] that will make the OS read the selected text
aloud when a keyboard shortcut is pressed. Windows Narrator and Magnifier don't really
replicate this same functionality. As such, the scripts in this repo were created to
replicate this functionality.

[macos-docs]: https://support.apple.com/guide/mac-help/have-your-mac-speak-text-thats-on-the-screen-mh27448/mac#mchlf7772701

## Requirements

   * [AutoHotKey](https://www.autohotkey.com/)
   * PowerShell (likely preinstalled on your Windows machine)

## Installation

   1. Download the scripts to a safe place
   2. Make `copy-selected-and-speak.ahk` run at startup
      * See [AutoHotKey FAQ](https://www.autohotkey.com/docs/FAQ.htm#Startup)

## Usage

   1. Select text that you would like to have read aloud
   2. Press `Ctrl + Esc`
      * Note: This shortcut would normally open the Start menu

## License

This software is released under the MIT license. See [the license file](LICENSE) for more
details.
