/**
 –1.学生表
 Student(s_id,s_name,s_birth,s_sex) –学生编号,学生姓名, 出生年月,学生性别
 –2.课程表
 Course(c_id,c_name,t_id) – –课程编号, 课程名称, 教师编号
 –3.教师表
 Teacher(t_id,t_name) –教师编号,教师姓名
 –4.成绩表
 Score(s_id,c_id,s_score) –学生编号,课程编号,分数
 */
CREATE DATABASE study DEFAULT CHARACTER SET utf8mb4;

CREATE TABLE student (
    s_id VARCHAR(20),
    s_name VARCHAR(20) NOT NULL DEFAULT '',
    s_birth VARCHAR(20) NOT NULL DEFAULT '',
    s_sex VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY (s_id)
);

CREATE TABLE course (
    c_id VARCHAR(20),
    c_name VARCHAR(20) NOT NULL default '',
    t_id VARCHAR(20) NOT NULL default '',
    PRIMARY KEY (c_id)
);

CREATE TABLE teacher (
    t_id VARCHAR(20),
    t_name VARCHAR(20) NOT NULL default '',
    PRIMARY KEY (t_id)
);

CREATE TABLE score (
    s_id VARCHAR(20),
    c_id VARCHAR(20),
    s_score INT(3),
    PRIMARY KEY (s_id, c_id)
);