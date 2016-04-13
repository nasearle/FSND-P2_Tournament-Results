## Tournament Results
A system for matching players in a [Swiss Tournament](https://en.wikipedia.org/wiki/Swiss-system_tournament) 
and recording the results in a database. This app is written in Python and SQL and was created in a Vagrant
virtual machine with VirtualBox.
	
### Included files:
*  Vagrantfile and pg_config.sh- Vagrant configuration files
* .vagrant - Vagrant vm files
* tournament.sql - sets up the database and tables to store the results of the tournament
* tournament.py - contains the functions to enter data into and retrieve data from the database
* tournament_test.py - contains a series of test functions to check if tournament.py is working correctly
	
### Instructions:
This app requires [Vagrant](https://www.vagrantup.com/) and
[VirtualBox](https://www.virtualbox.org/wiki/Downloads) to run.

Clone the FSND-P2_Tournament-Results repository to your local machine.
Open a GitBash in the repository and enter the command $ vagrant up. 
When vagrant has finished starting up, enter the command $ vagrant ssh.
Enter $ cd /vagrant and then $ cd tournament.

To create the database to store the players and results of our
tournament, we need to use the psql command line interface. Enter
$ psql into GitBash, followed by \i tournament.sql. This will 
set up the database with players and matches tables. Enter $ \q
to exit the psql command line.

Enter $ python. You can now >>> import tournament and use the
functions in tournament.py to set up a Swiss tournament! All functions
used here should be prepended with 'tournament.'. Use registerPlayer(name)
to enter players into the draw, and then swissPairings() to match 
players. Enter the results after each game using reportMatch(winner, loser),
where winner and loser are the players' id's, to update the standings.
The players' id's and standings can be seen using the playerStandings()
function. After the first round of matches is complete, you can use
swissPairings() again to set up the second round, and so on.

There is also a countPlayers() function which returns the number 
of players. Finally, there are deletePlayers() and deleteMatches()
functions, which allow you to remove all data to start a new
tournament!