PREVDIRKEYBIND="0D"
NEXTDIRKEYBIND="0C"

function changeKeyBinds () {

  unset keybindForward
  unset keybindBackward
  bindkey -r $PREVDIRKEYBIND
  bindkey -r $NEXTDIRKEYBIND

  vared -p 'Select Keystroke to go back a directory: ' -c keybindBackward
  vared -p 'Select Keystroke to go forwards a directory: ' -c keybindForward

  bindkey $keybindBackward prev-dir	# option + shift + left key
  bindkey $keybindForward next-dir	# option + shift + right key
}


function traverserFunctionMain () {
  echo "1) Change Key Binds\n2) Quit"
  vared -p 'What would you like to do?: ' -c tmp

  if [[ $tmp == 1 ]] then
    unset tmp
    changeKeyBinds
  elif [[ $tmp == 2 ]] then
    echo ""
  else
    echo "Choose 1 or 2!"
    unset tmp
    traverserFunctionMain
  fi

  unset tmp
}


alias traverser=traverserFunctionMain

function prev-dir {
	FILES+=($(pwd))
	cd ..
	zle accept-line
}

function next-dir {
	cd $FILES[-1]
	FILES[-1]=()
	zle accept-line
}

FILES=()

zle -N prev-dir
zle -N next-dir

bindkey $PREVDIRKEYBIND prev-dir	# option + shift + left key
bindkey $NEXTDIRKEYBIND next-dir	# option + shift + right key
