def janken
  puts "じゃんけん…"
  puts"0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  player_hand = gets.to_i
  computer_hand = rand(3)

  if player_hand == 3
    puts "対戦を終わります"
    exit
  end

  jankens = ["グー","チョキ","パー"]

  puts "ホイ"
  puts "----------------------------"
  puts "あなた : #{jankens[player_hand]}を出しました"
  puts "相手 : #{jankens[computer_hand]}を出しました"

  if player_hand == computer_hand
    puts "あいこで"
    return true
  elsif (player_hand == 0 && computer_hand == 1)||
        (player_hand == 1 && computer_hand == 2)||
        (player_hand == 2 && computer_hand == 0)
    puts "じゃんけんに勝ちました"
    return false, "win"
  else
    puts "じゃんけんに負けました"
    return false, "lose"
  end
end

next_game = true
result = ""

def attimuite_hoi(result)
  puts "あっち向いて〜"
  puts"0(上) 1(右) 2(下) 3(左)"

  player_face = gets.to_i
  computer_face = rand(4)

  directions = ["上","右","下","左"]

  puts "ホイ"
  puts "----------------------------"
  puts "あなた : #{directions[player_face]}"
  puts "相手 : #{directions[computer_face]}"

  if (result == "win" && player_face == computer_face)
    puts "完全勝利"
    return true
  elsif  (result == "lose" && player_face == computer_face)
    puts "完敗です"
    return true
  else
    return true
  end
end

while next_game do
  next_game, result = janken
  if next_game == false
    next_game = attimuite_hoi(result)
  end
end


