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

package com.shayanamani.wheatly.util.mapper;

import com.shayanamani.wheatly.collection.SourceDocument;
import com.shayanamani.wheatly.util.MapCollections;

public abstract class DocumentMapper {
  protected MapCollections.Args args;

  public DocumentMapper(MapCollections.Args args) {
    this.args = args;
  }

  public abstract void setContext(DocumentMapperContext context);

  public abstract void process(SourceDocument doc, DocumentMapperContext context);

  public abstract void printResult(long durationMillis);
}
