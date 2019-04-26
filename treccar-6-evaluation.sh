#!/usr/bin/env bash
TC_PATH='./treccar'

eval/trec_eval.9.0.4/trec_eval -m map -m recip_rank -c ${TC_PATH}/train.qrels ${TC_PATH}/train.run &>> trec_eval_train.txt

