function __greeter_component_gpu
  set -l gpu (inxi -G | grep renderer | sed 's/\s*renderer:\s\(.*\)\s(.*/\1/')

  __greeter_util_set greeter_gpu_space "                  "
  __greeter_util_set greeter_gpu_icon_color "#878787"
  __greeter_util_set greeter_gpu_icon " 󰨇  "
  __greeter_util_set greeter_gpu_text_color blue --bold
  __greeter_util_set greeter_gpu_text "GPU"
  __greeter_util_set greeter_gpu_text_suffix "     "
  __greeter_util_set greeter_gpu_separator_color cyan
  __greeter_util_set greeter_gpu_separator " ➜  "
  __greeter_util_set greeter_gpu_value_color "#878787"
  __greeter_util_set greeter_gpu_value $gpu

  set_color  normal
  echo -ens  $greeter_gpu_space
  set_color  $greeter_gpu_icon_color
  echo -ens  $greeter_gpu_icon
  set_color  $greeter_gpu_text_color
  echo -ens  $greeter_gpu_text
  set_color  normal
  echo -ens  $greeter_gpu_text_suffix
  set_color  $greeter_gpu_separator_color
  echo -ens  $greeter_gpu_separator
  set_color  $greeter_gpu_value_color
  echo       $greeter_gpu_value
  set_color  normal
end
