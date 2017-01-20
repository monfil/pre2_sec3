def family_members(h)
	r = []
	if h.has_key?(:sisters)
		r << h[:sisters]
		if h.has_key?(:brothers)
		r << h[:brothers]
		end
	end
	r.flatten
end

family = {  
  uncles: ["jorge", "samuel", "steve"],
  sisters: ["angelica", "mago", "julia"],
  brothers: ["polo","rob","david"],
  aunts: ["maria","minerva","susana"]
} 

#test
p family_members(family) == ["angelica", "mago", "julia", "polo", "rob", "david"] 