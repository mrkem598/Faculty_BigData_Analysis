
# Pig Latin Script
Basic Pig Operations: SPLIT
SPLIT :
We saw how we can filter data using FILTER statement. If we have a alias which contains a relation that has to be partitioned into two or more relations. Split statements can utilize OTHERWISE keyword to capture the data that did not fulfill any of the conditions mentioned in SPLIT.

Basic Syntax : SPLIT <alias1> INTO <alias2> IF (CONDITION1),
                                               <alias3> IF (CONDITION2),
                                               <alias4> IF (CONDITION3),
                                               <alias5> OTHERWISE;

Equivalent FILTER statements :  
<alias2> = FILTER <alias1> BY (CONDITION1);
<alias3> = FILTER <alias1> BY (CONDITION2);
<alias4> = FILTER <alias1> BY (CONDITION3);
<alias5> = FILTER <alias1> BY (NOT((CONDITION1) OR (CONDITION2) OR (CONDITION3)));

Note :- Highlighted in red are the optional statements 

Example :-  SPLIT student_data INTO 
    english_students IF (SUBJECT == 'English'),
    mathematics_students IF (SUBJECT == 'Mathematics'),
    statistics_students IF (SUBJECT == 'Statistics'),
    other_students OTHERWISE;
