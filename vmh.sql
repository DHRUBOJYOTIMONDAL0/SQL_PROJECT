CREATE DATABASE Education;

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
    `student_id` INT(10) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) NOT NULL,
    `full_name` VARCHAR(100) NOT NULL,
    `dob` DATE NOT NULL,
    `mobile_number` VARCHAR(15) NOT NULL,
    `gender` ENUM('Male', 'Female', 'Other') NOT NULL,
    `profession` VARCHAR(50) NOT NULL,
    `student_image` BLOB NOT NULL,
    `guardian_name` VARCHAR(100) NOT NULL,
    `guardian_contact` VARCHAR(15) NOT NULL,
    `relation_with_guardian` VARCHAR(50) NOT NULL,
    `guardian_gender` ENUM('Male', 'Female', 'Other') NOT NULL,
    `address` TEXT NOT NULL,
    `nationality` VARCHAR(50) NOT NULL,
    `state` VARCHAR(50) NOT NULL,
    `district` VARCHAR(50) NOT NULL,
    `pincode` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`student_id`),
    UNIQUE KEY (`email`)
);

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
    `teacher_id` INT(10) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(50) NOT NULL,
    `full_name` VARCHAR(100) NOT NULL,
    `dob` DATE NOT NULL,
    `mobile_number` VARCHAR(15) NOT NULL,
    `gender` ENUM('Male', 'Female', 'Other') NOT NULL,
    `image` BLOB NOT NULL,
    `qualification` VARCHAR(50) NOT NULL,
    `language_known` VARCHAR(50) NOT NULL,
    `experience` INT(2) NOT NULL,
    `address` TEXT NOT NULL,
    `nationality` VARCHAR(50) NOT NULL,
    `state` VARCHAR(50) NOT NULL,
    `district` VARCHAR(50) NOT NULL,
    `pincode` VARCHAR(10) NOT NULL,
    PRIMARY KEY (`teacher_id`),
    UNIQUE KEY (`email`)
);

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
    `course_id` INT(10) NOT NULL AUTO_INCREMENT,
    `course_name` VARCHAR(50) NOT NULL,
    `course_class` VARCHAR(50) NOT NULL,
    `course_overview` TEXT NOT NULL,
    `course_subject_id` JSON NOT NULL,
    PRIMARY KEY (`course_id`)
);

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
    `subject_id` INT(10) NOT NULL AUTO_INCREMENT,
    `subject_name` VARCHAR(50) NOT NULL,
    `course_id` INT(10) NOT NULL,
    PRIMARY KEY (`subject_id`),
    CONSTRAINT fk_course_id_sub FOREIGN KEY (`course_id`) REFERENCES `course`(`course_id`)
);

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
    `module_id` INT(10) NOT NULL AUTO_INCREMENT,
    `module_name` VARCHAR(50) NOT NULL,
    `course_id` INT(10) NOT NULL,
    `subject_id` INT(10) NOT NULL,
    `video_link` VARCHAR(400) NOT NULL,
    PRIMARY KEY (`module_id`),
    CONSTRAINT fk_course_id_mod FOREIGN KEY (`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT fk_subject_id_mod FOREIGN KEY (`subject_id`) REFERENCES `subject`(`subject_id`)
);

DROP TABLE IF EXISTS `doubt`;
CREATE TABLE `doubt` (
    `doubt_id` INT(10) NOT NULL AUTO_INCREMENT,
    `student_id` INT(10) NOT NULL,
    `module_id` INT(10) NOT NULL,
    `course_id` INT(10) NOT NULL,
    `subject_id` INT(10) NOT NULL,
    `doubt` TEXT NOT NULL,
    PRIMARY KEY (`doubt_id`),
    CONSTRAINT fk_student_id_dbt FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`),
    CONSTRAINT fk_module_id_dbt FOREIGN KEY (`module_id`) REFERENCES `module`(`module_id`),
    CONSTRAINT fk_course_id_dbt FOREIGN KEY (`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT fk_subject_id_dbt FOREIGN KEY (`subject_id`) REFERENCES `subject`(`subject_id`)
);

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
    `test_id` INT(10) NOT NULL AUTO_INCREMENT,
    `course_id` INT(10) NOT NULL,
    `subject_id` INT(10) NOT NULL,
    `module_id` INT(10) NOT NULL,
    `test_name` VARCHAR(50) NOT NULL,
    `test_date` DATE NOT NULL,
    `test_time` TIME NOT NULL,
    `question` TEXT NOT NULL,
    `answer` TEXT NOT NULL,
    PRIMARY KEY (`test_id`),
    CONSTRAINT fk_course_id_test FOREIGN KEY (`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT fk_subject_id_test FOREIGN KEY (`subject_id`) REFERENCES `subject`(`subject_id`),
    CONSTRAINT fk_module_id_test FOREIGN KEY (`module_id`) REFERENCES `module`(`module_id`)
);

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
    `result_id` INT(10) NOT NULL AUTO_INCREMENT,
    `student_id` INT(10) NOT NULL,
    `test_id` INT(10) NOT NULL,
    `course_id` INT(10) NOT NULL,
    `subject_id` INT(10) NOT NULL,
    `module_id` INT(10) NOT NULL,
    `total_marks` INT(10) NOT NULL,
    `marks_obtained` INT(10) NOT NULL,
    `result_date` DATE NOT NULL,
    PRIMARY KEY (`result_id`),
    CONSTRAINT fk_student_id_result FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`),
    CONSTRAINT fk_test_id_result FOREIGN KEY (`test_id`) REFERENCES `test`(`test_id`),
    CONSTRAINT fk_course_id_result FOREIGN KEY (`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT fk_subject_id_result FOREIGN KEY (`subject_id`) REFERENCES `subject`(`subject_id`),
    CONSTRAINT fk_module_id_result FOREIGN KEY (`module_id`) REFERENCES `module`(`module_id`)
);
