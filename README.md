# zsh-traverser
A tool to traverse your terminal directories using keystrokes

## Installation of custom zsh plugins

- In your zsh terminal either type `$ZSH_CUSTOM/plugins/` to get into your custom plugins directory or find where your custom zsh plugins are stored
- `git clone` this repo into that directory
- In your `.zshrc` file in your root add `zsh-traverser` to your plugins array, i.e plugins=(... zsh-traverser)
- Restart your terminal

## How to use

### Defaults

The default keystroke for moving back a directory (i.e `cd ..`) is `shift+option+left`.

The default keystroke to move forwards to a directory you were previously on (i.e `cd -`) is `shift+option+right`

### Changing Keystrokes

To change your keystrokes, type `traverser` into your terminal and you will get two options: 
1. Change Keystrokes
2. Quit

Type "1" into the terminal to allow you to change your keystroke.

Select your new keystroke to move back a directory and then a new keystroke to move forwards a directory.

## Issues, Questions or Suggestions
Any issues with this, please contact Ben Pollard at either:

- benpo@aleios.com with the subject `Traverser Support`
- Message me on LinkedIn: https://www.linkedin.com/in/ben-pollard-139bb5150/


I am very new to creating anything with zsh, so any feedback would be amazing!