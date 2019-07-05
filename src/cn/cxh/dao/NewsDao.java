package cn.cxh.dao;

import cn.cxh.entity.News;


import java.sql.SQLException;
import java.util.List;

public interface NewsDao {
    List<News> findNews() throws SQLException;//查询新闻列表
    News findById(int id) throws SQLException; //根据id查询
    int updateNews(News news) throws SQLException; //根据id修改
    int insertNews(News news) throws SQLException;//添加新闻
}
