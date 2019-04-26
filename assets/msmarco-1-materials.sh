#!/usr/bin/env bash

MM_PATH=./msmarco
mkdir ${MM_PATH}

wget https://msmarco.blob.core.windows.net/msmarcoranking/triples.train.small.tar.gz -P ${MM_PATH}
wget https://msmarco.blob.core.windows.net/msmarcoranking/top1000.dev.tar.gz -P ${MM_PATH}
wget https://msmarco.blob.core.windows.net/msmarcoranking/top1000.eval.tar.gz -P ${MM_PATH}
wget https://msmarco.blob.core.windows.net/msmarcoranking/qrels.dev.tsv -P ${MM_PATH}
wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip -P ${MM_PATH}

tar -xvf ${MM_PATH}/triples.train.small.tar.gz -C ${MM_PATH}
tar -xvf ${MM_PATH}/top1000.dev.tar.gz -C ${MM_PATH}
tar -xvf ${MM_PATH}/top1000.eval.tar.gz -C ${MM_PATH}
unzip ${MM_PATH}/uncased_L-24_H-1024_A-16.zip -d ${MM_PATH}