function __greeter_component_cpu
  set -l cpu (cat /proc/cpuinfo | grep "model name" | head -n1 | sed 's/model name\s*:\s\(.*\)/\1/')

if test greeter_kitty_available
  __greeter_util_set greeter_cpu_space "  /   |  |  -\   "
else
  __greeter_util_set greeter_cpu_space "                 "
end
  __greeter_util_set greeter_cpu_icon_color "#878787"
  __greeter_util_set greeter_cpu_icon "󰻠 "
  __greeter_util_set greeter_cpu_text_color blue --bold
  __greeter_util_set greeter_cpu_text "CPU"
  __greeter_util_set greeter_cpu_text_suffix "     "
  __greeter_util_set greeter_cpu_separator_color "#38D8C8"
  __greeter_util_set greeter_cpu_separator " ➜ "
  __greeter_util_set greeter_cpu_value_color "#878787"
  __greeter_util_set greeter_cpu_value $cpu

  set_color  normal
  echo -ens  $greeter_cpu_space
  set_color  $greeter_cpu_icon_color
  echo -ens  $greeter_cpu_icon
  set_color  $greeter_cpu_text_color
  echo -ens  $greeter_cpu_text
  set_color  normal
  echo -ens  $greeter_cpu_text_suffix
  set_color  $greeter_cpu_separator_color
  echo -ens  $greeter_cpu_separator
  set_color  $greeter_cpu_value_color
  echo       $greeter_cpu_value
  set_color  normal
end
