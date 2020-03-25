def shortest_distance(s, c)
  s_array = s.chars

  s_array.each_with_index  do |_si, i|
    hit_pos = 0
    pos = s_array.each_with_index do |_sj, j|
      j if _sj == c
    end

    p pos
  end
end

s = 'helloworld'
c = 'l'

shortest_distance(s, c)
