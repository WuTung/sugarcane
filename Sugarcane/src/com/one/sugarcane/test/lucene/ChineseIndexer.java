package com.one.sugarcane.test.lucene;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Paths;

import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

/**
 * 索引文件 
 * @author 秦晓宇
 *
 */
public class ChineseIndexer {
	static int MAX_SIZE_NUM = 15464691;
	// 写索引实例
    private IndexWriter writer;

    /**
     * 构造方法 实例化IndexWriter
     * 
     * @param indexDir
     * @throws IOException
     */
    public ChineseIndexer(String indexDir) throws IOException {
        //得到索引所在目录的路径  
        Directory directory = FSDirectory.open(Paths.get(indexDir));
        //中文分词器  
        SmartChineseAnalyzer analyzer=new SmartChineseAnalyzer();  
        //保存用于创建IndexWriter的所有配置。
        IndexWriterConfig iwConfig = new IndexWriterConfig(analyzer);
        //实例化IndexWriter  
        writer = new IndexWriter(directory, iwConfig);
    }
    
    /**
     * 关闭写索引
     * 
     * @throws Exception
     * @return 索引了多少个文件
     */
    public void close() throws IOException {
        writer.close();
    }

    public int index(String dataDir) throws Exception {
        File[] files = new File(dataDir).listFiles();
        for (File file : files) {
            //索引指定文件
            indexFile(file);
        }
        //返回索引了多少个文件
        return writer.numDocs();
    }
    /**
     * 索引指定文件
     * 
     * @param f
     */
    private void indexFile(File f) throws Exception {
        //输出索引文件的路径
        System.out.println("索引文件：" + f.getCanonicalPath());
        //获取文档，文档里再设置每个字段
        Document doc = getDocument(f);
        //开始写入,就是把文档写进了索引文件里去了；
        writer.addDocument(doc);
    }
    
    /**
     * 获取文档，文档里再设置每个字段
     * 
     * @param f
     * @return document 
     */
    private Document getDocument(File f) throws Exception {
        Document doc = new Document();
        //把设置好的索引加到Document里，以便在确定被索引文档
        FileReader files = new FileReader(f);
        int num = 0;
        char [] buf = new char[MAX_SIZE_NUM];
        while((num = files.read(buf)) != -1) {
        	doc.add(new TextField("contents",new String(buf,0,num),Field.Store.YES));
        }
        //Field.Store.YES：把文件名存索引文件里，为NO就说明不需要加到索引文件里去 
        doc.add(new TextField("fileName", f.getName(), Field.Store.YES));
        //把完整路径存在索引文件里  
        doc.add(new TextField("fullPath", f.getCanonicalPath(), Field.Store.YES));
        
        return doc;
    }

    public static void main(String[] args) {
        //索引指定的文档路径
        String indexDir = "D:\\lucene\\dataindex";
        //被索引数据的路径  
        String dataDir = "D:\\lucene\\data";
        ChineseIndexer indexer = null;
        int numIndexed = 0;
        //索引开始时间  
        long start = System.currentTimeMillis();
        try {
            indexer = new ChineseIndexer(indexDir);
            numIndexed = indexer.index(dataDir);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                indexer.close();
            } catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        //索引结束时间
        long end = System.currentTimeMillis();
        System.out.println("索引：" + numIndexed + " 个文件 花费了" + (end - start) + " 毫秒");
    }

}
