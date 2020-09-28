CREATE TABLE tracked_deletes_fizz.Assignment
(
       AssignmentIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT Assignment_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.AssignmentSubmission
(
       LMSGradeIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AssignmentSubmission_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.LMSGrade
(
       LMSGradeIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT LMSGrade_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.LMSSection
(
       LMSSectionIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT LMSSection_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.User
(
       UserIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT User_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.UserAttendanceEvent
(
       UserAttendanceEventIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UserAttendanceEvent_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.UserLMSActivity
(
       UserLMSActivityIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UserLMSActivity_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_fizz.UserLMSSectionAssociation
(
       LMSSectionIdentifier INT NOT NULL,
       UserIdentifier INT NOT NULL,
       UserLMSSectionAssociationIdentifier INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UserLMSSectionAssociation_PK PRIMARY KEY (ChangeVersion)
);

