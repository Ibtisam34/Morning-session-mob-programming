def calculate_bonus(days_worked)
  return 0 if days_worked <= 0
  if days_worked <= 32
    0
  elsif days_worked <= 40
    (days_worked - 32) * 12
  elsif days_worked <= 48
    336 + ((days_worked - 40) * 15)
  else
    636 + ((days_worked - 48) * 20)
  end
end
