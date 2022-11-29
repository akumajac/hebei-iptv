# hebei-iptv
河北电信IPTV组播源

2022-11-29亲测可用

自用备忘
192.168.28.0/24     
192.168.28.9为内网回看地址

option60 Vendor Class：HEITV     
option12 host name：机顶盒的STBID

河北电信机顶盒操作码1301

组播查找正则表达式：ChannelName="(.*?)".*?(igmp://.*?)\|rtsp
单播查找正则表达式：ChannelName="(.*?)".*?(rtsp://.*?smil)
替换：$1,$2
正则在线工具https://c.runoob.com/front-end/854/
