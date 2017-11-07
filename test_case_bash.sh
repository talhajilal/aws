#/bin/bash
ip ntable | grep dev | sort | uniq | sed -e 's/^.*dev //;/^lo/d'
#DISTR=$(cat /etc/redhat-release | egrep -i 'redhat|centos|ubuntu')
DISTR=$(cat /etc/redhat-release | egrep -i  -oh 'redhat|centos|ubuntu')
case $DISTR in
     ubuntu)
          echo "I know it! It is an operating system based on Debian."
          ;;
     centos|rhel|CentOS)
          echo "Hey! It is my favorite Server OS!"
          ;;
     windows)
          echo "Very funny..."
          ;; 
     *)
          echo "Hmm, seems i've never used it."
          ;;
esac
