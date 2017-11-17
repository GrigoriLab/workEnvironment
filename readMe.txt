You can tell Vagrant to prefer your system tools with the VAGRANT_PREFER_SYSTEM_BIN environment variable, which seems to fix this problem (for me):

VAGRANT_PREFER_SYSTEM_BIN=1 vagrant ssh
or put this into your .bash_profile:

export VAGRANT_PREFER_SYSTEM_BIN=1