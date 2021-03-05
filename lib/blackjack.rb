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

require_relative("./deck.rb")

class BlackJack 
    def initialize
        @deck = Deck.new
        @player_cards = []
        @dealer_cards = []
        draw_hand
        player_hand_value
        display_player_hand
    end 

    def draw_hand
        @player_cards << @deck.draw_card
        @dealer_cards << @deck.draw_card
        @player_cards << @deck.draw_card
        @dealer_cards << @deck.draw_card
    end

    def player_hand_value
        return @player_cards[0].value + @player_cards[1].value
    end

    def dealer_hand_value
        return @dealer_cards[0].value + @dealer_cards[1].value
    end

    def display_player_hand
        if @player_cards[0].number == "A" || @player_cards[1].number == "A"
            puts "#{@player_cards[0]}"
            puts "#{@player_cards[1]}"
            puts "Total value: #{player_hand_value}/#{player_hand_value + 10}"
        else
            puts "#{@player_cards[0]}"
            puts "#{@player_cards[1]}"
            puts "Total value: #{player_hand_value}"
        end
    end

    def bust?
        if dealer_hand_value > 21 || player_hand_value > 21
            return true
        end
        return false
    end

    def blackjackwin?
        if dealer_hand_value == 21 || player_hand_value == 21
            return true
        end 
        return false
    end

    def canHit?
        if !bust || !blackjackwin
            return true
        end
        return false
    end

    def hit(turn)
        if turn == "player"
            @player_cards << @deck.draw_card
            display_player_hand
        elsif turn == "dealer"

        else
            return "Please enter a valid turn (player or dealer)"
        end
    end
end 

game = BlackJack.new