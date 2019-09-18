package com.yinghao.notification.dao;

import com.yinghao.notification.entity.Course;
import com.yinghao.notification.utils.MyMapper;

public interface CourseMapper extends MyMapper<Course> {
    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
}