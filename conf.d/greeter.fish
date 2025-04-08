set -g greeter_version 0.1

function __greeter_install
end

function __greeter_update
end

function __greeter_uninstall --on-event greeter_uninstall
  greeter_clear_config
  set -eg greeter_version
end
