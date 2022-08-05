#標準ライブラリcsvを読み込む
require 'csv'

puts "１（新規メモを作成）２（既存のメモを編集する）"
#変数memo_typeに、ユーザーに入力してもらった値を代入
#to_iメソッドにより、数値型として保存
memo_type = gets.to_i
puts "#{memo_type}" + "を選択"



#変数memo_typeに入力した数値によって出力を変える
#(memo_typeをto_sで変換すると、うまく次処理が実行できなかった)
if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  #入力したファイル名を変数に文字列型として代入
  file_name = gets.to_s
  
  puts "メモの内容を記入してください"
  puts "終了時には、Ctrl + Dを押してください"
  
  #STDIN.readで標準（キーボード）入力の複数文字列を取得し、変数に代入
  memo = STDIN.read
  memo_contents = memo.chomp

  #上記で入力したファイル名からCSVファイルとして、保存
  CSV.open("#{file_name}.csv","w") do |csv|
    #新規作成したcsvファイルに内容を出力?
    csv.puts ["#{memo_contents}"]
  end
  

elsif memo_type == 2
  puts "編集したいファイル名を拡張子を除いた状態で入力してください"
  #既存のファイル名(拡張子は除く)を取得
  choice_file_name = gets.to_s
  
  puts "追記したい内容を入力してください"
  puts "終わったら、Ctrl + Dを押してください"
  #標準入力モードで追記分を変数に代入
  add = STDIN.read
  add_contents = add.chomp
  
  #書き込みモードから、既存ファイルに追記分を追加する
  CSV.open("#{choice_file_name}.csv","a") do |csv|
    csv << ["#{add_contents}"]
  end
  
else
  puts "数字の１か２を押してください。"
  puts "再度リロードをしてください"
  
end




