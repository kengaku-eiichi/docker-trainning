#!/bin/bash

path="/etc/selinux/config"
[ -f "/vagrant${path}.org" ] || cp "${path}" /vagrant"${path}".org
\cp -f /vagrant"${path}" "${path}"
setenforce 0
