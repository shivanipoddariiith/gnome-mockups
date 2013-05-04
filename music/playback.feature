  Scenario: Controlling playing music

                
	Background: Playback toolbar is being diplayed at the bottom

                #Not sure about so many Ands
                Scenario: Elements being displayed by default in the Playbar
                        Given The song is playing
                        Then The next-song button is displayed
                        And The previous-song button is displyed
                        And The Play-Pause button is displayed
                        And The progress bar is displayed
                        And The timer is displayed
                        And The Repeat-Shuffle combo-box is displayed
                        
		
		Scenario: Play the next song
                	Given The song is playing
                	When  Next-arrow button is pressed
                	Then The next song should start playing

		Scenario: Play the previous song
                	Given The song is playing
                	When Previous-arrow button is pressed
                	Then The last song should start playing

		Scenario: Pause the playback
                	Given The song is playing
                	When  The pause button is pressed.
                	Then The song playing is paused
			And  The pause button is changed to a play button 
		
		Scenario: Player for no song
                	When No song is selected for playback
			Then The playback toolbar is hidden
                	
		
		Scenario: Start the playback for selected song
                	Given The song has been paused
                	When  The play button is pressed
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

