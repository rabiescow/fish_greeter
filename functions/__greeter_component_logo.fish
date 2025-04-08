function __greeter_component_logo
  __greeter_util_set greeter_logo_color
  __greeter_util_set greeter_logo_path ~/.config/fish/src/arch-girl-blonde.png
  
  clear
  kitty +kitten icat --align left --use-window-size 10,10,200,200 --place 200x200@3x1 ~/.config/fish/src/arch-girl-blonde.png
  set_color normal
end

