# Ruby-Blackjack
Blackjack CLI game programmed in Ruby

# A walkthrough of a normal blackjack game
1) The dealer grabs a deck of 52 cards
2) The dealer shuffles the deck
3) The dealer servers the player, then themselves, then the player, then themselves (two cards each player gets first card)
4) The dealer and player both count up the value of their cards, but the player can only see one of the dealers card
5) The player has the option to hit, stay, or double down their bet and get one more card
6) If the player has stayed, the value of the dealers cards is shown to the player and a winner or loser is determined based on the boolean comparison of those values
7) If the player has hit, the dealer servers a card and if the player has a value over 21 the game ends with the dealer winning.
8) If the player doubles, the dealer servers a card and the players bet is doubled (same bust rule applies from above)

# Notes about the dealer logic
1) The dealer should always hit on 16 or less (stay at 17 or more)
2) The dealer should always have an initial bet of 1000