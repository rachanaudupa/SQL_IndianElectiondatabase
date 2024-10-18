--What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024


Select

s.State,
SUM(CASE WHEN pr.party_alliance = 'NDA' THEN 1 Else 0 END) AS NDA_Seats,
SUM(CASE WHEN pr.party_alliance = 'I.N.D.I.A' THEN 1 Else 0 END) AS INDIA_Seats,
SUM(CASE WHEN pr.party_alliance = 'Other' THEN 1 Else 0 END) AS  Other_seat

From constituencywise_results cr

Join partywise_results pr ON cr.Party_ID = pr.Party_ID
JOIN
statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
Join
States s ON sr. State_ID = s.State_ID

Where s.state ='Rajasthan'

Group BY s.state
