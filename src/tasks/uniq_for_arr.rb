puts ->(arr) { arr | [].each { |str| puts str } }.call(%w[a b c a a b b b c c c c d])
