module Media
  class Media
    def initialize s, h
      @judul = s
      @harga = h
    end
    
    def display
    end
  end
end

module Koleksi
  class Buku < Media::Media
    def initialize s, h, hal
	  super s, h
      @halaman = hal
    end
    
    def display
      puts "Judul : "+@judul
      puts "Halaman : "+@halaman.to_s
      puts "Harga : "+@harga.to_s
    end
  end
  
  class Kaset < Media::Media
    def initialize s, h, d
      super s, h
	  @durasi = d
    end
    
    def display
      puts "Judul : "+@judul
      puts "Durasi : "+@durasi.to_s
      puts "Harga : "+@harga.to_s
    end
  end
end

module Main
  def running
    bukuku = Koleksi::Buku.new "Objek Oriented Programming", 55000, 224
    bukuku.display
    kasetku = Koleksi::Kaset.new "Belajar dasar-dasar OOP", 15000, 2
    mediaku=Array.new
	mediaku[0] = bukuku
    mediaku[1] = kasetku
    puts "Daftar Barang:"
    mediaku[0].display
    mediaku[1].display
  end
  
  module_function :running

end

Main.running
gets
