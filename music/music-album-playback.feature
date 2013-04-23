Feature: Album view, all the details will be covered in scenarios

   Album cover is shown at the left. Music files are listed at the right.

   Background: Given an album cover was clocked from the music-albums view

        Scenario: Importing music from CD or a Portable device

                When Select mode button is clicked
                Then View changes to select mode

                When Track is tapped for long
                Then View changes to select mode, selecting particular track

                When Album title or album art is long pressed
                Then View changes to select mode, selecting all tracks

                When Atleast 1 item is selected
                Then Playback toolbar at the botton switches to action toolbar

                When Atleast 1 item is selected
                And  The playback toolbar was already switched into
                        action toolbar
                Then Music continues to play

                When Any items are selected
                Then They are added to the music library


        Scenario: Searching songs on the basis of song titles/albums/artists/genre

                When The search button is pressed
                Then View changes to search mode
