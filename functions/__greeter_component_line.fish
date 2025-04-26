function __greeter_component_line
  __greeter_util_set greeter_line_space "                   "
  __greeter_util_set greeter_line_color green
  __greeter_util_set greeter_line "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

  set_color normal
  echo -ens $greeter_line_space
  set_color $greeter_line_color
  echo $greeter_line
end
