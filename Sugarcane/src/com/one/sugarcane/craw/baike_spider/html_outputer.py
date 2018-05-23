'''
Created on 2018年5月21日

@author: 秦晓宇
'''
import xlwt

class HtmlOutputer(object):
    
    def __init__(self):
        self.datas=[]
    
    def collect_data(self,data):
        if data is None:
            return
        self.datas.append(data)

    
    def output_html(self):
        j=1
        a=['url','title','summary']
        work_space = xlwt.Workbook(encoding='utf-8',)
        data_sheet = work_space.add_sheet('demo',cell_overwrite_ok=True)
        for i in range(len(a)):
            data_sheet.write(0,i,a[i])      
        for data in self.datas:
            print(data['url'])
            data_sheet.write(j,0,data['url'])
            data_sheet.write(j,1,data['title'])
            data_sheet.write(j,2,data['summary'])
#             fout.write("<tr>")
#             fout.write("<td>%s</td" % data['url'])
#             fout.write("<td>%s</td" % data['title'])
#             fout.write("<td>%s</td" % data['summary'])
#             fout.write("</tr>")
            j=j+1
        work_space.save('E:\dem1o.xls') 
    
    
    
    



