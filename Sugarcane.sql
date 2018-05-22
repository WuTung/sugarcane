CREATE TABLE `address` (
`province` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`city` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`area` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`ID` int(11) NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `adminlogin` (
`adminID` int(11) NOT NULL AUTO_INCREMENT,
`adminName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`adminID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `course` (
`courseID` int(255) NOT NULL AUTO_INCREMENT,
`courseName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`courseBrief` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`price` double NULL DEFAULT NULL,
`phoneNumber` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`introdutionImg1` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`introdutionImg2` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`introdutionImg3` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`video` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`sellerID` int(11) NULL DEFAULT NULL,
`sellerCourseTypeId` int(11) NULL DEFAULT NULL,
`pub_publicTypeId` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`courseID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `evaluate` (
`evaluateID` int(11) NOT NULL AUTO_INCREMENT,
`courseID` int(11) NULL DEFAULT NULL,
`userID` int(11) NULL DEFAULT NULL,
`content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`evaluateImg` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`render` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`evaluateID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `gradecondition` (
`ID` int(11) NOT NULL AUTO_INCREMENT,
`questionID` int(11) NULL DEFAULT NULL,
`answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`correctAnswer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`questionGrade` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `gradelevel` (
`grade` int(11) NULL DEFAULT NULL,
`level` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`userID` int(11) NULL DEFAULT NULL,
`time` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`publicCourseTypeID` int(11) NULL DEFAULT NULL,
`ID` int(11) NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `part` (
`partID` int(11) NOT NULL AUTO_INCREMENT,
`roleName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`have` int(11) NULL DEFAULT NULL,
`adminID` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`partID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `power` (
`powerID` int(11) NOT NULL AUTO_INCREMENT,
`powerName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`have` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`powerID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `publiccoursetype` (
`publicTypeID` int(11) NOT NULL AUTO_INCREMENT,
`publicTypeName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`hidden` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`publicTypeID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `questionbank` (
`questionID` int(11) NOT NULL AUTO_INCREMENT,
`questionStem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`options` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`answer` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`courseTypeID` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`questionID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `Relationship` (
`powerID` int(11) NOT NULL DEFAULT 0,
`partID` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`powerID`, `partID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `sellercoursetype` (
`sellerCourseTypeID` int(11) NOT NULL AUTO_INCREMENT,
`courseTypeName2` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`sellerID` int(11) NULL DEFAULT NULL,
`publicCourseTypeID` int(11) NULL DEFAULT NULL,
`hidden` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`sellerCourseTypeID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `sellerinfo` (
`sellerID` int(11) NOT NULL AUTO_INCREMENT,
`sellerName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`sellerEmail` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`sellerPhoneNumber` int(255) NULL DEFAULT NULL,
`brief` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`numberOfEmployees` int(11) NULL DEFAULT NULL,
`educationBureauApproved` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`proofOfHouse` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`fireSafetyCertificate` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`businessLisense` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_province` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_city` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_area` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_detail` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`qualified` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`sellerID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `sellerLogin` (
`sellerID` int(11) NOT NULL AUTO_INCREMENT,
`sellerLoginName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`lastTime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`lastIP` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`id` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`sellerID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `sellerloginlog` (
`ID` int(11) NOT NULL AUTO_INCREMENT,
`sellerID` int(11) NULL DEFAULT NULL,
`time` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`IP` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `superadmin` (
`ID` int(11) NOT NULL AUTO_INCREMENT,
`adminName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3;

CREATE TABLE `usercollections` (
`courseID` int(11) NULL DEFAULT NULL,
`userID` int(11) NULL DEFAULT NULL,
`collectTime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`collecting` int(11) NULL DEFAULT NULL,
`collected` int(11) NULL DEFAULT NULL,
`collectionCount` int(11) NULL DEFAULT NULL,
`ID` int(11) NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `userinfo` (
`userID` int(11) NOT NULL AUTO_INCREMENT,
`userName` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`userEmail` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`userGender` int(11) NULL DEFAULT NULL,
`userEducation` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`userPhoneNumber` int(255) NULL DEFAULT NULL,
`birthday` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_province` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_city` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`address_area` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`userID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `userlogin` (
`userEmail` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`userID` int(11) NOT NULL AUTO_INCREMENT,
`password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`lastTime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`lastIP` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`id` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`userID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

CREATE TABLE `userloginlog` (
`ID` int(11) NOT NULL AUTO_INCREMENT,
`userID` int(11) NULL DEFAULT NULL,
`time` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`IP` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`ID`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1;

