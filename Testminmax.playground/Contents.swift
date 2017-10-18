//: Playground - noun: a place where people can play

import UIKit

// test arrays
var array:[Double]  = [4,5,3]
var array2:[Double] = [4,1,3,2,1,21,22]
var array3:[Double]?

//array is [Double] and contains 3 and more elements
//return  (false) if array not defined
//return  (false) if array have <3 numbers


// return TRUE if quantity of local minima is more than the quantity of local maxima
// else return FALSE
 private func minmax(data:[Double]?)->(Bool)
{
    var nMinimal=0
    var nMaximal=0
    
    if let tmpData=data {
        if (tmpData.count < 3){
            return false
        }
    
        for index in 1...tmpData.count-2{
            if tmpData[index]<tmpData[index+1]&&tmpData[index]<tmpData[index-1] {
              nMinimal += 1
            }
            if tmpData[index]>tmpData[index+1]&&tmpData[index]>tmpData[index-1] {
                nMaximal += 1
            }
        }
    
        return (nMinimal>nMaximal)
    } else {
       return (false)
    }
}





print ("Result of array 1: \(array) \(minmax(data: array))")

print ("Result of array 2: \(array2) \(minmax(data: array2))")

print ("Result of array 3: \(String(describing: array3)) \(minmax(data: array3))")


