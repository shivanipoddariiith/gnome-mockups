Feature: Gives the Album view for pre-stored albums, CD, Portable devices along with playback of the pre-selected song
 
   Album cover is shown at the left. Music files are listed at the right. 

   Background: Given you clicked the CD cover Or the Portable device cover from Importing_Music.feature
		Or selected any album already in the application

   	Scenario: Importing music from CD or a Portable device

   		When: Select mode button is clicked
   		Then: View changes to select mode
		
   		When: Track is tapped for long
		Then: View changes to select mode, selecting particular track
		
		When: Album title or album art is long pressed 
		Then: View changes to select mode, selecting all tracks
			
		When: Atleast 1 item is selected
		Then: Playback toolbar at the botton switches to action toolbar

		When: Atleast 1 item is selected
		And : The playback toolbar was already switched into 
			action toolbar		
		Then: Music continues to play

		When: Any items are selected
		Then: They are added to the music library

 	Scenario: Controlling playing music 
			
		#If my song is paused and then I press 
		#fast forward / backward, will its timestamps still
		#be forwarded or backwarded  

		When: Playback toolbar is being diplayed at the bottom
		And : The song is playing 
		And : Fastforward button is pressed
		Then: The song should be fast forwarded
		
		When: Playback toolbar is being diplayed at the bottom
		And : The song is playing
		And : Rewind-backword button is pressed
		Then: The song should be rewinded

		When: Playback toolbar is being diplayed at the bottom
		And : The song is playing
		And : The stop button is pressed.
		Then: The song is stopped playing 
		
		#Confirm
		When: Playback toolbar is being diplayed at the bottom
		And : No song is selected for playback
		And : The play button is pressed
		Then: The button does not do anything 
		
		
		When: Playback toolbar is being diplayed at the bottom
		And : The Shuffle option is selected from the right 
			hand side menu
		Then: Shuffle the order of the songs in the current 
			playlist while sending them to the Playback songs

		When: Playback toolbar is being diplayed at the bottom
		And : The Repeat list option is selected from the right 
			hand side menu
		Then: Repeat the order of the songs in the current playlist 
			while sending them to the Playback songs

		When: Playback toolbar is being diplayed at the bottom
		And : The Repeat song option is selected from the right 
			hand side menu
		Then: Repeat the song being played currently

	Scenario: Searching songs on the basis of song titles/albums/artists/genre
		
		When: The search button is pressed
		Then: View changes to search mode

