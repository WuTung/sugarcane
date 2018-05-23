'''
Created on 2018年5月21日

@author: 秦晓宇
'''
import urllib.request

#200请求成功、303重定向、400请求错误、401未授权、403禁止访问、404文件未找到、500服务器错误
class HtmlDownloader(object):
    
    def download(self, url):
        if url is None:
            return None
        respons = urllib.request.urlopen(url)
        if respons.getcode() != 200:
            return None
        return respons.read()

