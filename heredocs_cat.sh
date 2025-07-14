ssh bob@node01<<EOF
find /home/bob/docker_files -type f -name schema.sql -exec cat {} \;   
EOF > /tmp/initi.sql
