ALTER TABLE fizz.Assignment ADD CONSTRAINT FK_153cda_LMSSection FOREIGN KEY (LMSSectionIdentifier)
REFERENCES fizz.LMSSection (LMSSectionIdentifier)
;

CREATE INDEX FK_153cda_LMSSection
ON fizz.Assignment (LMSSectionIdentifier ASC);

ALTER TABLE fizz.AssignmentSubmission ADD CONSTRAINT FK_f12526_Assignment FOREIGN KEY (AssignmentIdentifier)
REFERENCES fizz.Assignment (AssignmentIdentifier)
;

CREATE INDEX FK_f12526_Assignment
ON fizz.AssignmentSubmission (AssignmentIdentifier ASC);

ALTER TABLE fizz.AssignmentSubmission ADD CONSTRAINT FK_f12526_User FOREIGN KEY (UserIdentifier)
REFERENCES fizz.User (UserIdentifier)
;

CREATE INDEX FK_f12526_User
ON fizz.AssignmentSubmission (UserIdentifier ASC);

ALTER TABLE fizz.AssignmentSubmissionType ADD CONSTRAINT FK_6f15e4_Assignment FOREIGN KEY (AssignmentIdentifier)
REFERENCES fizz.Assignment (AssignmentIdentifier)
ON DELETE CASCADE
;

CREATE INDEX FK_6f15e4_Assignment
ON fizz.AssignmentSubmissionType (AssignmentIdentifier ASC);

ALTER TABLE fizz.LMSGrade ADD CONSTRAINT FK_0b99df_UserLMSSectionAssociation FOREIGN KEY (LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier)
REFERENCES fizz.UserLMSSectionAssociation (LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier)
;

CREATE INDEX FK_0b99df_UserLMSSectionAssociation
ON fizz.LMSGrade (LMSSectionIdentifier ASC, UserIdentifier ASC, UserLMSSectionAssociationIdentifier ASC);

ALTER TABLE fizz.UserAttendanceEvent ADD CONSTRAINT FK_517447_User FOREIGN KEY (UserIdentifier)
REFERENCES fizz.User (UserIdentifier)
;

CREATE INDEX FK_517447_User
ON fizz.UserAttendanceEvent (UserIdentifier ASC);

ALTER TABLE fizz.UserAttendanceEvent ADD CONSTRAINT FK_517447_UserLMSSectionAssociation FOREIGN KEY (LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier)
REFERENCES fizz.UserLMSSectionAssociation (LMSSectionIdentifier, UserIdentifier, UserLMSSectionAssociationIdentifier)
;

CREATE INDEX FK_517447_UserLMSSectionAssociation
ON fizz.UserAttendanceEvent (LMSSectionIdentifier ASC, UserIdentifier ASC, UserLMSSectionAssociationIdentifier ASC);

ALTER TABLE fizz.UserLMSActivity ADD CONSTRAINT FK_5c3d9d_Assignment FOREIGN KEY (AssignmentIdentifier)
REFERENCES fizz.Assignment (AssignmentIdentifier)
;

CREATE INDEX FK_5c3d9d_Assignment
ON fizz.UserLMSActivity (AssignmentIdentifier ASC);

ALTER TABLE fizz.UserLMSActivity ADD CONSTRAINT FK_5c3d9d_LMSSection FOREIGN KEY (LMSSectionIdentifier)
REFERENCES fizz.LMSSection (LMSSectionIdentifier)
;

CREATE INDEX FK_5c3d9d_LMSSection
ON fizz.UserLMSActivity (LMSSectionIdentifier ASC);

ALTER TABLE fizz.UserLMSActivity ADD CONSTRAINT FK_5c3d9d_User FOREIGN KEY (UserIdentifier)
REFERENCES fizz.User (UserIdentifier)
;

CREATE INDEX FK_5c3d9d_User
ON fizz.UserLMSActivity (UserIdentifier ASC);

ALTER TABLE fizz.UserLMSSectionAssociation ADD CONSTRAINT FK_f5b624_LMSSection FOREIGN KEY (LMSSectionIdentifier)
REFERENCES fizz.LMSSection (LMSSectionIdentifier)
;

CREATE INDEX FK_f5b624_LMSSection
ON fizz.UserLMSSectionAssociation (LMSSectionIdentifier ASC);

ALTER TABLE fizz.UserLMSSectionAssociation ADD CONSTRAINT FK_f5b624_User FOREIGN KEY (UserIdentifier)
REFERENCES fizz.User (UserIdentifier)
;

CREATE INDEX FK_f5b624_User
ON fizz.UserLMSSectionAssociation (UserIdentifier ASC);

