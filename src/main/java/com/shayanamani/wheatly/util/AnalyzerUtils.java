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

package com.shayanamani.wheatly.util;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

public class AnalyzerUtils {
  static public List<String> tokenize(Analyzer analyzer, String s) {
    List<String> list = new ArrayList<>();

    try {
      TokenStream tokenStream = analyzer.tokenStream(null, new StringReader(s));
      CharTermAttribute cattr = tokenStream.addAttribute(CharTermAttribute.class);
      tokenStream.reset();
      while (tokenStream.incrementToken()) {
        if (cattr.toString().length() == 0) {
          continue;
        }
        list.add(cattr.toString());
      }
      tokenStream.end();
      tokenStream.close();
    } catch (IOException e) {
      e.printStackTrace();
    }

    return list;
  }
}
