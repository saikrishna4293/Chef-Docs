name "chefclient"
description "chef-client related"
run_list "recipe[chef-client::cron]", "recipe[cron]", "recipe[logrotate]" 
