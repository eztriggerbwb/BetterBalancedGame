-- Created by iElden

-- Golfcourse nerf
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='GOLFCOURSE_AMENITY' AND Name='Amount';
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('BBG_GOLF_COURSE_AMENITIES_ENTERTAINMENT_COMPLEX_MODIFIER', 'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_AMENITY', 'BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENTS');

INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
    ('BBG_GOLF_COURSE_AMENITIES_ENTERTAINMENT_COMPLEX_MODIFIER', 'Amount', '1');

INSERT OR IGNORE INTO RequirementSets(RequirementSetId , RequirementSetType) VALUES
	('BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements(RequirementSetId , RequirementId) VALUES
	('BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENTS', 'BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENT');

INSERT OR IGNORE INTO Requirements(RequirementId , RequirementType) VALUES
	('BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENT' , 'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');

INSERT OR IGNORE INTO RequirementArguments(RequirementId , Name, Value) VALUES
	('BBG_NEXT_TO_ENTERTAINMENT_COMPLEX_REQUIREMENT' , 'DistrictType', 'DISTRICT_ENTERTAINMENT_COMPLEX');