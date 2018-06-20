CREATE TABLE users  
(   
  user_id  NUMBER  GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
  username varchar2(50) ,  
  useremail varchar2(50) ,  
  userpass varchar2(50) ,
  regtime    date,
  PRIMARY KEY (user_id)
);  

  CREATE TABLE Questions  
(   
  question_id  NUMBER  GENERATED ALWAYS  as IDENTITY(START with 1 INCREMENT by 1),
  question varchar2(50) ,  
  is_active varchar2(10) ,
  PRIMARY KEY (question_id)

);  

CREATE TABLE Question_choices (
    choice_id NUMBER  GENERATED ALWAYS  as IDENTITY(START with 1 INCREMENT by 1),
    question_id NUMBER,
    is_right_choice varchar2(10),
    choice varchar2(50),
    PRIMARY KEY (choice_id),
    FOREIGN KEY (question_id) REFERENCES Questions(question_id)
);

  CREATE TABLE User_question_answer  
(   
  question_id  NUMBER ,
  user_id NUMBER,  
  choice_id NUMBER,
  is_right     varchar2(10),
  answer_time  date,
  FOREIGN KEY (question_id) REFERENCES Questions(question_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (choice_id) REFERENCES Question_choices(choice_id)

);  