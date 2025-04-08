function __greeter_util_set
  set -l var $argv[1]
  set -U $var $argv[2..-1]
end
