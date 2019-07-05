package cn.cxh.service.impl;/*
  Created by IntelliJ IDEA.
  Package: cn.cxh.service.impl
  User: myischenxiaohua@163.com
  Date: 2019/6/27
  Time: 9:51
*/

import cn.cxh.dao.impl.TopicDaoImpl;
import cn.cxh.entity.Topic;
import cn.cxh.service.TopicService;
import cn.cxh.util.MsqlDatabase;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TopicServiceImpl implements TopicService {
    private MsqlDatabase msql=new MsqlDatabase();
    @Override
    public List<Topic> getTopicList() {

        List<Topic> topicList=new ArrayList<>();
        try {
          topicList= new TopicDaoImpl().fiandAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
           msql.close();
        }

        return topicList;
    }
}
