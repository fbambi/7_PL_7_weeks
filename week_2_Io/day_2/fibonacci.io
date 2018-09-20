"Please Input a Fibonacci Number: " println
n := File standardInput readLine asNumber

fibonacci_recursive := method(n, 
  if(n <= 2, 
    1,
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))
)

fibonacci_loop := method(n, big := 1; small := 1; 
  for(i, 3, n, 
    big = big + small; small = big - small); 
  big
)

fibonacci_recursive(n) println
fibonacci_loop(n) println
