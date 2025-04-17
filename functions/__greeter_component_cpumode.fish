function __greeter_component_cpumode
  set -l cpumode (cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

# if test !greeter_kitty_available
  # __greeter_util_set greeter_cpumode_space " /_-''    ''-_\\  "
# else
  __greeter_util_set greeter_cpumode_space "                 "
# end
  __greeter_util_set greeter_cpumode_icon_color "#878787"
  __greeter_util_set greeter_cpumode_icon "󰓅 "
  __greeter_util_set greeter_cpumode_text_color blue --bold
  __greeter_util_set greeter_cpumode_text "CPU Mode"
  __greeter_util_set greeter_cpumode_text_suffix ""
  __greeter_util_set greeter_cpumode_separator_color "#38D8C8"
  __greeter_util_set greeter_cpumode_separator " ➜ "
  __greeter_util_set greeter_cpumode_value_color "#878787"
  __greeter_util_set greeter_cpumode_value $cpumode

  set_color  normal
  echo -ens  $greeter_cpumode_space
  set_color  $greeter_cpumode_icon_color
  echo -ens  $greeter_cpumode_icon
  set_color  $greeter_cpumode_text_color
  echo -ens  $greeter_cpumode_text
  set_color  normal
  echo -ens  $greeter_cpumode_text_suffix
  set_color  $greeter_cpumode_separator_color
  echo -ens  $greeter_cpumode_separator
  set_color  $greeter_cpumode_value_color
  echo       $greeter_cpumode_value
  set_color  normal
end
