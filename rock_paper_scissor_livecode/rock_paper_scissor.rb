hands_game = %w(rock scissor paper)
puts "Get ready for the Rock paper scissor game"

loop do 
    puts "Set your game ! [rock paper or scissor?]"
    print "> "
    user_hand = gets.chomp
    computer_hand = hands_game.sample

    case(user_hand)
    when computer_hand 
        puts "DRAW!"
    when "rock"
        player_wins = computer_hand === 'scissor'
    when "paper"
        player_wins = computer_hand === 'rock'
    when "scissor"
        player_wins = computer_hand === 'paper'
    when ''
        puts "Thank you for playing ! Goodbye!"
        #breaking points from the loop
        break
    else    
        puts "Wrong action! Choose again"
    end 

    if player_wins
        puts "Congratulations ! Computer lost on #{computer_hand}"
    elsif (!player_wins && computer_hand != user_hand)
        puts "you loose...Computer choose #{computer_hand}"
    end
end