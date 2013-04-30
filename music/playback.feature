  Scenario: Controlling playing music

                #If my song is paused and then I press 
                #fast forward / backward, will its timestamps still
                #be forwarded or backwarded  
	Background: Playback toolbar is being diplayed at the bottom
		
		Scenario: Play the next song
                	When The song is playing
                	And  Next-arrow button is pressed
                	Then The next song should start playing

		Scenario: Play the previous song
                	When The song is playing
                	And  Previous-arrow button is pressed
                	Then The last song should start playing

		Scenario: Pause the playback
                	When The song is playing
                	And  The pause button is pressed.
                	Then The song playing is paused
			And  The pause button is changed to a play button 
		
		Scenario: Player for no song
                	When No song is selected for playback
			Then The playback toolbar is hidden
                	
		
		Scenario: Start the playback for selected song
                	When song has been paused
                	And  The play button is pressed
                	Then The song starts playing 
			And  The play button changes to a pause button 
		
		#The context here will be described with respect to various views

		Scenario: Play songs in shuffled order 
                	When The Shuffle option is selected from the right hand side drop-down menu
                	Then Shuffle the order of the songs in the current context
				while sending them to the Playback songs
		
		Scenario: Repeatedly play the selected playlist
                	When The Repeat list option is selected from the right
                       		hand side drop-down menu
                	Then Repeat the order of the songs in the current context
                        	while sending them to the Playback songs
		
		Scenario: Repeatedly play the selected song 
                	When The Repeat song option is selected from the right
                        	hand side drop-down menu
                	Then Repeat the song being played currently

