#!/bin/bash

## Automate the process of salt-master config changes

## Clean previos config
sudo rm -rf /srv/*

## Copy salt content into /srv
sudo cp -R salt /srv

## Copy salt master config into /etc/salt/
sudo cp master /etc/salt

## Restart salt-master service and check its status
sudo /etc/init.d/salt-master restart
sudo /etc/init.d/salt-master status