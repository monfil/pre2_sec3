def join_hash(h1, h2, h3)
	hn = h1.merge(h2)
	hm = hn.merge(h3)
end
fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 
