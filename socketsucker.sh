#!/bin/bash
# standup NC listeners on major ports
while [ 1 ]; do nc -l 80 >> ./ncoutput/httpdata ; done &
while [ 1 ]; do nc -l 443 >> ./ncoutput/httpsdata ; done &
while [ 1 ]; do nc -l 8080 >> ./ncoutput/httpsnsdata ; done &
while [ 1 ]; do nc -l -u 53 >> ./ncoutput/dnsdata ; done &

tcpdump -nni eth0 port not 22 >> tcpdumpdata
