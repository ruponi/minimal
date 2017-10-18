//: Playground - noun: a place where people can play

import UIKit

// test arrays
var array:[Double]  = [4,5,3]
var array2:[Double] = [4,1,3,2,1,23,24,26,33,34,23,34]
var array3:[Double]?


//array is [Double] and contains 3 and more elements
//return  (false) if array not defined
// return TRUE if quantity of local minima is more than the quantity of local maxima
// else return FALSE
public func minmax(data:[Double]?)->(Bool){
     var nMax=0
     var nMin=0
    if let tmparr=data {
     localMaximas(a: tmparr,low: 0,high: tmparr.count-1,maxNumber: &nMax)
     localMinimas(a: tmparr,low: 0,high: tmparr.count-1,minNumber: &nMin)
    print("Number Mins:\(nMin)")
    print("Number Maxs:\(nMax)")
     return nMax<nMin
    } else {
        return false;
    }
}


 func localMinimas(a:[Double],low:NSInteger, high:NSInteger, minNumber: inout NSInteger)->NSInteger {
    let mid:NSInteger = (low+high)/2;
    if(high-low > 3) {     // more than 4 items in currently  divided array
        if(isMinima(a: a,mid: mid)) {
           
            minNumber += 1
        }
        localMinimas(a: a,low: low, high: mid,minNumber: &minNumber);
        localMinimas(a: a,low: mid, high: high,minNumber:&minNumber);
    }
    else if(high-low == 3){ //exactly 4 items in currently  divided array
        localMinimas(a: a,low: low, high: mid+1,minNumber: &minNumber)
        localMinimas(a: a,low: mid, high: high,minNumber: &minNumber)
    }
    else if((high-low == 2) && (isMinima(a: a,mid: low+1))) {
        minNumber += 1
       
    }
    return 0;
}

 func localMaximas(a:[Double],low:NSInteger, high:NSInteger, maxNumber: inout NSInteger)->NSInteger {
    let mid:NSInteger = (low+high)/2;
    if(high-low > 3) {     // more than 4 items in currently  divided array
        if(isMaxima(a: a,mid: mid)) {
            maxNumber += 1
        }
        localMaximas(a: a,low: low, high: mid,maxNumber: &maxNumber);
        localMaximas(a: a,low: mid, high: high,maxNumber:&maxNumber);
    }
    else if(high-low == 3){ //exactly 4 items in currently  divided array
        localMaximas(a: a,low: low, high: mid+1,maxNumber: &maxNumber)
        localMaximas(a: a,low: mid, high: high,maxNumber: &maxNumber)
    }
    else if((high-low == 2) && (isMaxima(a: a,mid: low+1))) {
        maxNumber += 1
        
    }
    return 0;
}

 func maxof(a:[Double], i:NSInteger, j:NSInteger)->NSInteger {
    if(a[i] < a[j]) {
        return j
    }
    else {
        return i
    }
}

 func isMaxima(a:[Double] ,mid:NSInteger)->Bool {
    if(mid == 0) {
        if(maxof(a: a, i: mid, j: mid+1) == mid) {
            return true;
        }
        else {
            return false;
        }
    }
    else if(mid==a.count-1) {
        if(maxof(a: a,i: mid,j: mid-1) == mid) {
            return true;
        }
        else {
            return false;
        }
    }
    else {
        if((maxof(a: a, i: mid, j: mid+1) == mid) && (maxof(a: a, i: mid, j: mid-1) == mid)) {
            return true;
        }
        else {
            return false;
        }
    }
}


 func minof(a:[Double], i:NSInteger, j:NSInteger)->NSInteger {
    if(a[i] > a[j]) {
        return j
    }
    else {
        return i
    }
}

 func isMinima(a:[Double] ,mid:NSInteger)->Bool {
    if(mid == 0) {
        if(maxof(a: a, i: mid, j: mid+1) == mid) {
            return true;
        }
        else {
            return false;
        }
    }
    else if(mid==a.count-1) {
        if(minof(a: a,i: mid,j: mid-1) == mid) {
            return true;
        }
        else {
            return false;
        }
    }
    else {
        if((minof(a: a, i: mid, j: mid+1) == mid) && (minof(a: a, i: mid, j: mid-1) == mid)) {
            return true;
        }
        else {
            return false;
        }
    }
}



print ("Result of array 2: \(String(describing: array2)) \(minmax(data: array2))")

//result============================================
//Number Mins:3
//Number Maxs:2
//Result of array 2: [4.0, 1.0, 3.0, 2.0, 1.0, 23.0, 24.0, 26.0, 33.0, 34.0, 23,34.0] true

