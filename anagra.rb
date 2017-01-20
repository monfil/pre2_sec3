def anagrams(w)
	r = []
	s = []
	v = []
	c = 0
	w.each {|e| v << e.clone}

	v.each do |i| 
		v[c] = i.chars.sort.join(",").delete(",")
		c += 1
	end
	v.uniq!
	v.each	do |e|
		w.each do |x|
			if x.chars.sort == e.chars.sort
				r << x
			end
		end
		s << r
		r = []
	end
	s
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#test
p anagrams(words) == [["demo", "dome", "mode"], ["none", "neon"], 
["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], 
["fowl", "wolf", "flow"]]