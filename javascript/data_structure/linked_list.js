class LinkedList{
    constructor(){
        this.head = null;
        this.size = 0;
    }
    
    //Add node at the end of the list
    append(val){
        const newNode  = new Node(val)
        if(!this.head){
            this.head = newNode;
        }else{
            let current  = this.head
            while(current.next){
                current = current.next
            }
            current.next = newNode;
        }
        this.size++;
    }
    print(){
        let current = this.head
        while(current){
            console.log(current.val);
            current = current.next
        }
    }
    prepend(val){
        const newNode = new Node(val);
        newNode.next = this.head
        this.head = newNode;
        this.size++;
    }
    removeFromHead(){
        if(this.head) this.head = this.head.next;
        if (this.head === null) this.tail = null;
    }
}

class Node{
    constructor(val){
        this.val = val;
        this.next = null
    }
}
let list = new LinkedList()
list.append(23)
list.append(78)
list.append(12)
list.prepend(11)
list.removeFromHead()
list.print()