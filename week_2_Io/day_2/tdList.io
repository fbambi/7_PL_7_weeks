TdList := Object clone

TdList init := method(
  self l := list()
  return (self)
) 

TdList dim := method(x, y,
  l setSize(y)
  self l = l map(item, 
    l := list()
    l setSize(x)
    l
  )
  self l
)

TdList set := method(x, y, value,
  yItem := l at(y)
  yItem atPut(x, value)
)

TdList get := method(x, y,
  yItem := l at(y)
  yItem at(x)
)


l := TdList clone 
l println

l dim(3, 6)
l println

l set(0, 1, "123")
l println

l get(0, 1) println