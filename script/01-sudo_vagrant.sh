#!/bin/sh

sudoers=/etc/sudoers.d/vagrant

cat <<EOF >$sudoers
# THIS FILE SHOULD NOT BE LEFT IN PLACE!
vagrant	ALL=(ALL) NOPASSWD: ALL
EOF

chmod 0440 $sudoers
chown root:root $sudoers
exit 0
