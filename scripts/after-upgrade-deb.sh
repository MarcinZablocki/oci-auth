chmod a+x /etc/network/if-up.d/ifup-rdma
systemctl=$(which systemctl)
${systemctl} daemon-reload
${systemctl} enable --now oci-cn-auth.service
${systemctl} enable --now oci-cn-auth.timer
${systemctl} restart oci-cn-auth.timer
