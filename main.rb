require './Game.rb'

# # Player Testing
# temp_player = Player.new(1);
# temp_player.kill_life()
# temp_player.kill_life()
# temp_player.kill_life()
# temp_player.kill_life()
# puts temp_player.life

# Question Testing

# temp_q = Random_Question.new()
# temp_q.generate_question()
# temp_q.to_string(1)
# puts temp_q.ans

game = Game.new()
game.play()