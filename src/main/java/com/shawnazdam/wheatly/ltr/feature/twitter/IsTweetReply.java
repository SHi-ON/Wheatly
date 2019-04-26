/**
 * Anserini: A toolkit for reproducible information retrieval research built on Lucene
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.shawnazdam.wheatly.ltr.feature.twitter;

import com.shawnazdam.wheatly.index.generator.TweetGenerator.StatusField;
import com.shawnazdam.wheatly.ltr.feature.FeatureExtractor;
import com.shawnazdam.wheatly.rerank.RerankerContext;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.Terms;

public class IsTweetReply implements FeatureExtractor {
  @Override
  public float extract(Document doc, Terms terms, RerankerContext context) {
    return doc.getField(StatusField.IN_REPLY_TO_STATUS_ID.name) == null ? 0.0f : 1.0f;
  }

  @Override
  public String getName() {
    return "IsTweetReply";
  }
}
