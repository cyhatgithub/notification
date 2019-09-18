package com.yinghao.notification.service.impl;

import com.yinghao.notification.entity.Course;
import com.yinghao.notification.service.CourseServiceInter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by chenyinghao on 2019/9/18.
 */
@Component
public class CourseService extends BaseService<Course> implements CourseServiceInter {
    private static final Logger logger = LoggerFactory.getLogger(CourseService.class);

    @Override
    @Scheduled(cron = "*/5 * * * * *")
    public void sendCourseTask() {
        logger.info("{}: send class.", System.currentTimeMillis());
    }
}
