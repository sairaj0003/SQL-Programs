/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format
The following tables contain contest data:
Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 
+-----------+---------+
| Column    |   Type  |
+-----------+---------+
| hacker_id | Integer |
| name      | String  |
+-----------+---------+
Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level.
+------------------+---------+
| Column           |  Type   |
+------------------+---------+
| difficulty_Level | Integer |
| score            | Integer |
+------------------+---------+
Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.
+------------------+---------+
| Column           |  Type   |
+------------------+---------+
| challenge_id     | Integer |
| hacker_id        | Integer |
| difficulty_level | Integer |
+------------------+---------+
Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission.
+--------------+---------+
| Column       |  Type   |
+--------------+---------+
| submission_id| Integer |
| hacker_id    | Integer |
| challenge_id | Integer |
| score        | Integer |
+--------------+---------+
*/

select h.hacker_id,h.name from Hackers h inner join Submissions s on h.hacker_id=s.hacker_id inner join Challenges c on s.challenge_id=c.challenge_id inner join Difficulty d on c.difficulty_level=d.difficulty_level where d.score=s.score group by h.hacker_id,h.name having count(c.challenge_id)>1 order by count(c.challenge_id) desc, h.hacker_id;
