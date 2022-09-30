CREATE TABLE "user" (
  "user_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "rol_id" uuid UNIQUE
);

CREATE TABLE "course" (
  "course_id" uuid PRIMARY KEY,
  "course_title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level_id" uuid UNIQUE,
  "category_id" uuid UNIQUE
);

CREATE TABLE "video_course" (
  "video_id" uuid PRIMARY KEY,
  "video_title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid UNIQUE
);

CREATE TABLE "level" (
  "level_id" uuid PRIMARY KEY,
  "level" varchar NOT NULL
);

CREATE TABLE "category" (
  "category_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "rol" (
  "rol_id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "course_user" (
  "course_user_id" uuid PRIMARY KEY,
  "user_id" uuid,
  "course_id" uuid,
  "review" varchar
);

ALTER TABLE "user" ADD FOREIGN KEY ("rol_id") REFERENCES "rol" ("rol_id");

ALTER TABLE "course" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE "video_course" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");

ALTER TABLE "course" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("level_id");

ALTER TABLE "course_user" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("user_id");

ALTER TABLE "course_user" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");

-- user CREATE
insert into "user"(user_id, name, email, password, age, rol_id) values ('60888f77-7daa-4de6-828f-9a791b87d216', 'peter', 'otherstudent@study.com', 'abc789', 25, '1a2b377b-bd15-45c5-8f03-b443732265aa');

insert into "user"(user_id, name, email, password, age, rol_id) values ('49b34899-1ca1-48e9-9aa9-4f09464c11f8', 'john', 'student@study.com', 'abc123', 20, '1a2b377b-bd15-45c5-8f03-b443732265aa');

-- course CREATE
insert into "course"(course_id, course_title, description, level_id, category_id) values ('86dfb213-e209-44fc-9a63-ee10f19cdd19', 'Initial javascript', 'Intro to javascript', '87105dba-f1f6-41da-8259-a3a4abf919f3', 'a52e8c45-5091-4f4d-9bf4-8fe590167ef0');

insert into "course"(course_id, course_title, description, level_id, category_id) values ('60413ad3-60cb-4ab3-8f54-9f1c8cbfe10b', 'Beyond javascript', 'advanced javascript', '3e994d4c-7582-4d1d-acde-aa4b75a5ab6e', 'a52e8c45-5091-4f4d-9bf4-8fe590167ef0');

-- video_course CREATE
insert into "video_course"(video_id, video_title, url, course_id) values ('f8fabdfc-c837-4d2f-85b4-20c1ce7c73f5', 'Intro', 'http://www.example.com/video1.com', '86dfb213-e209-44fc-9a63-ee10f19cdd19');

insert into "video_course"(video_id, video_title, url, course_id) values ('2a31cc82-f12c-4a75-b7a6-59f06058ade4', 'Basic details', 'http://www.example.com/video2.com', '60413ad3-60cb-4ab3-8f54-9f1c8cbfe10b');

--level CREATE
insert into "level"(level_id, level) values ('87105dba-f1f6-41da-8259-a3a4abf919f3', 'beginner');

insert into "level"(level_id, level) values ('3e994d4c-7582-4d1d-acde-aa4b75a5ab6e', 'intermediate');

--category CREATE
insert into "category"(category_id, name) values ('a52e8c45-5091-4f4d-9bf4-8fe590167ef0', 'programming language');

insert into "category"(category_id, name) values ('2cfad7ba-57bf-4cd3-9b60-4c9b11496063', 'marketing');

--rol CREATE
insert into "rol"(rol_id, name) values ('1a2b377b-bd15-45c5-8f03-b443732265aa', 'student');

insert into "rol"(rol_id, name) values ('1f3c9092-5cd1-47c6-9e79-4dca6fcea453', 'teacher');

--course_user CREATE
insert into "course_user"(course_user_id, user_id, course_id, review) values ('0df6b80a-d1a3-4a34-8cdf-0fc484e0009a', '60888f77-7daa-4de6-828f-9a791b87d216', '86dfb213-e209-44fc-9a63-ee10f19cdd19', 'Very good to start');

insert into "course_user"(course_user_id, user_id, course_id, review) values ('72aae7dc-bf3b-4fea-9bf1-53b13fccf56a', '49b34899-1ca1-48e9-9aa9-4f09464c11f8', '60413ad3-60cb-4ab3-8f54-9f1c8cbfe10b', 'Very good if you already know the basic');

