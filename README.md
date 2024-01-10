# hebei-iptv
河北电信IPTV组播源

2024/01/10更新，亲测可用



## 参考教程
参考B站这位up主[点我](https://www.bilibili.com/read/cv18776837)

我的光猫绑定vlan是灰色的，此时可以`f12`或快捷键`ctrl + shift + c`选中灰色块
![2022-12-02](https://user-images.githubusercontent.com/111755912/205198063-d252728e-fffa-40ed-92eb-c6be2942d669.png)
展开f12中的链接，双击选中`disable`然后删除，这样就解除限制了。
![2022-12-02 (1)](https://user-images.githubusercontent.com/111755912/205196772-91a01bbb-8214-4ddf-a9f3-ee8ec06fe780.png)
或者当前页面刷新3次，有一定几率能解除，我也不知道为什么，可能是bug

## 公益源推荐
> 茶客公益源[项目地址](https://github.com/vamoschuck/TV)**/**[下载链接](https://raw.githubusercontent.com/vamoschuck/TV/main/M3U)
> 
> 
> 

### 自用备忘

- 192.168.28.0/24     
192.168.28.9 为内网回看地址
例rtsp://192.168.28.9/PLTV/88888914/224/3221225729/10000100000000060000000000000636_0.smil?playseek=20200306204239-2020030622330

- **option60 Vendor Class：** `HEITV`
- **option12 host name：** `机顶盒的STBID`

- **河北电信机顶盒操作码** `1301`

- **itv密码** `118114`

- **组播查找正则表达式：**`ChannelName="(.*?)".*?(igmp://.*?)\|rtsp`

- **单播查找正则表达式：**`ChannelName="(.*?)".*?(rtsp://.*?smil)`

- **替换表达式：**`$1,$2`

- **在线表达式**
  > [正则表达式在线工具](https://tool.oschina.net/regex)
- **直播源列表转换工具**
  > [M3U转换](https://guihet.com/tvlistconvert.html)
- **EPG频道列表**
  > [epg转换51zmt](http://epg.51zmt.top:8000/)
  > 
  > [112114](https://epg.112114.eu.org/)


