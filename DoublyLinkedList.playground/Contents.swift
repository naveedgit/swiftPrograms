class Node{
    var previous:Node?
    var value:Int?
    var next:Node?
}

class DoublyLinkedList {
 var head:Node?
 var tail:Node?
 var temp:Node?
 var count=0
 func addAtFirst(value:Int){
    if count==0 {
        head=Node()
        tail=head
        head!.value=value
        count += 1
    }
    else{
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
    temp=head
    print(".......DoublylinkList.......")
    if count>=1{
     for _ in 1...count {
     print(temp!.value)
     temp=temp!.next
    }
  }
 }
 func reverseList(){
    temp=tail
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
