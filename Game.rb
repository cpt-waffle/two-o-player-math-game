require './Random_Question.rb'
require './Player.rb'

class Game
  def initialize()
    @players  = [Player.new(1), Player.new(2)]
    @question = Random_Question.new()
  end


  def play()
    playing = true
    turn = 0
    while playing
      @question.generate_question()
      @question.to_string(@players[turn].id)
      ans = gets.chomp
      if @question.ans == ans.to_i
        puts "Player #{@players[turn].id}: YES! You are correct."
        self.life_checker()
      else
        puts "Player #{@players[turn].id}: Seriously? No!"
        @players[turn].kill_life()
        self.life_checker()
      end

      if @players[turn].life == 0
        winner = 0
        if turn == 0
          winner = 1
        end

        puts "Player #{@players[winner].id} wins with score of #{@players[winner].life}/3"
        puts "----- GAME OVER -----"
        playing = false
        return 1
      end


      if turn == 0
        turn+=1
      else
        turn-=1
      end
      puts "----- NEW TURN -----"
    end
    #change between people
  end

  def life_checker()
    puts "P#{@players[0].id} #{@players[0].life}/3 vs P#{@players[1].id} #{@players[1].life}/3"
  end

end