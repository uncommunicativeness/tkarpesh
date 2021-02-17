def sex(red, green, step)
  return red + green if step.zero?

  sex(green, red + green, step - 1)
end

puts sex(5, 0, 10)
