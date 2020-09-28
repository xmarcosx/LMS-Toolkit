-- Extended Properties [fizz].[Assignment] --
COMMENT ON TABLE fizz.Assignment IS 'Course work assigned to students enrolled in a section.';
COMMENT ON COLUMN fizz.Assignment.AssignmentIdentifier IS 'A unique numeric identifier assigned to the assignment.';
COMMENT ON COLUMN fizz.Assignment.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.Assignment.SourceSystem IS 'The system code or name providing the assignment data.';
COMMENT ON COLUMN fizz.Assignment.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.Assignment.Title IS 'The assignment title or name.';
COMMENT ON COLUMN fizz.Assignment.AssignmentCategory IS 'The category or type of assignment.';
COMMENT ON COLUMN fizz.Assignment.AssignmentDescription IS 'The assignment description.';
COMMENT ON COLUMN fizz.Assignment.StartDateTime IS 'The start date/time for the assignment. Students will have access to the assignment after this date.';
COMMENT ON COLUMN fizz.Assignment.EndDateTime IS 'The end date/time for the assignment. Students will no longer have access to the assignment after this date.';
COMMENT ON COLUMN fizz.Assignment.DueDateTime IS 'The due date/time for the assignment.';
COMMENT ON COLUMN fizz.Assignment.MaxPoints IS 'The maximum number of points a student may receive for a submission of the assignment.';
COMMENT ON COLUMN fizz.Assignment.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.Assignment.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[AssignmentSubmission] --
COMMENT ON TABLE fizz.AssignmentSubmission IS 'A student''s submission for an assignment.';
COMMENT ON COLUMN fizz.AssignmentSubmission.LMSGradeIdentifier IS 'A unique numeric identifier assigned to the submission.';
COMMENT ON COLUMN fizz.AssignmentSubmission.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.AssignmentSubmission.SourceSystem IS 'The system code or name providing the user data.';
COMMENT ON COLUMN fizz.AssignmentSubmission.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.AssignmentSubmission.AssignmentIdentifier IS 'A unique numeric identifier assigned to the assignment.';
COMMENT ON COLUMN fizz.AssignmentSubmission.Status IS 'The status of the submission in relation to the late policy.';
COMMENT ON COLUMN fizz.AssignmentSubmission.SubmissionDateTime IS 'The date/time for the assignment submission.';
COMMENT ON COLUMN fizz.AssignmentSubmission.EarnedPoints IS 'The points earned for the submission.';
COMMENT ON COLUMN fizz.AssignmentSubmission.Grade IS 'The grade received for the submission.';
COMMENT ON COLUMN fizz.AssignmentSubmission.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.AssignmentSubmission.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[AssignmentSubmissionType] --
COMMENT ON TABLE fizz.AssignmentSubmissionType IS 'The type or types of submissions available for the assignment.';
COMMENT ON COLUMN fizz.AssignmentSubmissionType.AssignmentIdentifier IS 'A unique numeric identifier assigned to the assignment.';
COMMENT ON COLUMN fizz.AssignmentSubmissionType.SubmissionType IS 'The type or types of submissions available for the assignment.';

-- Extended Properties [fizz].[LMSGrade] --
COMMENT ON TABLE fizz.LMSGrade IS 'The grade received for a section enrollment.';
COMMENT ON COLUMN fizz.LMSGrade.LMSGradeIdentifier IS 'A unique numeric identifier assigned to the grade.';
COMMENT ON COLUMN fizz.LMSGrade.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.LMSGrade.SourceSystem IS 'The system code or name providing the grade data.';
COMMENT ON COLUMN fizz.LMSGrade.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.LMSGrade.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.LMSGrade.UserLMSSectionAssociationIdentifier IS 'A unique numeric identifier assigned to the user section association.';
COMMENT ON COLUMN fizz.LMSGrade.Grade IS 'The user''s letter or numeric grade for the section enrollment.';
COMMENT ON COLUMN fizz.LMSGrade.GradeType IS 'The type of grade reported. E.g., Current, Final.';
COMMENT ON COLUMN fizz.LMSGrade.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.LMSGrade.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[LMSSection] --
COMMENT ON TABLE fizz.LMSSection IS 'A course section defined in the source system.';
COMMENT ON COLUMN fizz.LMSSection.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.LMSSection.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.LMSSection.SourceSystem IS 'The system code or name providing the section data.';
COMMENT ON COLUMN fizz.LMSSection.SISSectionIdentifier IS 'The section identifier defined in the Student Information System (SIS).';
COMMENT ON COLUMN fizz.LMSSection.Title IS 'The section title or name.';
COMMENT ON COLUMN fizz.LMSSection.SectionDescription IS 'The section description.';
COMMENT ON COLUMN fizz.LMSSection.Term IS 'The enrollment term for the section.';
COMMENT ON COLUMN fizz.LMSSection.LMSSectionStatus IS 'The section status from the source system. E.g., Published, Completed.';
COMMENT ON COLUMN fizz.LMSSection.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.LMSSection.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[User] --
COMMENT ON TABLE fizz.User IS 'A system user.';
COMMENT ON COLUMN fizz.User.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.User.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.User.SourceSystem IS 'The system code or name providing the user data.';
COMMENT ON COLUMN fizz.User.UserRole IS 'The role assigned to the user. E.g., Student, Teacher, Administrator.';
COMMENT ON COLUMN fizz.User.SISUserIdentifier IS 'The user identifier defined in the Student Information System (SIS).';
COMMENT ON COLUMN fizz.User.LocalUserIdentifier IS 'The user identifier assigned by a school or district.';
COMMENT ON COLUMN fizz.User.Name IS 'The full name of the user.';
COMMENT ON COLUMN fizz.User.EmailAddress IS 'The primary e-mail address for the user.';
COMMENT ON COLUMN fizz.User.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.User.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[UserAttendanceEvent] --
COMMENT ON TABLE fizz.UserAttendanceEvent IS 'Attendance statuses assigned to users for a specific date.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.UserAttendanceEventIdentifier IS 'A unique numeric identifier assigned to the user attendance event.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.SourceSystem IS 'The system code or name providing the user data.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.UserLMSSectionAssociationIdentifier IS 'A unique numeric identifier assigned to the user section association.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.EventDate IS 'The date of the attendance event.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.Status IS 'A code describing the attendance event. E.g., In Attendance, Excused Absence, Unexcused Absence.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.UserAttendanceEvent.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[UserLMSActivity] --
COMMENT ON TABLE fizz.UserLMSActivity IS 'A user''s activity events within the source system.';
COMMENT ON COLUMN fizz.UserLMSActivity.UserLMSActivityIdentifier IS 'A unique numeric identifier assigned to the user activity.';
COMMENT ON COLUMN fizz.UserLMSActivity.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.UserLMSActivity.SourceSystem IS 'The system code or name providing the user data.';
COMMENT ON COLUMN fizz.UserLMSActivity.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.UserLMSActivity.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.UserLMSActivity.AssignmentIdentifier IS 'A unique numeric identifier assigned to the assignment.';
COMMENT ON COLUMN fizz.UserLMSActivity.ActivityType IS 'The type of activity. E.g., Discussion Post, Account Access/Log In.';
COMMENT ON COLUMN fizz.UserLMSActivity.ActivityDateTime IS 'The date/time the activity occurred.';
COMMENT ON COLUMN fizz.UserLMSActivity.ActivityStatus IS 'The activity status.';
COMMENT ON COLUMN fizz.UserLMSActivity.Content IS 'Content associated with the activity.';
COMMENT ON COLUMN fizz.UserLMSActivity.ActivityTimeInMinutes IS 'The total activity time in minutes.';
COMMENT ON COLUMN fizz.UserLMSActivity.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.UserLMSActivity.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

-- Extended Properties [fizz].[UserLMSSectionAssociation] --
COMMENT ON TABLE fizz.UserLMSSectionAssociation IS 'The association of a system user and course section. For a student, this would be a section enrollment. For a teacher, this would be a section assignment.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.LMSSectionIdentifier IS 'A unique numeric identifier assigned to the section.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.UserIdentifier IS 'A unique numeric identifier assigned to the user.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.UserLMSSectionAssociationIdentifier IS 'A unique numeric identifier assigned to the user section association.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.SourceSystemIdentifier IS 'A unique number or alphanumeric code assigned to a user by the source system.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.SourceSystem IS 'The system code or name providing the user data.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.EnrollmentStatus IS 'The status of the user section association. E.g., Active, Inactive, Withdrawn.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.StartDate IS 'Month, day, and year of the user''s entry or assignment to the section.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.EndDate IS 'Month, day, and year of the user''s withdrawal or exit from the section.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.EntityStatus IS 'The status of the record.';
COMMENT ON COLUMN fizz.UserLMSSectionAssociation.DeletedAt IS 'The date/time the record EntityStatus changed to deleted.';

