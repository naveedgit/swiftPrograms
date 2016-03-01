//function to find the minimum and maximum number in a given array

func minMax(arr:[Int])->(Int,Int) {
    assert(arr != [])
    var (min,max)=(arr[0],arr[0])
    for num in arr {
        if min > num {
            min=num
        }
        else if max<num {
            max=num
        }
    }
    return (min,max)
}

var minmax=minMax([1,2,3,4,5,6])
assert(minmax.0==1)
assert(minmax.1==6)
//minMax([])
minmax=minMax([7,6,2,4,1])
assert(minmax.0==1)
assert(minmax.1==7)
minmax=minMax([6,8,3,2,1,0,9])
assert(minmax.0==0)
assert(minmax.1==9)
minmax=minMax([0,6,8,3,2,9,2,3])
assert(minmax.0==0)
assert(minmax.1==9)
minmax=minMax([6,8,3,2,9,1,0])
assert(minmax.0==0)
assert(minmax.1==9)
minmax=minMax([8,8])
assert(minmax.0==8)
assert(minmax.1==8)




//function to find weather the given number is prime or not
func isPrime(num:Int) ->Bool{
   assert(num>=1)
    if num<=1{
        return false
    }
 
        for i in 2..<num {
            if num%i==0 {
                return false
            }
        }
    return true
    
}

assert(isPrime(1)==false)
assert(isPrime(7)==true)
assert(isPrime(10)==false)





//function to find gcd of given two numbers
func gcd(x:Int,_ y:Int)->Int
{
   if x==0 {
    return abs(y)
   }
   if y==0 {
    return abs(x)
   }
    
    for var i=abs(abs(x)<abs(y) ? x:y); i>=1; i-- {
        if x%i==0 && y%i==0 {
            return i;
        }
     }
    
    return 0
}

assert(gcd(27,3 )==3)
//assert(gcd(abs(-9),27)==9)
assert(gcd(-9,27)==9)
assert(gcd(0,100)==100)
assert(gcd(100,0)==100)
assert(gcd(-9,0)==9)




//function to find index of an element

func indexOf(arr:[Int],_ num:Int)->Int? {
    assert(arr != [])
    for n in 0..<arr.count {
        if arr[n]==num {
            return n
        }
    }
    return nil
}

assert(indexOf([1,2,3,4,5,6],1)==0)
assert(indexOf([1,2,3,4,5,6],6)==5)
assert(indexOf([1,2,3,4,5,6],3)==2)
assert(indexOf([1,7,6,4],0)==nil)
//indexOf([],9)



//function to remove duplicates in a given sorted array
func removeDuplicates(arr:[Int]) ->[Int] {
    var unique=[Int]()
    if arr != [] {
        unique.append(arr[0])
     for i in 1..<arr.count {
        if arr[i] != arr[i-1] {
            unique.append(arr[i])
        }
     }
    }
    return unique
    
}

assert(removeDuplicates([])==[])
assert(removeDuplicates([1,2,2,3,3,4,4,4,5,6,6,6])==[1,2,3,4,5,6])




//function to find reverse of a given array
func reverseArray(var arr:[Int])->[Int] {
    for i in 0..<arr.count/2 {
        let temp=arr[i]
        arr[i]=arr[arr.count-i-1]
        arr[arr.count-i-1]=temp
    }
    return arr
}

assert(reverseArray([1,2,3,56,43,12])==[12,43,56,3,2,1])
assert(reverseArray([])==[])
assert(reverseArray([1])==[1])
assert(reverseArray([1,2])==[2,1])
assert(reverseArray([1,2,3])==[3,2,1])



//creating a Point structure with moveBy and distanceTo method

import Foundation
struct Point {
    var x=0.0, y=0.0
    mutating  func moveBy(anotherPoint:Point)->Point {
        return Point(x:anotherPoint.x,y:anotherPoint.y)
    }
    mutating func  distanceTo(anotherPoint:Point)->Double{
        return sqrt(pow((anotherPoint.x-somePoint.x),2) + pow((anotherPoint.y-somePoint.y),2))
        
    }
}
var somePoint = Point(x:1.0,y:1.0)
var anotherPoint=Point(x:3,y:4)
assert(somePoint.distanceTo(anotherPoint)==3.605551275463989)
somePoint.moveBy(anotherPoint)



//creating Rational structure with add, subtract, multiply, divide and compareTo methods in  it

struct Rational{
    var numerator = 0,denominator = 0
    init(){
        self.numerator = 0
    }
    init(numerator:Int){
        self.numerator = numerator
        self.denominator = 1
    }
    init(var numerator:Int,var denominator:Int) {
        let divisor=gcd(numerator,denominator)
        numerator /= divisor
        denominator /= divisor
        self.numerator=numerator
        self.denominator=denominator
    }
    //addition function
    func add(num2:Rational)->Rational{
        return Rational(numerator : (num1.numerator * num2.denominator) + (num2.numerator * num1.denominator) , denominator : (num1.denominator * num2.denominator) )
    }
    //subtract function
    func subtract(num2:Rational)->Rational{
        return Rational(numerator:(num1.numerator * num2.denominator) - (num2.numerator * num1.denominator) , denominator:(num1.denominator * num2.denominator))
    }
    //division function
    func division(num2:Rational)->Rational{
        return Rational(numerator: (num1.numerator*num2.denominator) , denominator:(num1.denominator*num2.numerator) )
    }
    //multiplication function
    func multiply(num2:Rational)->Rational{
        return Rational(numerator:(num1.numerator*num2.numerator) , denominator:(num1.denominator*num2.denominator))
    }
    //comparing function
    func compareTo(num2:Rational)->Int{
        
        if num1.numerator/num1.denominator > num2.numerator/num2.denominator {
            return 1
        }
        if num1.numerator/num1.denominator < num2.numerator/num2.denominator{
            return -1
        }
        return 0
        
    }
}

var num1=Rational(numerator:-9,denominator:5)
var num2=Rational(numerator:2,denominator:5)
print(num1.add(num2))
print(num1.subtract(num2)) //but with this instruction a error is arrasing named with stack over flow or under flow)
print(num1.division(num2))
print(num1.multiply(num2))
print(num1.compareTo(num2))




//doubly linked list
class Node{
    var previous:Node?
    var value:Int?
    var next:Node?
}

class DoublyLinkedList {
    var head:Node?
    var tail:Node?
    var count=0
    func addAtFirst(value:Int){
        if count==0 {
            head=Node()
            tail=head
            head!.value=value
            count += 1
        }
        else{
            var temp:Node?
            temp=Node()
            temp!.value=value
            temp!.next=head
            head!.previous=temp
            head=temp
            count += 1
        }
    }
    func addAtLast(value:Int){
        if count==0 {
            addAtFirst(value)
        }
        else{
            var temp:Node?
            temp=Node()
            temp!.value=value
            tail!.next=temp
            temp!.previous=tail
            tail=temp
            count += 1
        }
    }
    func insertAt(index:Int,_ value:Int){
        assert(index>=1 && index<=count+1)
        var temp:Node?
        if index==1
        {
            addAtFirst(value)
        }
        else if index==count+1{
            addAtLast(value)
        }
        else if count != 0{
            temp=Node()
            temp!.value=value
            var temp1:Node?
            var temp2:Node?
            temp2=head
            for _ in 1..<index{
                temp2 = temp2!.next
            }
            temp1=temp2!.previous
            temp!.previous=temp1
            temp!.next=temp2
            temp1!.next=temp
            temp2!.previous=temp
            count += 1
        }
    }
    func removeAtFirst(){
        assert(count != 0)
        head=head!.next
        head!.previous=nil
        count -= 1
        
    }
    func removeAtLast(){
        assert(count != 0)
        tail=tail!.previous
        tail!.next=nil
        count -= 1
    }
    func removeAtIndex(index:Int){
        assert(index >= 1 && index <= count)
        var temp:Node?
        if index==1{
            removeAtFirst()
        }
        else if index==count{
            removeAtLast()
        }
        else if count != 0 && index <= count{
            var temp1,temp2:Node?
            temp=head
            for _ in 1..<index{
                temp = temp!.next
            }
            temp1=temp!.previous
            temp2=temp!.next
            temp1!.next=temp2
            temp2!.previous=temp1
            count -= 1
        }
    }
    func display(){
        print(".......DoublylinkList.......")
        if count>=1{
            var temp=head
            for _ in 1...count {
                print(temp!.value)
                temp=temp!.next
            }
        }
    }
    func reverseList(){
        var temp=tail
        var n=count
        print(".......ReverseOfDoublyLinkedList.......")
        while(n != 0){
            print(temp!.value)
            temp=temp!.previous
            n -= 1
        }
    }
}
var obj=DoublyLinkedList()
obj.addAtFirst(2)
obj.addAtFirst(1)
obj.addAtLast(3)
obj.addAtLast(4)
obj.insertAt(5, 5)
obj.insertAt(1, 0)
obj.display()
obj.removeAtLast()
obj.display()
obj.removeAtIndex(1)
obj.display()
obj.removeAtIndex(4)
obj.display()
obj.reverseList()

