//: Playground - noun: a place where people can play

import UIKit

// test arrays
var array:[Double] = [4,5,3]
var array2:[Double] = [4,1,3,6,3,45,22,34,123,6,5,44,342]
var array3:[Double]?

//array is [Double] and contains 3 and more elements
//returns (0,0) if array not defined
//return  (0,0) if array have <3 numbers
 private func minmax(data:[Double]?)->(min:NSInteger,max:NSInteger){
   var  nMinimal=0
   var  nMaximal=0
    
    if let tmpData=data {
        if (tmpData.count < 3){
            return (0,0)
    }
    
    for index in 1...tmpData.count-2{
        if tmpData[index]<tmpData[index+1]&&tmpData[index]<tmpData[index-1] {
            nMinimal += 1
        }
        if tmpData[index]>tmpData[index+1]&&tmpData[index]>tmpData[index-1] {
            nMaximal += 1
        }
    }
    
        return (nMinimal,nMaximal)
    } else {
       return (0,0)
    }
}





print ("Result of array 1: \(array) \(minmax(data: array))")
//Result of array 1: [4.0, 5.0, 3.0]
//(min: 0, max: 1)
print ("Result of array 2: \(array2) \(minmax(data: array2))")
//Result of array 2: [4.0, 1.0, 3.0, 6.0, 3.0, 45.0, 22.0, 34.0, 123.0, 6.0, 5.0, 44.0, 342.0]
//(min: 4, max: 3)
print ("Result of array 3: \(String(describing: array3)) \(minmax(data: array3))")
//nil (min: 0, max: 0)
