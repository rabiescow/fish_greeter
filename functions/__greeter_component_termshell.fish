function __greeter_component_termshell
  set -l term $TERM
  set -l shell ($SHELL --version)

  __greeter_util_set greeter_terminal_space "                  "
  __greeter_util_set greeter_terminal_icon_color "#878787"
  __greeter_util_set greeter_terminal_icon "   "
  __greeter_util_set greeter_terminal_text_color blue --bold
  __greeter_util_set greeter_terminal_text "Terminal"
  __greeter_util_set greeter_terminal_text_suffix ""
  __greeter_util_set greeter_terminal_separator_color cyan
  __greeter_util_set greeter_terminal_separator " ➜  "
  __greeter_util_set greeter_terminal_value_color "#878787"
  __greeter_util_set greeter_terminal_value $term
  __greeter_util_set greeter_shell_prefix " :: "
  __greeter_util_set greeter_shell_value $shell

  set_color  normal
  echo -ens  $greeter_terminal_space
  set_color  $greeter_terminal_icon_color
  echo -ens  $greeter_terminal_icon
  set_color  $greeter_terminal_text_color
  echo -ens  $greeter_terminal_text
  set_color  normal
  echo -ens  $greeter_terminal_text_suffix
  set_color  $greeter_terminal_separator_color
  echo -ens  $greeter_terminal_separator
  set_color  $greeter_terminal_value_color
  echo -ens  $greeter_terminal_value
  echo -ens  $greeter_shell_prefix
  echo       $greeter_shell_value
  set_color  normal

end
