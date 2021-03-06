#!/usr/bin/env expect

set timeout -1
spawn python /opt/graphite/webapp/graphite/manage.py syncdb

expect "Would you like to create one now" {
  send "yes\r"
}

expect "Username *:" {
  send "root\r"
}

expect "E-mail address:" {
  send "root.graphite@example.com\r"
}

expect "Password:" {
  send "root\r"
}

expect "Password *:" {
  send "root\r"
}

expect "Superuser created successfully"