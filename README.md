<img align="right" width="296" height="96" src="https://github.com/akumajac/hebei-iptv/assets/111755912/3570bd21-6d86-496d-bf19-3ccbede01603">

## *本项目涉及内容仅供学习交流，严禁用于商业用途及其他目的，产生法律及版权纠纷由用户个人承担，请于下载后24小时内删除*

# hebei-iptv
河北电信IPTV组播源    内容基于0313，理论通用

2024/03/26更新，新增3个凤凰台，都是标清的
 <details>
  <summary>以下为代理链接</summary>
 
- `https://mirror.ghproxy.com/raw.githubusercontent.com/akumajac/hebei-iptv/main/单播.txt`
- `https://mirror.ghproxy.com/raw.githubusercontent.com/akumajac/hebei-iptv/main/组播.txt`
- `https://mirror.ghproxy.com/raw.githubusercontent.com/akumajac/hebei-iptv/main/tvbox-test.txt`
- `https://mirror.ghproxy.com/raw.githubusercontent.com/akumajac/hebei-iptv/main/msd_lite-test`
</details>

<details>
 
 ## 参考教程</summary>
本教程参考自B站up主[maxdarksol](https://www.bilibili.com/read/cv18776837)

1、光猫取消端口绑定，划分vlan，我将上网口划分1，iptv划分为2
   
   tips:河北于23年末左右强制更换光猫管理员密码，需要抓包

2、openwrt路由器新建接口，自定义接口填上：wan口的标识符 加上.iptv划分的vlan名称。如我的wan口是eth1，那么我就填上eth1.2  
防火墙设置里新建iptv

![屏幕截图 2024-03-06 213259](https://github.com/akumajac/hebei-iptv/assets/111755912/94665168-63e9-441f-a036-854db46e0991)![屏幕截图 2024-03-06 213406](https://github.com/akumajac/hebei-iptv/assets/111755912/97640353-500d-4276-a5e3-40b71a0c7cdb) ![屏幕截图 2024-03-06 214053](https://github.com/akumajac/hebei-iptv/assets/111755912/9965f62a-fa34-431c-b3c2-5e5274323bd1)

3、新建接口的基本设置里，发送主机名填stbid ，高级设置里Vendor Class填HEITV  ,MAC填机顶盒的mac，网关跃点填20（这个数比wan口的跃点大就行

4、udpxy按图填，完成后参考openwrt设置 文件夹的内容
![屏幕截图 2024-03-06 214853](https://github.com/akumajac/hebei-iptv/assets/111755912/571bf633-8ad8-40b8-a4fa-436067b28f43)

5、msd_lite和udpxy二选一。msd_lite的占用比udpxy低,比较推荐，但好像只能内网，外网端口有bug  
udpxy的格式为http://路由器ip:端口/udp/组播地址  
msd_lite的格式为http://路由器ip:端口/rtp/组播地址


6、防火墙新建流量规则，协议选任意，源区域选iptv（第2步新建的那个。目标区域选设备









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

</details>
