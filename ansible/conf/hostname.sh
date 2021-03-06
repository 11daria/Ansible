#!/bin/bash
a=$( hostname -I)
hostnamectl set-hostname $a
