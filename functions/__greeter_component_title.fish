function __greeter_component_title
  set -l user (whoami)
  set -l host (cat /etc/hostname)

  __greeter_util_set greeter_title_space "                "
  __greeter_util_set greeter_title_user_color "#ededed" --bold
  __greeter_util_set greeter_title_user $user
  __greeter_util_set greeter_title_separator_color "#878787"
  __greeter_util_set greeter_title_separator "@"
  __greeter_util_set greeter_title_host_color "#878787"
  __greeter_util_set greeter_title_host $host

  set_color  normal
  echo -ens  $greeter_title_space
  set_color  normal
  set_color  $greeter_title_user_color
  echo -ens  $greeter_title_user
  set_color  normal
  set_color  $greeter_title_separator_color
  echo -ens  $greeter_title_separator
  set_color  normal
  set_color  $greeter_title_host_color
  echo       $greeter_title_host
  set_color  normal
end
