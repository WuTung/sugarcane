'''
Created on 2018年1月4日

@author: ll
'''
#需要维护两个列表
#1.需要爬取得url列表
#2.爬取国的url列表

class UrlManager(object):
    
    def __init__(self):
        self.new_urls = set()
        self.old_urls = set()
    
    #向管理器中添加一个新的url
    def add_new_url(self,url):
        if url is None:
            return
        if url not in self.new_urls and url not in self.old_urls:
            self.new_urls.add(url)
    #添加批量的url
    def add_new_urls(self,urls):
        if urls is None or len(urls) == 0:
            return
        for url in urls:
            self.add_new_url(url)
    #判断是否有待爬取得url
    def has_new_url(self):
        return len(self.new_urls) != 0

    #获得新的爬取得url
    def get_new_url(self):
        new_url = self.new_urls.pop()
        self.old_urls.add(new_url)
        return new_url


    
    
    
    
    
    
    
    



