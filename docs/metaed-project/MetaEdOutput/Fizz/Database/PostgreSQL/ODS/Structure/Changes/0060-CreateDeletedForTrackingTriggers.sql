CREATE FUNCTION tracked_deletes_fizz.AssignmentSubmission_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.AssignmentSubmission(LMSGradeIdentifier, Id, ChangeVersion)
    VALUES (OLD.LMSGradeIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.AssignmentSubmission 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.AssignmentSubmission_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.Assignment_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.Assignment(AssignmentIdentifier, Id, ChangeVersion)
    VALUES (OLD.AssignmentIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.Assignment 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.Assignment_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.LMSGrade_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.LMSGrade(LMSGradeIdentifier, Id, ChangeVersion)
    VALUES (OLD.LMSGradeIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.LMSGrade 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.LMSGrade_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.LMSSection_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.LMSSection(LMSSectionIdentifier, Id, ChangeVersion)
    VALUES (OLD.LMSSectionIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.LMSSection 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.LMSSection_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.UserAttendanceEvent_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.UserAttendanceEvent(UserAttendanceEventIdentifier, Id, ChangeVersion)
    VALUES (OLD.UserAttendanceEventIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.UserAttendanceEvent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.UserAttendanceEvent_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.UserLMSActivity_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.UserLMSActivity(UserLMSActivityIdentifier, Id, ChangeVersion)
    VALUES (OLD.UserLMSActivityIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.UserLMSActivity 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.UserLMSActivity_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.UserLMSSectionAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.UserLMSSectionAssociation(LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier, Id, ChangeVersion)
    VALUES (OLD.LMSSectionIdentifier, OLD.UserIdentifier, OLD.UserLMSSectionAssociationIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.UserLMSSectionAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.UserLMSSectionAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_fizz.User_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_fizz.User(UserIdentifier, Id, ChangeVersion)
    VALUES (OLD.UserIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON fizz.User 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_fizz.User_TR_DelTrkg();

