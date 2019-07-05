package cn.cxh.service;/*
  Created by IntelliJ IDEA.
  Package: cn.cxh.service
  User: myischenxiaohua@163.com
  Date: 2019/6/27
  Time: 9:20
*/

import cn.cxh.entity.News;

import java.util.List;

public interface NewsService {
    List<News> getNewsList(); //获取新闻列表
    News getNewsById(int id);//根据id查询
    boolean updateNews(News news);//更新数据
    boolean saveNews(News news); //保存新闻
    boolean delNewsById(int id);//删除新闻
}
