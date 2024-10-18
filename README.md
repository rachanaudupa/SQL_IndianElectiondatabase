India General Elections 2024 Result Analysis - MySQL Queries

Source : DataTutorial on Youtube
This repository is created for practice purpose.
This repository contains a collection of MySQL queries designed to analyze the 2024 India General Elections. It offers insights into various election results, including total seats, state-wise outcomes, party alliances, and more. The analysis is built upon a structured dataset available on Kaggle.

Dataset
The dataset used for this analysis is publicly available on Kaggle and has been uploaded to this repository. 
ERD Schema Overview
The database consists of five main tables that store constituency details, election results at the constituency and state levels, and party performance. These tables are connected through primary and foreign keys to ensure efficient data organization and querying.
<img width="800" alt="image" src="https://github.com/user-attachments/assets/e09a6443-fb27-439f-b9fb-4fc5cc6d2099">


Key Components
1. constituencywise_details
This table stores detailed information about the candidates who participated in each parliamentary constituency.

Columns:
Candidate: Name of the candidate.
Party: The political party the candidate represents.
EVM Votes: Number of votes received via Electronic Voting Machines (EVM).
Postal Votes: Number of votes received via postal ballots.
Total Votes: Total votes received (EVM + Postal).
% of Votes: Percentage of the total votes won by the candidate.
Constituency ID: Unique identifier for the constituency (Foreign key related to constituencywise_results and statewise_results).
2. partywise_results
This table provides a summary of how political parties performed in the election by listing the number of seats won.

Columns:
Party: Name of the political party.
Won: Number of constituencies won by the party.
Party ID: Unique identifier for the party (Primary key, linked to constituencywise_results).
3. constituencywise_results
This table holds the summary of results for each parliamentary constituency.

Columns:
Parliament Constituency: The parliamentary constituency being considered.
Constituency Name: Name of the constituency.
Winning Candidate: Name of the candidate who won the seat.
Total Votes: Total number of votes cast in the constituency.
Margin: Winning margin (difference in votes between the winner and the runner-up).
Constituency ID: Unique identifier for the constituency (Primary key, linked to constituencywise_details).
Party ID: Unique identifier for the party (Foreign key linked to partywise_results).
4. statewise_results
This table stores information about the overall election results for each state.

Columns:
Constituency: The constituency within the state.
Const. No.: Constituency number.
Parliament Constituency: Parliamentary constituency name.
Leading Candidate: The candidate leading in the results.
Trailing Candidate: The candidate trailing in the results.
Margin: Winning margin in votes.
Status: Status of the election (e.g., result declared, in progress).
State ID: Foreign key linking to the states table.
5. states
This table lists all states that participated in the election.

Columns:
State ID: Unique identifier for the state (Primary key).
State: Name of the state.
