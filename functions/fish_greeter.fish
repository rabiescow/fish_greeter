function fish_greeter
  set -lx __greeter_exit_code $status

  __vertical_util_set greeter_newline true
  __vertical_util_set greeter_order   logo title line os host kernel uptime \
                                      shell terminal cpu gpu memory

  if [ $greeter_newline = true ]
    echo
  end

  for component in $greeter_order
    eval __greeter_component_$component
  end
end
