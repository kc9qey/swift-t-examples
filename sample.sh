#!/bin/bash
MAXSLEEP=15
MYSLEEPTIME=`perl -e "print int(rand(${MAXSLEEP}))" `
START=`date`
  BASENAME=`basename $0`
  mkdir ${BASENAME}.d
  cd ${BASENAME}.d
  ln -s /home/garnold/swift-t-examples/sample.sh ${BASENAME}.sh
  echo ${START}: working on ${BASENAME}.d/${BASENAME}.sh  
  echo ${BASENAME}.d/${BASENAME}.sh: simulated working for ${MYSLEEPTIME} seconds
  sleep ${MYSLEEPTIME}
END=`date`
  echo ${END}: finished working on ${BASENAME}.d/${BASENAME}.sh

