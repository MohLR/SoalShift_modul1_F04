#!/bin/bash

awk /'cron/ || /CRON/,!/sudo/ || !/SUDO/' /var/log/syslog | awk 'NF < 13' > ~/Documents/syslogikul.log
