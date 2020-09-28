CREATE TRIGGER [fizz].[fizz_Assignment_TR_UpdateChangeVersion] ON [fizz].[Assignment] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[Assignment]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[Assignment] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_AssignmentSubmission_TR_UpdateChangeVersion] ON [fizz].[AssignmentSubmission] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[AssignmentSubmission]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[AssignmentSubmission] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_LMSGrade_TR_UpdateChangeVersion] ON [fizz].[LMSGrade] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[LMSGrade]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[LMSGrade] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_LMSSection_TR_UpdateChangeVersion] ON [fizz].[LMSSection] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[LMSSection]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[LMSSection] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_User_TR_UpdateChangeVersion] ON [fizz].[User] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[User]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[User] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_UserAttendanceEvent_TR_UpdateChangeVersion] ON [fizz].[UserAttendanceEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[UserAttendanceEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[UserAttendanceEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_UserLMSActivity_TR_UpdateChangeVersion] ON [fizz].[UserLMSActivity] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[UserLMSActivity]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[UserLMSActivity] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [fizz].[fizz_UserLMSSectionAssociation_TR_UpdateChangeVersion] ON [fizz].[UserLMSSectionAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [fizz].[UserLMSSectionAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [fizz].[UserLMSSectionAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

