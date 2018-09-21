originalDiv := Number getSlot("/")

Number / := method(i,
  if(i == 0, 0, self originalDiv(i))
)

shouldZero := 6/0
shouldNum := 6/3

"=======" println
shouldZero println
shouldNum println