# Firejail profile for gcloud
# This file is overwritten after every install/update
# Persistent local customizations
include gcloud.local
# Persistent global definitions
include globals.local

# noexec ${HOME} will break user-local installs of gcloud tooling
ignore noexec ${HOME}

noblacklist ${HOME}/.boto
noblacklist ${HOME}/.config/gcloud
noblacklist /var/run/docker.sock

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-programs.inc

apparmor
caps.drop all
machine-id
netfilter
nodbus
nodvd
# required for sudo-free docker
#nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-dev
private-etc alternatives,ca-certificates,crypto-policies,hosts,ld.so.cache,localtime,nsswitch.conf,pki,resolv.conf,ssl
private-tmp
