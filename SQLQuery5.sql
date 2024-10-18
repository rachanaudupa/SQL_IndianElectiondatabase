-- Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency?


Select 
cr.Winning_Candidate ,
pr.Party,
cr.Total_Votes,
cr.Margin,
s.State,
cr.Constituency_Name

From constituencywise_results cr  

JOIN statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
JOIN partywise_results pr ON cr.Party_ID= pr.Party_ID
JOIN states s ON sr.State_ID=s.State_ID

where cr.Constituency_Name ='AGRA'
