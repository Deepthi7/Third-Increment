conn system/manager ;

create user crs identified by crs;
grant connect,resource to crs;

conn crs/crs

select * from tab;

create table job_pro
(
 pro_login_id number(15),
 pro_password varchar2(20),
 pro_desig varchar2(12),
 pro_first_name varchar2(20),
 pro_last_name varchar2(20),
 pro_mail_id varchar2(40),
 pro_phone varchar2(20),
constraint pk_job Primary key(pro_login_id) 
);

create table job_requ
(
 job_code number(15),
 job_name varchar2(20),
 quali_req varchar2(30),
 skill_req varchar2(30),
 resp_req varchar2(40),
 exp_req number(5,1),
 vac_open number(4),
 createdby varchar2(40),
 createdon varchar2(20),
 lastdate varchar2(20),
 status varchar2(20),
constraint req_job Primary key(job_code) 
);


create table seek_per
( 
  seek_code number,	
  seek_fname varchar2(25),
  seek_lname varchar2(25),
  seek_dob varchar2(30),
  seek_cellno varchar2(25),
  seek_sex varchar2(10),
  seek_passport varchar2(25), 
  seek_email varchar2(40),
  seek_hobbies varchar2(50),
  constraint seek_code Primary key(seek_code) 
);


create table seek_add
(
seek_code Number references seek_per(seek_code),
padd1 varchar2(30),
padd2 varchar2(30),
padd3 varchar2(30),
cadd1 varchar2(30),
cadd2 varchar2(30),
cadd3 varchar2(30),
phone number);

create table seek_resume
(
seek_code Number references seek_per(seek_code),
resume_qua varchar2(30),
resume_branch varchar2(30),
resume_skills varchar2(30),
resume_otherqua varchar2(30),
resume_exp number(4,2)
);


create table seek_edu
(
seek_code Number references seek_per(seek_code),
edu_qual1 varchar2(30),
edu_university1 varchar2(40),
edu_yearofpass1 varchar2(10),
edu_per1 number(3,1),
edu_qual2 varchar2(30),
edu_university2 varchar2(40),
edu_yearofpass2 varchar2(10),
edu_per2 number(3,1),
edu_qual3 varchar2(30),
edu_university3 varchar2(40),
edu_yearofpass3 varchar2(10),
edu_per3 number(3,1),
edu_qual4 varchar2(30),
edu_university4 varchar2(40),
edu_yearofpass4 varchar2(10),
edu_per4 number(3,1));


create table seek_login
(
seek_code Number references seek_per(seek_code),
seek_pwd varchar2(20),
seek_ques varchar2(40),
seek_ans varchar2(30));

create table seek_resumeupdate
(
seek_code Number references seek_per(seek_code),
 seek_resumeupdate varchar2(1000));

create table feed_back
(
f_code number,
message varchar2(100),
seek_code Number references seek_per(seek_code),
constraint feed_code Primary key(f_code) 
);

create table test_queries 
(
ques_no number,
ques_name varchar2(100),
ques_opt1 varchar2(20),
ques_opt2 varchar2(20),
ques_opt3 varchar2(20),
ques_opt4 varchar2(20),
ques_answer varchar2(20),
constraint question_no Primary key(ques_no) 
);
 
create table online_testlogin
(
seek_code Number references seek_per(seek_code),
seek_pwd varchar2(20),
message varchar2(100),
status varchar2(6));

insert into job_pro values(1111,'sathya','provider','Venkat','Reddy','sathya@sathya.com','4234');