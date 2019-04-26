#!/usr/bin/env bash
TC_PATH='./treccar'

sh target/appassembler/bin/IndexCollection -collection CarCollection \
-generator LuceneDocumentGenerator -threads 40 -input ${TC_PATH}/paragraphCorpus.v2.0 -index \
${TC_PATH}/lucene-index.car17.pos+docvectors+rawdocs -storePositions -storeDocvectors \
-storeRawDocs