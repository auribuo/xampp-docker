#!/usr/bin/expect
spawn wget -O /home/go-pear.phar http://pear.php.net/go-pear.phar
expect eof

cd /opt/lampp/bin
spawn ./php /home/go-pear.phar

expect "1-11, 'all' or Enter to continue:"
send "\r"
expect eof 