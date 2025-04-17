function __greeter_component_logo
  __greeter_util_set greeter_logo_path ~/.config/fish/img/arch-girl-blonde.png
  set -eU greeter_kitty_available
  
  clear
  if type -q convert
    kitty +kitten icat \
        --align left \
        --use-window-size 10,10,200,200 \
        --place 200x200@3x1 \
        $greeter_logo_path
    __greeter_util_set greeter_kitty_available true
  else 
    __greeter_util_set greeter_kitty_available false
    "   "
  end
  set_color normal
end

