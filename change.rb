$coinSet = [1, 2, 5, 10]
$possibleWays = []
$countOfCoins = []
def makeChange(amount, startCoinIdx, coinsSoFar)
  if (startCoinIdx == $coinSet.length)
    if(amount == 0)
      $possibleWays << coinsSoFar
      print coinsSoFar
    end
   return
  end
  count = 0
  while (count*$coinSet[startCoinIdx]) <= amount  do
   temp = []
   for i in 0...coinsSoFar.length
      temp << coinsSoFar[i]
   end


   for i in 0...count 
     temp << $coinSet[startCoinIdx]
   end
  makeChange(amount -(count*$coinSet[startCoinIdx]),startCoinIdx+1, temp);
  temp.clear
  count = count +1
  end
end
puts "enter your number"
number = gets.chomp 
makeChange(number.to_i, 0, $countOfCoins)