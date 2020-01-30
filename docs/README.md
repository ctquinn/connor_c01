# Docs

This directory includes any documentation files.

The primary documentation for this project concerns itself with how chess games are being represented in a file format. In this case, I'm using the standard PGN (Portable Game Notation) format. More details at <https://en.wikipedia.org/wiki/Portable_Game_Notation>

A key parameter used in this study will be "time controls", i.e. how much time the chess game will last (in actual units of time). For instance, "3+0" denotes that both players have 3 minutes to play all their moves in the game (if their "clock" hits 0, they normally lose the game unless a few specific circumstances are met). The number after the "+" denotes an "increment", or how many seconds is added to a player's clock once they make a move.

The file lichess_time_controls.png contains a spreadsheet image of how Lichess divides different time controls into the categories "ultra", "bullet", "blitz", "rapid", and "classical" in order of fastest to slowest. This spreadsheet is from <https://www.reddit.com/r/chess/comments/bqp8yo/lichess_standard_time_control_categories/>


Another key split in this study concerns chess opening codes. Chess openings denote the "first few" moves of a game. These become more specific as the opening nears its close (usually around moves 10-15), culminating in a final opening name.

For instance, if white opens with 1.e4, this is the King's Pawn Opening. If black replies to that with 1...c5, the opening is more specific: the Sicilian defense. 2.Nf3 leads to the open sicilian, etc.

For easy reference, the "Encyclopedia of Chess Openings" (ECO), an old opening tome, created ECO codes to group openings. Each opening has a number-letter pair, with letters from A-E and numbers from 0-99. Openings with similar codes are roughly related to each other, for instance B79 is the Sicilian Defense, Dragon Variation, while B99 is the Sicilian Defense, Najdorf Variation. These two openings diverge from each other on move 6.

A full list of opening codes : names is found at: <https://en.wikipedia.org/wiki/List_of_chess_openings>


