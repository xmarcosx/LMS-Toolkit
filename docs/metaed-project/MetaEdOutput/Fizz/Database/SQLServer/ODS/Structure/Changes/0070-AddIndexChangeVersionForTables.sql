BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.Assignment') AND name = N'UX_Assignment_ChangeVersion')
    CREATE INDEX [UX_Assignment_ChangeVersion] ON [fizz].[Assignment] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.AssignmentSubmission') AND name = N'UX_AssignmentSubmission_ChangeVersion')
    CREATE INDEX [UX_AssignmentSubmission_ChangeVersion] ON [fizz].[AssignmentSubmission] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.LMSGrade') AND name = N'UX_LMSGrade_ChangeVersion')
    CREATE INDEX [UX_LMSGrade_ChangeVersion] ON [fizz].[LMSGrade] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.LMSSection') AND name = N'UX_LMSSection_ChangeVersion')
    CREATE INDEX [UX_LMSSection_ChangeVersion] ON [fizz].[LMSSection] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.User') AND name = N'UX_User_ChangeVersion')
    CREATE INDEX [UX_User_ChangeVersion] ON [fizz].[User] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.UserAttendanceEvent') AND name = N'UX_UserAttendanceEvent_ChangeVersion')
    CREATE INDEX [UX_UserAttendanceEvent_ChangeVersion] ON [fizz].[UserAttendanceEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.UserLMSActivity') AND name = N'UX_UserLMSActivity_ChangeVersion')
    CREATE INDEX [UX_UserLMSActivity_ChangeVersion] ON [fizz].[UserLMSActivity] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'fizz.UserLMSSectionAssociation') AND name = N'UX_UserLMSSectionAssociation_ChangeVersion')
    CREATE INDEX [UX_UserLMSSectionAssociation_ChangeVersion] ON [fizz].[UserLMSSectionAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

