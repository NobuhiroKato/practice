def shortest_dist(str, t)
  d, ret = 1, []
  i = str =~ Regexp.new("#{t}")
  while c = str[i]
    d = 0 if c == t
    ret[i] = d
    d += 1; i += 1
  end
  d = 1
  i = str =~ Regexp.new("#{t}[^#{t}]*$")
  while i >= 0
    d = 0 if str[i] == t
    ret[i] = d if ret[i].nil? || (ret[i] > d)
    d += 1; i -= 1
  end
  ret.inspect
end
puts shortest_dist 'helloworld', 'l'
