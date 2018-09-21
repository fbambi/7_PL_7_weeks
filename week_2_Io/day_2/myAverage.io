List myAverage := method(l, 
  sum := self reduce(sum, num,
    if(num type != "Number", Exception raise("not a number"), sum + num, 0));
  size := self size
  if(size == 0, 0, sum/size)
)

normalList := list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
emptyList := list()
errorList := list(1, 2, "error", 3)

normalList myAverage() println
emptyList myAverage() println 
errorList myAverage() println