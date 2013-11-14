data=[]
print"Banyak data : "
banyak=gets.to_i
for i in 1..banyak
  print"DATA KE #{i} : "
  data[i]=gets.to_i
end

for i in 1..banyak
  for j in i..banyak
    if data[i]>data[j]
      tmp=data[i]
      data[i]=data[j]
      data[j]=tmp
    end
  end
end

puts data
