package cn.cxh.service.impl;/*
  Created by IntelliJ IDEA.
  Package: cn.cxh.service.impl
  User: myischenxiaohua@163.com
  Date: 2019/6/27
  Time: 9:28
*/

import cn.cxh.dao.impl.NewsDaoImpl;
import cn.cxh.entity.News;
import cn.cxh.service.NewsService;
import cn.cxh.util.MsqlDatabase;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsServiceImpl implements NewsService {
    private MsqlDatabase msql=new MsqlDatabase();
    @Override
    public List<News> getNewsList() {
       List<News> newsList= new ArrayList();

        try {
            newsList=new NewsDaoImpl().findNews();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            msql.close();
        }

        return newsList;

    }

    @Override
    public News getNewsById(int id) {
        return null;
    }

    @Override
    public boolean updateNews(News news) {

        boolean flag=false;

        try {
            if(new NewsDaoImpl().updateNews(news)>0){
                flag=true;
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return flag;
    }

    @Override
    public boolean saveNews(News news) {
        return false;
    }

    @Override
    public boolean delNewsById(int id) {
        return false;
    }
}
