package com.yinghao.notification.service.impl;

import com.yinghao.notification.dao.CourseMapper;
import com.yinghao.notification.entity.Course;
import com.yinghao.notification.service.CourseServiceInter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by chenyinghao on 2019/9/18.
 */
@Service
@Transactional
public class CourseService extends BaseService<Course> implements CourseServiceInter {
    private static final Logger logger = LoggerFactory.getLogger(CourseService.class);

    @Autowired
    private CourseMapper courseMapper;

    @Override
    @Scheduled(cron = "*/5 * * * * *")
    public void sendCourseTask() {
        Course course = new Course();
        course.setId(12);
//        int i = courseMapper.insert(course);
        Course course1 = courseMapper.selectByPrimaryKey(1);
        logger.info("{}: send class.", System.currentTimeMillis());
    }
}
