CREATE TABLE [tracked_deletes_fizz].[Assignment]
(
       AssignmentIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_Assignment PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[AssignmentSubmission]
(
       LMSGradeIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AssignmentSubmission PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[LMSGrade]
(
       LMSGradeIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_LMSGrade PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[LMSSection]
(
       LMSSectionIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_LMSSection PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[User]
(
       UserIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_User PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[UserAttendanceEvent]
(
       UserAttendanceEventIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UserAttendanceEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[UserLMSActivity]
(
       UserLMSActivityIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UserLMSActivity PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_fizz].[UserLMSSectionAssociation]
(
       LMSSectionIdentifier [INT] NOT NULL,
       UserIdentifier [INT] NOT NULL,
       UserLMSSectionAssociationIdentifier [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UserLMSSectionAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)

