function __greeter_component_uptime
  set -l uptime (uptime | sed 's/.*up \([0-9]*\) days,\s*\([0-9]*\):*\([0-9]*\).*/\1:\2:\3 (d:h:m)/')

  __greeter_util_set greeter_uptime_space '                 '
  __greeter_util_set greeter_uptime_icon_color "#878787"
  __greeter_util_set greeter_uptime_icon "󱇻 "
  __greeter_util_set greeter_uptime_text_color blue --bold
  __greeter_util_set greeter_uptime_text "Uptime"
  __greeter_util_set greeter_uptime_text_suffix "  "
  __greeter_util_set greeter_uptime_separator_color "#38D8C8"
  __greeter_util_set greeter_uptime_separator " ➜ "
  __greeter_util_set greeter_uptime_value_color "#878787"
  __greeter_util_set greeter_uptime_value $uptime

  set_color  normal
  echo -ens  $greeter_uptime_space
  set_color  $greeter_uptime_icon_color
  echo -ens  $greeter_uptime_icon
  set_color  $greeter_uptime_text_color
  echo -ens  $greeter_uptime_text
  set_color  normal
  echo -ens  $greeter_uptime_text_suffix
  set_color  $greeter_uptime_separator_color
  echo -ens  $greeter_uptime_separator
  set_color  $greeter_uptime_value_color
  echo       $greeter_uptime_value
  set_color  normal
end
