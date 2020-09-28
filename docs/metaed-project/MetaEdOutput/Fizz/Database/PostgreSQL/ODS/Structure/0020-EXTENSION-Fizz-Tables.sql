-- Table fizz.Assignment --
CREATE TABLE fizz.Assignment (
    AssignmentIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    LMSSectionIdentifier INT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    AssignmentCategory VARCHAR(60) NOT NULL,
    AssignmentDescription VARCHAR(1024) NULL,
    StartDateTime TIMESTAMP NULL,
    EndDateTime TIMESTAMP NULL,
    DueDateTime TIMESTAMP NULL,
    MaxPoints INT NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT Assignment_PK PRIMARY KEY (AssignmentIdentifier)
); 
ALTER TABLE fizz.Assignment ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.Assignment ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.Assignment ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.AssignmentSubmission --
CREATE TABLE fizz.AssignmentSubmission (
    LMSGradeIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    UserIdentifier INT NOT NULL,
    AssignmentIdentifier INT NOT NULL,
    Status VARCHAR(60) NOT NULL,
    SubmissionDateTime TIMESTAMP NOT NULL,
    EarnedPoints INT NULL,
    Grade VARCHAR(20) NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AssignmentSubmission_PK PRIMARY KEY (LMSGradeIdentifier)
); 
ALTER TABLE fizz.AssignmentSubmission ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.AssignmentSubmission ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.AssignmentSubmission ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.AssignmentSubmissionType --
CREATE TABLE fizz.AssignmentSubmissionType (
    AssignmentIdentifier INT NOT NULL,
    SubmissionType VARCHAR(60) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AssignmentSubmissionType_PK PRIMARY KEY (AssignmentIdentifier, SubmissionType)
); 
ALTER TABLE fizz.AssignmentSubmissionType ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table fizz.LMSGrade --
CREATE TABLE fizz.LMSGrade (
    LMSGradeIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    UserIdentifier INT NOT NULL,
    LMSSectionIdentifier INT NOT NULL,
    UserLMSSectionAssociationIdentifier INT NOT NULL,
    Grade VARCHAR(20) NOT NULL,
    GradeType VARCHAR(60) NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LMSGrade_PK PRIMARY KEY (LMSGradeIdentifier)
); 
ALTER TABLE fizz.LMSGrade ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.LMSGrade ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.LMSGrade ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.LMSSection --
CREATE TABLE fizz.LMSSection (
    LMSSectionIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    SISSectionIdentifier VARCHAR(255) NULL,
    Title VARCHAR(255) NOT NULL,
    SectionDescription VARCHAR(1024) NULL,
    Term VARCHAR(60) NULL,
    LMSSectionStatus VARCHAR(60) NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LMSSection_PK PRIMARY KEY (LMSSectionIdentifier)
); 
ALTER TABLE fizz.LMSSection ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.LMSSection ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.LMSSection ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.User --
CREATE TABLE fizz.User (
    UserIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    UserRole VARCHAR(60) NOT NULL,
    SISUserIdentifier VARCHAR(255) NULL,
    LocalUserIdentifier VARCHAR(255) NULL,
    Name VARCHAR(255) NOT NULL,
    EmailAddress VARCHAR(255) NOT NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT User_PK PRIMARY KEY (UserIdentifier)
); 
ALTER TABLE fizz.User ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.User ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.User ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.UserAttendanceEvent --
CREATE TABLE fizz.UserAttendanceEvent (
    UserAttendanceEventIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    UserIdentifier INT NOT NULL,
    LMSSectionIdentifier INT NULL,
    UserLMSSectionAssociationIdentifier INT NULL,
    EventDate DATE NOT NULL,
    Status VARCHAR(60) NOT NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT UserAttendanceEvent_PK PRIMARY KEY (UserAttendanceEventIdentifier)
); 
ALTER TABLE fizz.UserAttendanceEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.UserAttendanceEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.UserAttendanceEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.UserLMSActivity --
CREATE TABLE fizz.UserLMSActivity (
    UserLMSActivityIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    UserIdentifier INT NOT NULL,
    LMSSectionIdentifier INT NULL,
    AssignmentIdentifier INT NULL,
    ActivityType VARCHAR(60) NOT NULL,
    ActivityDateTime TIMESTAMP NOT NULL,
    ActivityStatus VARCHAR(60) NOT NULL,
    Content VARCHAR(1024) NULL,
    ActivityTimeInMinutes INT NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT UserLMSActivity_PK PRIMARY KEY (UserLMSActivityIdentifier)
); 
ALTER TABLE fizz.UserLMSActivity ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.UserLMSActivity ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.UserLMSActivity ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table fizz.UserLMSSectionAssociation --
CREATE TABLE fizz.UserLMSSectionAssociation (
    LMSSectionIdentifier INT NOT NULL,
    UserIdentifier INT NOT NULL,
    UserLMSSectionAssociationIdentifier INT NOT NULL,
    SourceSystemIdentifier VARCHAR(255) NOT NULL,
    SourceSystem VARCHAR(255) NOT NULL,
    EnrollmentStatus VARCHAR(60) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    EntityStatus VARCHAR(60) NOT NULL,
    DeletedAt TIMESTAMP NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT UserLMSSectionAssociation_PK PRIMARY KEY (LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier)
); 
ALTER TABLE fizz.UserLMSSectionAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE fizz.UserLMSSectionAssociation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE fizz.UserLMSSectionAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

