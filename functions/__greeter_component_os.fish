function __greeter_component_os
  set -l os (cat /etc/os-release | head -n 1 | sed 's/NAME="\(.*\)"/\1/')

if test greeter_kitty_available
  __greeter_util_set greeter_os_space "      /\\         "
else
  __greeter_util_set greeter_os_space "                   "
end
  __greeter_util_set greeter_os_icon_color "#878787"
  __greeter_util_set greeter_os_icon " "
  __greeter_util_set greeter_os_text_color blue --bold
  __greeter_util_set greeter_os_text "OS"
  __greeter_util_set greeter_os_text_suffix "      "
  __greeter_util_set greeter_os_separator_color "#38D8C8"
  __greeter_util_set greeter_os_separator " ➜ "
  __greeter_util_set greeter_os_value_color "#878787"
  __greeter_util_set greeter_os_value $os

  set_color  normal
  echo -ens  $greeter_os_space
  set_color  $greeter_os_icon_color
  echo -ens  $greeter_os_icon
  set_color  $greeter_os_text_color
  echo -ens  $greeter_os_text
  set_color  normal
  echo -ens  $greeter_os_text_suffix
  set_color  $greeter_os_separator_color
  echo -ens  $greeter_os_separator
  set_color  $greeter_os_value_color
  echo       $greeter_os_value
  set_color  normal
end
