CREATE TRIGGER [fizz].[fizz_AssignmentSubmission_TR_DeleteTracking] ON [fizz].[AssignmentSubmission] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[AssignmentSubmission](LMSGradeIdentifier, Id, ChangeVersion)
    SELECT  LMSGradeIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[AssignmentSubmission] ENABLE TRIGGER [fizz_AssignmentSubmission_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_Assignment_TR_DeleteTracking] ON [fizz].[Assignment] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[Assignment](AssignmentIdentifier, Id, ChangeVersion)
    SELECT  AssignmentIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[Assignment] ENABLE TRIGGER [fizz_Assignment_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_LMSGrade_TR_DeleteTracking] ON [fizz].[LMSGrade] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[LMSGrade](LMSGradeIdentifier, Id, ChangeVersion)
    SELECT  LMSGradeIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[LMSGrade] ENABLE TRIGGER [fizz_LMSGrade_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_LMSSection_TR_DeleteTracking] ON [fizz].[LMSSection] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[LMSSection](LMSSectionIdentifier, Id, ChangeVersion)
    SELECT  LMSSectionIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[LMSSection] ENABLE TRIGGER [fizz_LMSSection_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_UserAttendanceEvent_TR_DeleteTracking] ON [fizz].[UserAttendanceEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[UserAttendanceEvent](UserAttendanceEventIdentifier, Id, ChangeVersion)
    SELECT  UserAttendanceEventIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[UserAttendanceEvent] ENABLE TRIGGER [fizz_UserAttendanceEvent_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_UserLMSActivity_TR_DeleteTracking] ON [fizz].[UserLMSActivity] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[UserLMSActivity](UserLMSActivityIdentifier, Id, ChangeVersion)
    SELECT  UserLMSActivityIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[UserLMSActivity] ENABLE TRIGGER [fizz_UserLMSActivity_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_UserLMSSectionAssociation_TR_DeleteTracking] ON [fizz].[UserLMSSectionAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[UserLMSSectionAssociation](LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier, Id, ChangeVersion)
    SELECT  LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[UserLMSSectionAssociation] ENABLE TRIGGER [fizz_UserLMSSectionAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [fizz].[fizz_User_TR_DeleteTracking] ON [fizz].[User] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_fizz].[User](UserIdentifier, Id, ChangeVersion)
    SELECT  UserIdentifier, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [fizz].[User] ENABLE TRIGGER [fizz_User_TR_DeleteTracking]
GO


