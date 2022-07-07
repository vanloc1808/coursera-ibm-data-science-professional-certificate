--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
	in_School_ID INTEGER,
	in_Leader_Score INTEGER
)

BEGIN 
	IF in_Leader_Score > 0 AND in_Leader_Score < 20 THEN
	
		UPDATE CHICAGO_PUBLIC_SCHOOLS 
		SET Leaders_Icon = "Very weak"
		WHERE School_ID = in_School_ID;
	
	ELSEIF in_Leader_Score < 40 THEN
	
		UPDATE CHICAGO_PUBLIC_SCHOOLS 
		SET Leaders_Icon = "Weak"
		WHERE School_ID = in_School_ID;
	
	ELSEIF in_Leader_Score < 60 THEN
		
		UPDATE CHICAGO_PUBLIC_SCHOOLS 
		SET Leaders_Icon ="Average"
		WHERE School_ID = in_School_ID;
	
	
	ELSEIF in_Leader_Score < 80 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS 
		SET Leaders_Icon = "Strong"
		WHERE School_ID = in_School_ID;
	
	
	ELSEIF in_Leader_Score < 100 THEN
	
		UPDATE CHICAGO_PUBLIC_SCHOOLS 
		SET Leaders_Icon = "Very strong"
		WHERE School_ID = in_School_ID;
    
    
    ELSE 
        ROLLBACK WORK;
	
	END IF;
	
	UPDATE CHICAGO_PUBLIC_SCHOOLS 
	SET Leaders_Score = in_Leader_Score
	WHERE School_ID = in_School_ID;
	
END
@

