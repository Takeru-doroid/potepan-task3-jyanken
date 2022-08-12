puts "じゃんけん"

#じゃんけん====================================================
#jyankenメソッドを定義する
  def jyanken
    
    puts "自分が出す手1(グー)2(チョキ)3(パー)"
    my_choice = gets.to_i
    type_hand= ["","グー","チョキ","パー"]
    enemy_choice = rand(1..3)
    puts "自分の手：#{type_hand[my_choice]}"
    puts "相手の手：#{type_hand[enemy_choice]}"
    
    if my_choice == enemy_choice
      puts "あいこで"
      return true
    elsif my_choice == 1 && enemy_choice == 2 || my_choice == 2 && enemy_choice == 3 || my_choice == 3 && enemy_choice == 1
      puts "あなたの勝ちです"
      #グローバル変数で勝ち負けを指定..本来は保守性・可読性の観点から使用は推奨されていない
      #ここを、ローカル変数で置き換えたい...
      $win_or_lose = "win"
      puts $win_or_lose
      return false
    else
      puts "あなたの負けです"
      $win_or_lose = "lose"
      puts $win_or_lose
      return false
    end
    
  end
  
  
  #あいこの場合、じゃんけんメソッドをループ
  #re_jyanken にtrueを代入
  re_jyanken = true
  
  #re_jynakenがtrueの時？re_jynaknen = jyanken 処理を行う。
  #jyankenの戻り値がtrueの時、jyankenメソッドを繰り返す。
  while re_jyanken
    re_jyanken = jyanken
  end

#==============================================================

  #あっちむいてホイ============================================
  #hoihoiメソッドを定義する
  
  def hoihoi
    puts "あっち向いて"
    
    type_direction = ["","上","右","下","左"]
    enemy_direction = rand(1..4)
    
    
    if $win_or_lose == "win"
      puts "指を差す方向を決めます"
      puts "1(上)2(右)3(下)4(左)"
      
      pick_direction = gets.to_i
      
      puts "自分が差した方向：#{type_direction[pick_direction]}"
      puts "相手が向いた方向：#{type_direction[enemy_direction]}"
      
      if  pick_direction == enemy_direction
        puts "すごい！あなたの勝ちです！！"
      else
        puts "もう一度"
        return true
      end
      
    elsif $win_or_lose == "lose"
      puts "向く方法を決めます"
      puts "1(上)2(右)3(下)4(左)"
      
      pick_direction = gets.to_i

      puts "自分が向いた方向：#{type_direction[pick_direction]}"
      puts "相手が差した方向：#{type_direction[enemy_direction]}"
      
      if  pick_direction == enemy_direction
        puts "残念..あなたの負けです.."
      else
        puts "もう一度"
        return true
      end
      
      
    else
      puts "じゃんけんメソッドと同期できていません"
    end
    
  end
  
  #じゃんけんの勝敗からhoihoiメソッドへの移行
  next_game = true
  
  while hoihoi
    while next_game
      next_game = jyarubynken
    end
  end
  
  #============================================================




