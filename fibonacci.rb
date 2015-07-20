def fibs(n)
	a = 0
	b = 1
	c = a + b

	return a if n == 1
	return b if n == 2

	(3..n).each do
		c = a + b
		a = b
		b = c
	end
	c
end

def fibs_rec(n)
	return 0 if n == 1
	return 1 if n == 2
	fibs_rec(n - 1) + fibs_rec(n - 2)
end

puts fibs(14)
puts fibs_rec(14)