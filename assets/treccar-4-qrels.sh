#!/usr/bin/env bash
# generating qrels
# you can edit the file to do the same for either pages or topics.

TC_PATH='./treccar'

for f in ${TC_PATH}/train/fold-[0-3]-base.train.cbor-hierarchical.qrels; do (cat "${f}"; echo); done >${TC_PATH}/train.qrels
cp ${TC_PATH}/train/fold-4-base.train.cbor-hierarchical.qrels ${TC_PATH}/dev.qrels
cp ${TC_PATH}/benchmarkY1/benchmarkY1-test/test.pages.cbor-hierarchical.qrels ${TC_PATH}/test.qrels

cat ${TC_PATH}/train.qrels | cut -d' ' -f1 > ${TC_PATH}/train.topics
cat ${TC_PATH}/dev.qrels | cut -d' ' -f1 > ${TC_PATH}/dev.topics
cat ${TC_PATH}/test.qrels | cut -d' ' -f1 > ${TC_PATH}/test.topics

sort -u -o ${TC_PATH}/train.topics ${TC_PATH}/train.topics
sort -u -o ${TC_PATH}/dev.topics ${TC_PATH}/dev.topics
sort -u -o ${TC_PATH}/test.topics ${TC_PATH}/test.topics