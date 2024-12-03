
void main(){
  LikedList likedList = LikedList();
  likedList.add(data: 10);
  likedList.add(data: 20);
  likedList.add(data: 30);
  likedList.addAtStart(data: 100);
  likedList.show();
}


class Node {
  int? data;
  Node? next;
  Node({required this.data});
}

class LikedList{
  Node? head;

  addAtStart({required int data}){
    Node newNode = Node(data: data);
    if(head == null){
      head = newNode;
    }else{
      newNode.next = head;
      head = newNode;
    }
  }

  //   void delete({required int data}) {
//
//     if(head==null){
//       print("empty list");
//       return;
//     }
//
//     if(head!.data==data){
//       head = head!.next;
//     }
//
//     Node? current = head;
//     Node? previous;
//
//     while(current != null && current!.data != data){
//       previous = current;
//       current = current.next;
//     }
//
//     previous!.next = current!.next;
//
//
//   }

  add({required int data}){
    Node newNode = Node(data: data);
    if(head==null){
      head = newNode;
    }else{
      Node? current = head;
      while(current!.next != null){
        current = current.next;
      }
      current.next = newNode;
    }
  }



  show(){
    Node? current = head;
    while(current != null){
      print(current.data);
      current = current.next;
    }
  }

}



// void main(){
//   LikedList likedList = LikedList();
//   likedList.addAtEnd(data: 10);
//   likedList.addAtEnd(data: 20);
//   likedList.addAtEnd(data: 30);
//   // likedList.show();
//   likedList.delete(data: 20);
//   likedList.show();
// }
//
// class Node {
//   Node? next;
//   int data;
//
//   Node({required this.data});
// }
//
// class LikedList{
//   Node? head;
//
//   addAtStart({required int data}){
//     Node newNode = Node(data: data);
//     newNode.next = head;
//     head = newNode;
//   }
//
//   void delete({required int data}) {
//
//     if(head==null){
//       print("empty list");
//       return;
//     }
//
//     if(head!.data==data){
//       head = head!.next;
//     }
//
//     Node? current = head;
//     Node? previous;
//
//     while(current != null && current!.data != data){
//       previous = current;
//       current = current.next;
//     }
//
//     previous!.next = current!.next;
//
//
//   }
//
//   addAtEnd({required int data}){
//     Node newNode = Node(data: data);
//     if(head==null){
//       head = newNode;
//     }else{
//       Node? current = head;
//       while(current!.next!=null){
//         current=current.next;
//       }
//       current.next = newNode;
//     }
//   }
//
//   show(){
//     Node? current = head;
//     while(current!= null){
//       print(current.data);
//       current = current.next;
//     }
//   }
//
// }