bootloader --location=mbr
network --bootproto=dhcp
url --url="https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os/"
lang en_US.UTF-8
keyboard us
timezone --utc America/New_York
clearpart --all
autopart
rootpw --plaintext weakpassword
user --name=test --password=weakpassword --plaintext
firstboot --enable
poweroff

%packages
@^workstation-product-environment
-selinux-policy-minimum
%end

%post
touch $INSTALL_ROOT/home/home_preserved
%end