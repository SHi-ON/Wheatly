#!/usr/bin/env bash
TC_PATH=./treccar

wget http://trec-car.cs.unh.edu/datareleases/v2.0/paragraphCorpus.v2.0.tar.xz -P ${TC_PATH}
wget http://trec-car.cs.unh.edu/datareleases/v2.0/train.v2.0.tar.xz -P ${TC_PATH}
wget http://trec-car.cs.unh.edu/datareleases/v2.0/benchmarkY1-test.v2.0.tar.xz -P ${TC_PATH}

time tar -xvf ${TC_PATH}/paragraphCorpus.v2.0.tar.xz --checkpoint
time tar -xvf ${TC_PATH}/train.v2.0.tar.xz --checkpoint
time tar -xvf ${TC_PATH}/benchmarkY1-test.v2.0.tar.xz --checkpoint