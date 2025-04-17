function __greeter_component_host
  set -l host (cat /etc/hostname)

  # if test greeter_kitty_available
    # __greeter_util_set greeter_host_space "     /  \        "
    # else
    __greeter_util_set greeter_host_space "                 "
  # end
  __greeter_util_set greeter_host_icon_color "#878787"
  __greeter_util_set greeter_host_icon "󰠦 "
  __greeter_util_set greeter_host_text_color blue --bold
  __greeter_util_set greeter_host_text "Host"
  __greeter_util_set greeter_host_text_suffix "    "
  __greeter_util_set greeter_host_separator_color "#38D8C8"
  __greeter_util_set greeter_host_separator " ➜ "
  __greeter_util_set greeter_host_value_color "#878787"
  __greeter_util_set greeter_host_value $host

  set_color  normal
  echo -ens  $greeter_host_space
  set_color  $greeter_host_icon_color
  echo -ens  $greeter_host_icon
  set_color  $greeter_host_text_color
  echo -ens  $greeter_host_text
  set_color  normal
  echo -ens  $greeter_host_text_suffix
  set_color  $greeter_host_separator_color
  echo -ens  $greeter_host_separator
  set_color  $greeter_host_value_color
  echo       $greeter_host_value
  set_color  normal
end
