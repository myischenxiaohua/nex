package cn.cxh.dao;

import cn.cxh.entity.Topic;

import java.sql.SQLException;
import java.util.List;

public interface TopicDao {
    List<Topic> fiandAll() throws SQLException;
}
