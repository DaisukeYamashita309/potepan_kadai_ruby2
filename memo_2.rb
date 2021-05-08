def direction
 directions = ["上", "下", "左", "右"]
 puts "-------------------------"
 puts "あっちむいて〜"
 puts "0(上) 1(下) 2(左) 3(右)"
 @my_direction = gets.chomp.to_i
 @opponent_direction = rand(4)
 puts "ホイ!"
 puts "-------------------------"
 puts "あなた:#{directions[@my_direction]}"
 puts "相手:#{directions[@opponent_direction]}"
end

def result
 puts "ホイ！"
 puts "-------------------------"
 puts "あなた:#{@choices[@my_choice]}を出しました"
 puts "相手:#{@choices[@opponent_choise]}を出しました"
 puts "-------------------------"
end
# じゃんけんの処理
def janken
 puts "じゃんけん..."
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"
 @choices = ["グー", "チョキ", "パー"]
 @my_choice = gets.to_i
 @opponent_choise = rand(3)

 # 選択肢以外を選択した場合は予めループするようにする
 if @my_choice > 3
 puts "0~3の中から選択してください"
 puts "-------------------------"
 return true
 end

 if @my_choice == 3
 puts "じゃんけんを終了します"
 return false
 elsif (@my_choice == @opponent_choise)
 puts "あいこで..."
 return true
 elsif (@my_choice == 0 && @opponent_choise ==2) ||
 (@my_choice == 1 && @opponent_choise ==0) ||
 (@my_choice == 2 && @opponent_choise ==1)
  puts "YOU LOSE!"
  direction
 return true
 else 
  puts "YOU WIN!"
   direction
 return true
 end
 return true
end

# janken
next_game = true

while next_game do
 next_game = janken
end