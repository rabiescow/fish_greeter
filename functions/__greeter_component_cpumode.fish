function __greeter_component_cpumode
  set -l cpumode (cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

  __greeter_util_set greeter_cpumode_space "                  "
  __greeter_util_set greeter_cpumode_icon_color "#878787"
  __greeter_util_set greeter_cpumode_icon " 󰓅  "
  __greeter_util_set greeter_cpumode_text_color blue --bold
  __greeter_util_set greeter_cpumode_text "CPU Mode"
  __greeter_util_set greeter_cpumode_text_suffix ""
  __greeter_util_set greeter_cpumode_separator_color cyan
  __greeter_util_set greeter_cpumode_separator " ➜  "
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
