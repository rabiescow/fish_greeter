function __greeter_component_memory
  set -l mem_tot (cat /proc/meminfo | grep MemTotal | sed 's/MemTotal:[ ]*\(.*\) kB/scale=2;\1\/1000000/' | bc)
  set -l mem_use (cat /proc/meminfo | grep 'Active:' | sed 's/Active:[ ]*\(.*\) kB/scale=2;\1\/1000000/' | bc)
  set -l mem_proc (string join '' 'scale=3;(' $mem_use '/' $mem_tot ')*100' | bc)
  set -l memory (string join '' $mem_use 'GiB / ' $mem_tot 'GiB (' $mem_proc ' %)')


  __greeter_util_set greeter_memory_space "                 "
  __greeter_util_set greeter_memory_icon_color "#878787"
  __greeter_util_set greeter_memory_icon "󰘚 "
  __greeter_util_set greeter_memory_text_color blue --bold
  __greeter_util_set greeter_memory_text "Memory"
  __greeter_util_set greeter_memory_text_suffix "  "
  __greeter_util_set greeter_memory_separator_color "#38D8C8"
  __greeter_util_set greeter_memory_separator " ➜ "
  __greeter_util_set greeter_memory_value_color "#878787"
  __greeter_util_set greeter_memory_value $memory

  set_color  normal
  echo -ens  $greeter_memory_space
  set_color  $greeter_memory_icon_color
  echo -ens  $greeter_memory_icon
  set_color  $greeter_memory_text_color
  echo -ens  $greeter_memory_text
  set_color  normal
  echo -ens  $greeter_memory_text_suffix
  set_color  $greeter_memory_separator_color
  echo -ens  $greeter_memory_separator
  set_color  $greeter_memory_value_color
  echo       $greeter_memory_value
  set_color  normal
end
