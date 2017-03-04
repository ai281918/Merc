# -*- coding: utf-8 -*-
# coding: utf8
import re
import xlrd
import xlwt
import urllib
import uniout

unitDataPat_1 = re.compile('<p><span class=.*?</p>')
unitDataPat_2 = re.compile('<p><span class=.*?<br>')
unitNamePat = re.compile('style="" width="40" data-col="0"><a href="/(.*?)">')
mhUrl = 'https://xn--cckza4aydug8bd3l.gamerch.com/%E9%AD%94%E6%B3%95'
unitUrl = 'https://xn--cckza4aydug8bd3l.gamerch.com/'

def GetUnitData(datas, attr):
    value = []
    for data in datas:
        value = re.findall(attr + '</span>&nbsp;(.*?)</p>', data)
        if len(value) > 0:
            break

        value = re.findall(attr + '</span>&nbsp;(.*?)<br>', data)
        if len(value) > 0:
            break
    
    if len(value):
        return value[0]

def GetUnitHtml(url):
    unitHtml = urllib.urlopen(url)

    unitDatas = []
    for line in unitHtml:
        unitDatas += unitDataPat_1.findall(line)
        unitDatas += unitDataPat_2.findall(line)
    
    data = []
    data.append(GetUnitData(unitDatas, '覚醒総合DPS'))
    data.append(GetUnitData(unitDatas, '攻撃段数'))
    data.append(GetUnitData(unitDatas, '攻撃間隔'))
    return data

def WriteXls(data):
    wb = xlwt.Workbook(encoding = 'utf8')
    sheet = wb.add_sheet('hi')

    for i in range(len(data)):
        for j in range(len(data[0])):
            sheet.write(i, j, data[i][j])

    wb.save('merc.xls')

if __name__ == '__main__':
    
    mhHtml = urllib.urlopen(mhUrl)

    unitNames = []
    for line in mhHtml:
        unitNames += unitNamePat.findall(line)

    unitDatas = [[u'角色名稱', u'DPS', u'段數/s']]
    cnt = 0
    for unitName in unitNames:
        unitDatas.append([unitName] + GetUnitHtml(unitUrl + urllib.quote(unitName)))
        cnt += 1
        if cnt > 1000:
            break
        
    for i in range(len(unitDatas)):
        if i == 0:
            continue
        
        d = unitDatas[i][len(unitDatas[i]) - 2]
        if len(d) == 0:
            d = float(1)
        else:
            d = float(d[0])

        s = float(unitDatas[i][len(unitDatas[i]) - 1])
        unitDatas[i].pop()
        unitDatas[i][len(unitDatas[i]) - 1] = '%.4f' % (d / s)

    WriteXls(unitDatas)
    