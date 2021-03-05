# A walkthrough of a normal blackjack game
# 1) The dealer grabs a deck of 52 cards
# 2) The dealer shuffles the deck
# 3) The dealer servers the player, then themselves, then the player, then themselves (two cards each player gets first card)
# 4) The dealer and player both count up the value of their cards, but the player can only see one of the dealers card
# 5) The player has the option to hit, stay, or double down their bet and get one more card
# 6) If the player has stayed, the value of the dealers cards is shown to the player and a winner or loser is determined based on the boolean comparison of those values
# 7) If the player has hit, the dealer servers a card and if the player has a value over 21 the game ends with the dealer winning.
# 8) If the player doubles, the dealer servers a card and the players bet is doubled (same bust rule applies from above)

# Notes about the dealer logic
# 1) The dealer should always hit on 16 or less (stay at 17 or more)
# 2) The dealer should always have an initial bet of 1000

class Card 
    attr_accessor :number, :suit, :value

    def initialize(number, suit, value)
        @number = number
        @suit = suit
        @value = value
    end

    def to_s
        "#{@number} of #{@suit}"
    end
end 

class Deck
    def initialize 
        @deck = []
        @deck << Card.new("A", "Hearts", 1)
        @deck << Card.new("A", "Spades", 1)
        @deck << Card.new("A", "Diamonds", 1)
        @deck << Card.new("A", "Clubs", 1)
        @deck << Card.new("K", "Hearts", 10)
        @deck << Card.new("K", "Spades", 10)
        @deck << Card.new("K", "Diamonds", 10)
        @deck << Card.new("K", "Clubs", 10)
        @deck << Card.new("Q", "Hearts", 10)
        @deck << Card.new("Q", "Spades", 10)
        @deck << Card.new("Q", "Diamonds", 10)
        @deck << Card.new("Q", "Clubs", 10)
        @deck << Card.new("J", "Hearts", 10)
        @deck << Card.new("J", "Spades", 10)
        @deck << Card.new("J", "Diamonds", 10)
        @deck << Card.new("J", "Clubs", 10)
        @deck << Card.new("10", "Hearts", 10)
        @deck << Card.new("10", "Spades", 10)
        @deck << Card.new("10", "Diamonds", 10)
        @deck << Card.new("10", "Clubs", 10)
        @deck << Card.new("9", "Hearts", 9)
        @deck << Card.new("9", "Spades", 9)
        @deck << Card.new("9", "Diamonds", 9)
        @deck << Card.new("9", "Clubs", 9)
        @deck << Card.new("8", "Hearts", 8)
        @deck << Card.new("8", "Spades", 8)
        @deck << Card.new("8", "Diamonds", 8)
        @deck << Card.new("8", "Clubs", 8)
        @deck << Card.new("7", "Hearts", 7)
        @deck << Card.new("7", "Spades", 7)
        @deck << Card.new("7", "Diamonds", 7)
        @deck << Card.new("7", "Clubs", 7)
        @deck << Card.new("6", "Hearts", 6)
        @deck << Card.new("6", "Spades", 6)
        @deck << Card.new("6", "Diamonds", 6)
        @deck << Card.new("6", "Clubs", 6)
        @deck << Card.new("5", "Hearts", 5)
        @deck << Card.new("5", "Spades", 5)
        @deck << Card.new("5", "Diamonds", 5)
        @deck << Card.new("5", "Clubs", 5)
        @deck << Card.new("4", "Hearts", 4)
        @deck << Card.new("4", "Spades", 4)
        @deck << Card.new("4", "Diamonds", 4)
        @deck << Card.new("4", "Clubs", 4)
        @deck << Card.new("3", "Hearts", 3)
        @deck << Card.new("3", "Spades", 3)
        @deck << Card.new("3", "Diamonds", 3)
        @deck << Card.new("3", "Clubs", 3)
        @deck << Card.new("2", "Hearts", 2)
        @deck << Card.new("2", "Spades", 2)
        @deck << Card.new("2", "Diamonds", 2)
        @deck << Card.new("2", "Clubs", 2)
        @deck << Card.new("1", "Hearts", 1)
        @deck << Card.new("1", "Spades", 1)
        @deck << Card.new("1", "Diamonds", 1)
        @deck << Card.new("1", "Clubs", 1)

        @deck = @deck.shuffle!
    end

    def draw_card
        card = @deck.pop
    end

    def show_deck
        return @deck
    end
end 

class BlackJack 
    def initialize
        deck = Deck.new
        
    end 
end 

game = BlackJack.new