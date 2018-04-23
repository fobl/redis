#!/usr/bin/env bash

if [[ "${MASTER}" == "true" ]]; then
  cp redis-master.conf /etc/redis.conf
else
  cp redis-slave.conf /etc/redis.conf

  sed -i "s/%master-ip%/${master}/" /redis-slave/redis.conf
  sed -i "s/%master-port%/6379/" /redis-slave/redis.conf
fi

