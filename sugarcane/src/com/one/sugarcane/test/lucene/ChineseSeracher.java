package com.one.sugarcane.test.lucene;

import java.io.StringReader;
import java.nio.file.Paths;
import java.util.List;

import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.search.highlight.SimpleSpanFragmenter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

/**
 * 根据索引搜索 并且高亮显示 TODO
 * 
 * @author 秦晓宇
 * @date 2018年5月15日
 * 
 */
public class ChineseSeracher {
	public static void search(String indexDir, String q) throws Exception {

		// 得到读取索引文件的路径
		Directory dir = FSDirectory.open(Paths.get(indexDir));
		// 通过dir得到的路径下的所有的文件
		IndexReader reader = DirectoryReader.open(dir);
		// 建立索引查询器
		IndexSearcher is = new IndexSearcher(reader);
		// 实例化分析器
		SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
		// 建立查询解析器
		/**
		 * 第一个参数是要查询的字段； 第二个参数是分析器Analyzer
		 */
		QueryParser parser = new QueryParser("contents", analyzer);
		// 根据传进来的p查找
		Query query = parser.parse(q);
		// 计算索引开始时间
		long start = System.currentTimeMillis();
		// 开始查询
		/**
		 * 第一个参数是通过传过来的参数来查找得到的query； 第二个参数是要出查询的行数
		 */
		TopDocs hits = is.search(query, 10);
		// 计算索引结束时间
		long end = System.currentTimeMillis();
		System.out.println("匹配 " + q + " ，总共花费" + (end - start) + "毫秒" + "查询到" + hits.totalHits + "个记录");
		// 高亮显示start

		// 算分
		QueryScorer scorer = new QueryScorer(query);

		// 显示得分高的片段
		Fragmenter fragmenter = new SimpleSpanFragmenter(scorer);

		// 设置标签内部关键字的颜色
		// 第一个参数：标签的前半部分；第二个参数：标签的后半部分。
		SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter("<b><font color='red'>", "</font></b>");

		// 第一个参数是对查到的结果进行实例化；第二个是片段得分（显示得分高的片段，即摘要）
		Highlighter highlighter = new Highlighter(simpleHTMLFormatter, scorer);

		// 设置片段
		highlighter.setTextFragmenter(fragmenter);

		// 高亮显示end

		// 遍历topDocs
		/**
		 * ScoreDoc:是代表一个结果的相关度得分与文档编号等信息的对象。 scoreDocs:代表文件的数组
		 * 
		 * @throws Exception
		 */
		for (ScoreDoc scoreDoc : hits.scoreDocs) {

			// 获取文档
			Document document = is.doc(scoreDoc.doc);
			// 输出全路径
			System.out.println(document.get("contents"));

			String contents = document.get("contents");
			if (contents != null) {
				// 把全部得分高的摘要给显示出来
				// 第一个参数是对哪个参数进行设置；第二个是以流的方式读入
				TokenStream tokenStream = analyzer.tokenStream("contents", new StringReader(contents));
				// 获取最高的片段
				System.out.println(highlighter.getBestFragment(tokenStream, contents));
			}

			// 关闭reader
		}
	}

	public static void main(String[] args) {
		String indexDir = "D:\\lucene\\dataindex";
		// 我们要搜索的内容
		String q = "山山水水";
		try {
			search(indexDir, q);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
