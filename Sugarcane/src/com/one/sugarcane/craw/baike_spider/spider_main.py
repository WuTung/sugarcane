#/usr/bin/python
import html_downloader, html_parser, html_outputer,url_manager
import re
import requests

class SpiderMain(object):

    def __init__(self):
        # 初始化url管理器
        self.urls = url_manager.UrlManager()
        # 初始化url下载器
        self.downloader = html_downloader.HtmlDownloader()
        # 初始化url解析器
        self.parser = html_parser.HtmlParser()
        # 初始化url输出器
        self.outputer = html_outputer.HtmlOutputer()
    
    def craw(self, root_url):
        # 记录当前爬取得是第几个url
        count = 1
        self.urls.add_new_url(root_url)
        # 如果有待爬取的url
        while self.urls.has_new_url():
            try:
                # 从中获取一个url
                new_url = self.urls.get_new_url()
                print('craw %d : %s' % (count, new_url))
                # 把这个url下载下来
                html_cont = self.downloader.download(new_url)
                # 解析这个网页并且获取数据
                new_urls , new_data = self.parser.parse(new_url, html_cont)
                # 添加新的url
                self.urls.add_new_urls(new_urls)
                # 收集对应的数据
                self.outputer.collect_data(new_data)
            except:
                print("爬取失败,url不符合")
                
            if count == 100:
                break
            count = count + 1
        self.outputer.output_html()
    def crawPict(self,root_url):
        i = 0
        list = []
        resa = requests.get(root_url).text
        urllist = re.findall(r'//img.*\.jpg', resa)
        for img in urllist:
            print(img)
            a = 'http:' + img
            list.append(a)
        for url in list:
            try:
                a = 'D:\\aaa\\' + str(i)
                f = open(a + '.jpg','wb' )
                req = requests.get(url).content
                f.write(req)
                f.close()
                i += 1
            except:
                print("爬取失败 url不合格           " + a)

if __name__ == '__main__':
    root_url = 'http://baike.baidu.com/item/Python/407313'
    obj_spider = SpiderMain()
    obj_spider.craw(root_url)
    obj_spider.crawPict(root_url)
