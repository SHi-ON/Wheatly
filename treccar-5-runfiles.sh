#!/usr/bin/env bash
TC_PATH='./treccar'

nohup target/appassembler/bin/SearchCollection -topicreader Car -index ${TC_PATH}/lucene-index.car17.pos+docvectors+rawdocs -topics ${TC_PATH}/train.topics -output ${TC_PATH}/train.run -hits 10 -bm25 &

nohup target/appassembler/bin/SearchCollection -topicreader Car -index ${TC_PATH}/lucene-index.car17.pos+docvectors+rawdocs -topics ${TC_PATH}/dev.topics -output ${TC_PATH}/dev.run -hits 10 -bm25 &

nohup target/appassembler/bin/SearchCollection -topicreader Car -index ${TC_PATH}/lucene-index.car17.pos+docvectors+rawdocs -topics ${TC_PATH}/test.topics -output ${TC_PATH}/test.run -hits 1000 -bm25 &
