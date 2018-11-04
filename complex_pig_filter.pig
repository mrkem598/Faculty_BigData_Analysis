student_data =
    LOAD 'src/resources/data/input/filter_input'
    USING PigStorage(',')
    AS (STUDENT_ID:chararray, STUDENT_NAME:chararray, SCORE:int, SUBJECT:chararray);

filtered_data = FILTER student_data BY (((STUDENT_ID == 'STUD0001') OR (STUDENT_ID == 'STUD0002')) AND (SCORE > 30) AND (NOT SCORE > 45));
    
STORE 
	filtered_data 
	INTO 'src/resources/data/actual_output/filter_with_and_or_not_output' 
	USING PigStorage(',');
