file_max=102400

>/etc/security/limits.conf cat << EOF 

* soft nofile $file_max
* hard nofile $file_max
* soft nproc $file_max
* hard nproc $file_max

EOF
