name "webservers"
description "webservers like apache, ntp"
run_list "role[testing]", "recipe[apache]", "recipe[variables]"
