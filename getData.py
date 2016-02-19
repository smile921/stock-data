import tushare as ts
dfsh = ts.get_hist_data('sh',start='2016-01-05')
date = list(dfsh.index)
[today,last] = date[0:2]
df = ts.get_today_all() 
lastData = df.loc[:,['code','name','volume']]
base ='stock-data/'
lastData.to_json(base+today+'-unicode.json',orient='records')
lastData.to_json(base+today+'-gbk.json',orient='records',force_ascii=False) 
df.to_json(base+today+'-gbk-all.json',orient='records',force_ascii=False) 
print 'Done!'