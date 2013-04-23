  Scenario: Controlling playing music

                #If my song is paused and then I press 
                #fast forward / backward, will its timestamps still
                #be forwarded or backwarded  
	Background: Playback toolbar is being diplayed at the bottom
		
		Scenario: Fastforward the playback
                	When The song is playing
                	And  Fastforward button is pressed
                	Then The song should be fast forwarded

		Scenario: Rewind the playback
                	When The song is playing
                	And  Rewind-backword button is pressed
                	Then The song should be rewinded

		Scenario: Stop the playback
                	When The song is playing
                	And  The stop button is pressed.
                	Then The song is stopped playing
		
		Scenario: Start the playback for no song
                	When No song is selected for playback
                	And  The play button is pressed
                	Then The button does not do anything
		
		Scenario: Start the playback for selected song
                	When song has been paused
                	And  The play button is pressed
                	Then The song starts playing 
		
		Scenario: Play songs in shuffled order 
                	When The Shuffle option is selected from the right hand side drop-down menu
                	Then Shuffle the order of the songs in the current
                        	playlist while sending them to the Playback songs
		
		Scenario: Repeatedly play the selected playlist
                	When The Repeat list option is selected from the right
                       		hand side drop-down menu
                	Then Repeat the order of the songs in the current playlist
                        	while sending them to the Playback songs
		
		Scenario: Repeatedly play the selected song 
                	When The Repeat song option is selected from the right
                        	hand side drop-down menu
                	Then Repeat the song being played currently

