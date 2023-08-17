#!/bin/bash -e
################################################################################
##  File:  apt-ubuntu-archive.sh
##  Desc:  Script for adding additional apt repo to /etc/apt/sources.list and /etc/cloud/templates/sources.list.ubuntu.tmpl
################################################################################

echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs) main restricted" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs) universe" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-updates main restricted" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-updates universe" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl

echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs) multiverse" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-updates multiverse" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl

echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-backports main restricted universe multiverse" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl

echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-security main restricted" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-security universe" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
echo "deb http://ports.ubuntu.com/ubuntu-ports/ $(lsb_release -cs)-security multiverse" | tee -a /etc/apt/sources.list /etc/cloud/templates/sources.list.ubuntu.tmpl
