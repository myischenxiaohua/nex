package cn.cxh.dao.impl;

import cn.cxh.dao.NewsDao;
import cn.cxh.entity.News;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDaoImpl extends BaseDao implements NewsDao {
//    public NewsDaoImpl(Connection connection){
//            //super(connection);
//    }
    @Override
    public List<News> findNews() throws SQLException {
        String sql="select * from news";
       ResultSet rst=super.query(sql);
       List<News> newsList=new ArrayList<>();
        News news=null;
               while (rst.next()){
                   news=new News();
                   news.setNid(rst.getInt("nid"));
                   news.setNtid(rst.getInt("ntid"));
                   news.setNtitle(rst.getString("ntitle"));
                   news.setNauthor(rst.getString("nauthor"));
                    System.out.println(rst.getString("ntitle"));
                   newsList.add(news);
               }


       return newsList;

    }

    @Override
    public int updateNews(News news) throws SQLException {
        String sql="update news set ntid=?,ntitle=?,nauthor=?,nsummary=?,ncontent=?,nmodifyDate=? where nid=?";
       return super.update(sql,news.getNtid(),news.getNtitle(),news.getNauthor(),news.getNsummary(),news.getNcontent(),news.getNmodifydate(),news.getNid());

    }



    @Override
    public News findById(int id) throws SQLException {
        String sql="select * from news where nid=?";
       ResultSet rst= super.query(sql,id);
       News news=new News();

            if (rst.next()) {
                news.setNid(rst.getInt("nid"));
                news.setNtid(rst.getInt("ntid"));
                news.setNtitle(rst.getString("ntitle"));
                news.setNauthor(rst.getString("nauthor"));
                news.setNsummary(rst.getString("nsummary"));
                news.setNcontent(rst.getString("ncontent"));
            }
        return news;
    }

    @Override
    public int insertNews(News news) throws SQLException {
        String sql="insert into news(ntid,ntitle,nauthor,nsummary,ncontent) values(?,?,?,?,?)";
        return super.update(sql,news.getNtid(),news.getNtitle(),news.getNauthor(),news.getNsummary(),news.getNcontent());
    }
}
