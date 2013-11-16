### data type ###
# ada banyak type data dalam bahasa pemrograman
# dalam ruby ada 4 (1. string, 2. integer, 3. float, 4. array)

int_angka = 123                          # ini type data integer
f_angka = 1.23                           # ini type data float / desimal
str_kata = "ini String"                  # ini type data string
arr_arrayku = [123, "mini cooper", 4.5]  # ini type data array, dibahas dilain waktu :)

#coba cek apakah benar type datanya?

if int_angka.is_a? Integer
  print int_angka, " adalah Integer!"
else
  print int_angka, " bukan Integer loh!"
end

# jika int_angka adalah integer maka akan tampil nilai variabel int_angka adalah integer!
# coba ganti int_angka pada percabangan if dengan variabel yang lain
