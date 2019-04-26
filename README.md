### Wheatly

A tuned and customised indexer built on top of [Apache Lucene](https://en.wikipedia.org/wiki/Apache_Lucene).

#### Build indexer
You can build the indexer by either running shell script files or the set of commands below:
```
$ sudo apt-get install maven
$ mvn clean package appassembler:assemble
```

### alBERT
simply, adaptive learning Bidirectional Encoder Representations from Transformers, is a neural network model adapted from [BERT](https://arxiv.org/pdf/1810.04805.pdf) to learn patterns in passage rankings. 

#### Pre-processing
BERT only processes a certain format of files , TF-Records. Run corresponding files for each datasets:
* [convert_treccar_to_tfrecord.py](https://gitlab.cs.unh.edu/cs953-2019/cs953-team2/blob/master/wheatly/src/main/python/com/shawnazdam/albert/convert_treccar_to_tfrecord.py)
* [convert_msmarco_to_tfrecord.py](https://gitlab.cs.unh.edu/cs953-2019/cs953-team2/blob/master/wheatly/src/main/python/com/shawnazdam/albert/convert_msmarco_to_tfrecord.py)

#### Train and Prediction
We have provided Google Colaboratory environments for the two datasets, TREC-CAR and MS-MARCO. You can copy and train your own model using:
* [TREC-CAR colab](https://colab.research.google.com/drive/1qP9zvbxRns5f1AHwc6MlP5sTW5_txQ5c)
* [MS-MARCO colab](https://colab.research.google.com/drive/1AB8icm1halIkxRayhFBTsQu8V1U_302_)

=======
####  Why Wheatly?
Wheatly (a play with the name of the founder of Index Society, [Henry Benjamin Wheatley](https://www.indexers.org.uk/about-us/awards/wheatley-medal/)) 