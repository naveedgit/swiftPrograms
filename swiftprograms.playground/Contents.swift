//function to find the minimum and maximum number in a given array

func minMax(arr:[Int])->(Int,Int)
{
    assert(arr != [])
    var (min,max)=(arr[0],arr[0])
    for num in arr{
        if min > num
        {
            min=num
            continue
        }
        if max<num
        {
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
func isPrime(num:Int) ->Bool
{
    let n=abs(num)
    if n>1
    {
        for var i=2;i<n;i++
        {
            if n%i==0
            {
                return false
            }
        }
    }
    else
    {
        return false
    }
    
    return true
    
}

assert(isPrime(1)==false)
assert(isPrime(7)==true)
assert(isPrime(10)==false)
assert(isPrime(0)==false)
assert(isPrime(-7)==true)
assert(isPrime(-9)==false)




//function to find gcd of given two numbers
func gcd(x:Int,_ y:Int)->Int
{
   if x==0
   {
    return abs(y)
   }
   if y==0
   {
    return abs(x)
   }
    
    for var i=abs(abs(x)<abs(y) ? x:y); i>=1; i--
     {
        if x%i==0 && y%i==0
        {
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

func indexOf(arr:[Int],_ num:Int)->Int?
{
    assert(arr != [])
    var index=0
    for n in arr
    {
        if n==num
        {
            return index
        }
        index++
    }
    return nil
}

assert(indexOf([1,2,3,4,5,6],1)==0)
assert(indexOf([1,2,3,4,5,6],6)==5)
assert(indexOf([1,2,3,4,5,6],3)==2)




//function to remove duplicates in a given sorted array
func removeDuplicates(arr:[Int]) ->[Int] {
    var unique=[Int]()
    if arr != []{
        unique.append(arr[0])
    }
    for var i=1;i<arr.count;i++ {
        if arr[i] != arr[i-1]{
            unique.append(arr[i])
        }
        
    }
    return unique
    
}

assert(removeDuplicates([])==[])
assert(removeDuplicates([1,2,2,3,3,4,4,4,5,6,6,6])==[1,2,3,4,5,6])




//function to find reverse of a given array
func reverseArray(var arr:[Int])->[Int]{
    let n=arr.count
    for var i=0; i<n/2; i++ {
        let temp=arr[i]
        arr[i]=arr[n-i-1]
        arr[n-i-1]=temp
    }
    return arr
}

assert(reverseArray([1,2,3,56,43,12])==[12,43,56,3,2,1])
assert(reverseArray([])==[])
assert(reverseArray([1])==[1])
assert(reverseArray([1,2])==[2,1])
assert(reverseArray([1,2,3])==[3,2,1])
