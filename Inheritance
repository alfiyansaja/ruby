class Teller_bank
  def initialize teller
     @nama  = teller
   end
end

class Pegawai < Teller_bank
  def initialize teller
       @nama  = teller
  end
  
  def display
    puts "Teller dengan nama      : "+@nama
  end
end
  
class Pembayaran < Teller_bank
  def initialize teller, konsum, uang
    super teller
    @orang, @jumlah = konsum, uang
  end
  
  def display
    puts "-------------------------------"
    puts "Melayani.."
    puts "Konsumen dengan nama    : "+@orang
    puts "Nominal uang            : "+@jumlah.to_s
  end
  
  def delete(del)
    if del==@orang
      $ketemu=1
    else
      $ketemu=0
    end
  end
end
  
arrTell=Array.new
arrKons=Array.new
size=0
kembali="y"
while kembali.downcase == "y"
  puts "--------->>  MENU  <<----------"
  puts "|1.Insert\n|2.View\n|3.Delete\n|4.exit"
  puts ">-----------------------------<"
  print "Masukkan pilihan menu: "
  menu=gets.to_i
  case menu
  when 1
    print "Berapa banyak yang input: "
    masuk=gets.to_i
    for i in 0...masuk
      size+=1
      print "Nama Teller   : ";teller=gets.chomp
      arrTell[i]=Pegawai.new(teller)
      print "Nama Konsumer : ";konsum=gets.chomp
      print "Nominal uang  : ";uang=gets.to_i
      arrKons[i]=Pembayaran.new(teller,konsum,uang)
      puts "-------------------------------"
    end
  when 2
    if size==0
      puts "--------->>  VIEW  <<----------"
      puts "Data masih kosong!"
    else
      puts "--------->>  VIEW  <<----------"
      for i in 0...(arrTell.size)
        arrTell[i].display
        arrKons[i].display
        puts "-------------------------------"
      end
    end
  when 3
    puts "-------->>  DELETE  <<---------"
    if size==0
      puts "Data masih kosong!"
    else
      print "Nama konsumer yang didelete : "
      del=gets.chomp
      for i in 0...(arrKons.size)
        arrKons[i].delete(del)
        if $ketemu==1
          arrTell.delete_at(i)
          arrKons.delete_at(i)
          ketemu=1
          size-=1
          break
        else
          ketemu=0
        end
      end
      puts "Data tidak ada!" if ketemu==0
    end
  when 4
    kembali="t"
  else
    puts "Menu anda tidak valid!"
  end
end
