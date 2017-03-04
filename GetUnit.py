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

def GetUnitHtml(url, targets):
    unitHtml = urllib.urlopen(url)

    unitDatas = []
    for line in unitHtml:
        unitDatas += unitDataPat_1.findall(line)
        unitDatas += unitDataPat_2.findall(line)
    
    data = []
    for target in targets:
        data.append(GetUnitData(unitDatas, target))

    return data

def WriteXls(data):
    wb = xlwt.Workbook(encoding = 'utf8')
    sheet = wb.add_sheet('hi')
    data[0] = ['角色名稱'] + data[0]
    data[0][len(data[0]) - 1] = '段数/s'

    for i in range(len(data)):
        for j in range(len(data[1])):
            sheet.write(i, j, data[i][j])

    wb.save('merc.xlsx')

if __name__ == '__main__':
    
    mhHtml = urllib.urlopen(mhUrl)

    unitNames = []
    for line in mhHtml:
        unitNames += unitNamePat.findall(line)

    unitDatas = [['属性', '成長タイプ', '覚醒体力', '移動速度', '同時攻撃数', '覚醒DPS', '覚醒総合DPS', '攻撃段数', '攻撃間隔']]
    cnt = 0
    for unitName in unitNames:
        unitDatas.append([unitName] + GetUnitHtml(unitUrl + urllib.quote(unitName), unitDatas[0]))
        cnt += 1
        if cnt > 1000:
            break
        
    for i in range(1, len(unitDatas)):
        if len(unitDatas[i][len(unitDatas[i]) - 2]) == 0:
            unitDatas[i][len(unitDatas[i]) - 2] = '1段'

        d = float(unitDatas[i][len(unitDatas[i]) - 2][0])
        s = float(unitDatas[i][len(unitDatas[i]) - 1])
        unitDatas[i][len(unitDatas[i]) - 1] = '%.4f' % (d / s)

    WriteXls(unitDatas)
    