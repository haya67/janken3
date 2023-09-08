def janken
    puts "じゃんけん・・・・"
    puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    jankens = ["グー","チョキ","パー","戦わない"]
    program_jankens = ["グー","チョキ","パー"]
    
    puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{program_jankens[program_hand]}"
    
    # じゃんけん勝ち負け判定
    if player_hand == program_hand
        puts "あいこで"
        return janken
        
    elsif player_hand == 3
        puts "棄権をしたので試合終了"
        return false
        
    elsif (player_hand == 0 && program_hand == 1) ||
          (player_hand == 1 && program_hand == 2) ||
          (player_hand == 2 && program_hand == 0) 
        @janken_result = "win"
        puts "じゃんけん勝ちました"
        return acchimuite_hoi
        
    else
        @janken_result = "lose"
        puts "じゃんけん負けました"
        return acchimuite_hoi
    end
end


# --------------------------------------------------
def acchimuite_hoi
    puts "あっち向いて......."
    puts "[0]上\n[1]下\n[2]左\n[3]右"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    
    directions = ["上", "下", "左", "右"]
    
    puts "あなたの向き:#{directions[player_direction]}, 相手の向き:#{directions[program_direction]}"
    
    #あっちむいて勝ち負け判定
    if (player_direction ==  program_direction) && (@janken_result == "win")
        puts "あなたの勝ちです"
       
    elsif (player_direction == program_direction) && (@janken_result == "lose")
        puts "あなたの負けです"
        
    else
        return janken
    end
end



next_game = true
while next_game
    next_game = janken
end

next_game = false
while next_game
    next_game = acchimuite_hoi
end

