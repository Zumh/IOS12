/*
 Calculating Fibonnaci sequence
 
 */

import UIKit

func fibonnaci(until max: Int){
    var numb1:Int = 0
    var numb2:Int = 1
    
    print (0)
    print(1)
    
    for _ in 0...max {
        let num = numb1 + numb2
        print(num)
        numb1 = numb2
        numb2 = num
        
    }
}

fibonnaci(until: 20)


let array = [1,2,3,4,5,6,7]
var sum:Int = 0
// This is "in" for loop
for number in array{
     sum += number

}

print ("Dog age \(sum)")

var number:Int = 0
for number in 1..<10 where number%2 == 0{
    print(number)
}




