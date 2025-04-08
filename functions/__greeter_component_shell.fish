function __greeter_component_shell
  set -l shell ($SHELL --version)

  __greeter_util_set greeter_shell_space '                 '
  __greeter_util_set greeter_shell_icon_color "#878787"
  __greeter_util_set greeter_shell_icon " "
  __greeter_util_set greeter_shell_text_color blue --bold
  __greeter_util_set greeter_shell_text "Shell"
  __greeter_util_set greeter_shell_text_suffix "   "
  __greeter_util_set greeter_shell_separator_color "#38D8C8"
  __greeter_util_set greeter_shell_separator " ➜ "
  __greeter_util_set greeter_shell_value_color "#878787"
  __greeter_util_set greeter_shell_value $shell

  set_color  normal
  echo -ens  $greeter_shell_space
  set_color  $greeter_shell_icon_color
  echo -ens  $greeter_shell_icon
  set_color  $greeter_shell_text_color
  echo -ens  $greeter_shell_text
  set_color  normal
  echo -ens  $greeter_shell_text_suffix
  set_color  $greeter_shell_separator_color
  echo -ens  $greeter_shell_separator
  set_color  $greeter_shell_value_color
  echo       $greeter_shell_value
  set_color  normal
end
