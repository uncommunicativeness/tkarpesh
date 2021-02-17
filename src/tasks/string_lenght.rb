puts ->(x) { x.each { |str| return true if str.length > 20 } }
  .call(%w[a bb ccc dddddddddddddddddddddddddddddddd])
