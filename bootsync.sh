#!/usr/bin/env bash

for MODELS in ModelsPart1.zip ModelsPart2.zip ModelsPart3.zip ; do
  if wget -q -O /home/sim/ModelArchive/${MODELS} https://raw.githubusercontent.com/lstaalhagen/C34313Models/main/${MODELS} ; then
    chown sim: /home/sim/ModelArchive/${MODELS}
  else
    rm -f /home/sim/ModelArchive/${MODELS}
  fi
done
