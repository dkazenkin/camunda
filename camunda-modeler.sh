#!/bin/bash
#
# > chmod +x ./camunda-modeler
#
# если при запуске ошибка 
# [14158:0212/150132.084042:FATAL:setuid_sandbox_host.cc(157)] 
# The SUID sandbox helper binary was found, but is not configured correctly. 
# Rather than run without sandboxing I'm aborting now. You need to make sure 
# that /home/user/camunda-modeler/chrome-sandbox is owned by root and has mode 4755.
#
# > sudo chown root ./chrome-sandbox
# > sudo chmod 4755 ./chrome-sandbox
#

./camunda-modeler >/dev/null 2>&1 &

# если ничего непомогает
# > ./camunda-modeler --no-sandbox >/dev/null 2>&1 &
