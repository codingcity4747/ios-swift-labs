import UIKit
//data to test functions
var num1:Int = 10 ; var num2:Int = 20 ; var arrOfnum:[Int]=[4,3,2,1]

//getMinMax assign
func  getMinAndMax (array:Array<Int>)->(maxElement: Int,minElement:Int){
    var min:Int=array[0];var max:Int=array[0]
    for index in array {
        if index>max {
            max = index;
        }else if index<min{
            min = index;
        }
    }
    return (max,min)
}
var result = getMinAndMax(array: arrOfnum)
print("*****get min max assign *****")
print(arrOfnum)
print("Max: \(result.maxElement)")
print("Min: \(result.minElement)")


//Swap two numbers assign
func swap(num1: inout Int , num2:inout Int){
    let temp = num1
    num1 = num2
    num2 = temp
}
print("\n\n***** swap assign *****")
print("before swaping num1   \(num1)  num2  \(num2)")
swap(&num1, &num2)
print("after swaping num1  \(num1)  num2  \(num2)")


//Factorial Loop
func factorial(num:Int)->Int{
    var fact:Int = 1
    for index in 1...num{
        fact*=index
    }
    return fact
}
print("\n\nLoop Factorial : \(factorial(num: 5))")

//Factorial Recursion
func factorialRec (num:Int)->Int{
    if num == 0{
        return 1
    }else{
        return (num * factorial(num: num - 1))
    }
}
print("Recursive Factorial : \(factorialRec(num: 5))")

//power function With Recursion
func powRec (Base base:Int,Exponential exp:Int)->Int{
    if(exp==0){
        return 1
    }
    return base * powRec(Base:base, Exponential:exp-1)
}

print("\n\nRecursive Power \(powRec(Base:5, Exponential:3))")

//power fucntion with loop
func powLoop (Baee base:Int,Exponential exp:Int)->Int{
    var result = 0
    for index in 1...exp{
        result += base*exp
    }
    return result
}
print("Loop Power \(powLoop(Baee: 5, Exponential: 3))")


//sorting array
func sortArray(_ array:inout[Int]){
    
    for outer in array.indices{
        for inner in array.indices{
            if outer>inner{
                array.swapAt(outer, inner)
            }
        }
    }
}
print("\n\n*** Before Soring ***")
print(arrOfnum)
sortArray(&arrOfnum)
print("*** After Soring ***")
print(arrOfnum)
