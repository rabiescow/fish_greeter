function __greeter_component_kernel
  set -l kernel (uname -sr)

  __greeter_util_set greeter_kernel_space "                  "
  __greeter_util_set greeter_kernel_icon_color "#878787"
  __greeter_util_set greeter_kernel_icon " 󰠰  "
  __greeter_util_set greeter_kernel_text_color blue --bold
  __greeter_util_set greeter_kernel_text "Kernel"
  __greeter_util_set greeter_kernel_text_suffix "  "
  __greeter_util_set greeter_kernel_separator_color cyan
  __greeter_util_set greeter_kernel_separator " ➜  "
  __greeter_util_set greeter_kernel_value_color "#878787"
  __greeter_util_set greeter_kernel_value $kernel

  set_color  normal
  echo -ens  $greeter_kernel_space
  set_color  $greeter_kernel_icon_color
  echo -ens  $greeter_kernel_icon
  set_color  $greeter_kernel_text_color
  echo -ens  $greeter_kernel_text
  set_color  normal
  echo -ens  $greeter_kernel_text_suffix
  set_color  $greeter_kernel_separator_color
  echo -ens  $greeter_kernel_separator
  set_color  $greeter_kernel_value_color
  echo       $greeter_kernel_value
  set_color  normal
end
