mkdir ./tfrecords
python convert_msmarco_to_tfrecord.py \
  --output_folder=${MM_PATH}/tfrecord \
  --vocab_file=${MM_PATH}/uncased_L-24_H-1024_A-16/vocab.txt \
  --train_dataset_path=${MM_PATH}/triples.train.small.tsv \
  --dev_dataset_path=${MM_PATH}/top1000.dev.tsv \
  --eval_dataset_path=${MM_PATH}/top1000.eval.tsv \
  --dev_qrels_path=${MM_PATH}/qrels.dev.tsv \
  --max_query_length=64\
  --max_seq_length=512 \
  --num_eval_docs=1000