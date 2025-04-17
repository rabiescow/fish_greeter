function __greeter_component_uptime
  set -l secs (uptime --raw | sed 's/^[0-9]\{10\} \([0-9]*\.[0-9]\{6\}\) [0-9]\{1\} [0-9]*\.[0-9]\{2\} [0-9]*\.[0-9]\{2\} [0-9]*\.[0-9]\{2\}.*/\1/')
  set secs (echo "scale=0;($secs / 1)" | bc)
  set -l days (echo "scale=0;($secs / 86400)" | bc)
  set -l hrs (echo "scale=0;(($secs % 86400) / 3600)" | bc)
  set -l mins (echo "scale=0;(($secs % 3600) / 60)" | bc)
  if test $secs -lt 60
    set uptime (echo "$secs seconds")
  else if test $secs -lt 3600
    set uptime (echo "$mins:$secs (m:s)")
  else if test $secs -lt 86400
    set uptime (echo "$hrs:$mins (h:m)")
  else
    set uptime (echo "$days:$hrs:$mins (d:h:m)")
  end

if test greeter_kitty_available
  __greeter_util_set greeter_uptime_space "   /      \      "
else
  __greeter_util_set greeter_uptime_space "                 "
end
  __greeter_util_set greeter_uptime_space ''
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
