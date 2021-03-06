# blog
个人日志系统
> 项目描述

&nbsp; 此项目继承原先的[个人日志系统](https://github.com/ChenJianLink/blog)   
&nbsp; 一款简洁的个人日志系统，同时附有一个后台管理系统  
&nbsp; 该项目基于SpringBoot和Thymeleaf开发，同时对原先的日志系统进行优化升级    
&nbsp; 日志系统访问地址：[www.chenjianlink.cn](https://www.chenjianlink.cn)   
&nbsp; (欢迎点击、评论或留言吐槽)

> 运行环境

&nbsp; JKD1.8 (Dragonwell8)  
&nbsp; Maven  
&nbsp; MySQL 5.7.24  
&nbsp; 腾讯云(云服务器，CDN，对象存储)  
&nbsp; (加载过慢的图片音频通过对象存储和CDN加速)

> 使用技术

&nbsp; SpringBoot(项目核心框架)  
&nbsp; Mybatis(优秀的持久层框架)  
&nbsp; lucene(高性能的搜索工具包.若系统配置允许，可使用Solr代替)  
&nbsp; IKAnaylzer(智能的中文分词器，配合Maven使用需手动将其jar包加入到仓库)  
&nbsp; shiro(相对于Spring Security，结构简单，功能完整的安全框架)  
&nbsp; Ehcache(纯Java的进程内缓存框架，是一种广泛使用的开源Java分布式缓存，具有快速、精干等特点)  
&nbsp; pageHelper(Mybatis分页查询的工具)  
&nbsp; jsoup(一款基于Java的HTML解析器)  
&nbsp; Revolvermaps(可视化插件,可使用其他可视化插件)

> 备注

&nbsp; 若要下载使用该项目，请更换Logo图案。数据库中无用户信息，需自行插入数据；下载解压之后，通过eclipse或者idea导入maven项目即可，或者是直接导入远程git项目，让ide自动构建  
&nbsp; ip查询使用了聚合数据的接口，需要自行申请这个接口（免费的一天可查500次，会员无限制）  
&nbsp; 图片视频存储在腾讯云对象存储中，需要自己配置（换成其他云存储同理）