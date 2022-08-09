puts "じゃんけん"

¥#jyankenメソッドを定義する
  def jyanken
    
    puts "自分が出す手1(グー)2(チョキ)3(パー)"
    #my_hand変数に自分が選択した手を代入
    my_choice = gets.to_i
    #配列0には、空を入れる←使用しないから...
    type_hand= ["","グー","チョキ","パー"]
    #enemy_choice変数にrandメソッドにて出力した1〜3のランダムな数字を代入
    enemy_choice = rand(1..3)
    #それぞれの手を表示
    puts "自分の手：#{type_hand[my_choice]}"
    puts "相手の手：#{type_hand[enemy_choice]}"
    
    #if文にて勝敗による条件分岐
    if my_choice == enemy_choice
      #自分の手と相手の手が同じ時、あいこと出力
      puts "あいこで"
      return true
    elsif my_choice == 1 && enemy_choice == 2 || my_choice == 2 && enemy_choice == 3 || my_choice == 3 && enemy_choice == 1
      #自分が勝ちの時の条件は、勝ちと出力
      puts "あなたの勝ちです"
      return false
      @win_or_lose = 1
    else
      #上記以外のパターンは負けと出力
      puts "あなたの負けです"
      return false
      @win_or_lose = 2
    end
    
  end
  
  #re_jyanken にtrueを代入
  re_jyanken = true
  
  #re_jynakenがtrueの時？re_jynaknen = jyanken 処理を行う。
  #仮にjyankenがtrueの時、もう一度while文により繰り返す。
  while re_jyanken
    re_jyanken = jyanken
  end
  
  
  #あっちむいてホイ============================================
  #hoihoiメソッドを定義する
  
  def hoihoi
    puts "あっち向いて"
    
    @win_or_lose
  
  if @win_or_lose == 1
    puts "じゃんけんで勝ちました"
    puts "指を指す方向を決めます"
  elsif @win_or_lose == 2
    puts "じゃんけんで負けました"
    puts "向く方法を決めます"
  else
    puts "じゃんけんメソッドと同期できていません"
  end
    
  end
  
  next_game = false
  
  
  while hoihoi
    while next_game
      next_game = jyanken
    end
  end
  
  #============================================================
