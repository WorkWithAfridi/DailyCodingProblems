// Create a linked list
class ListNode {
  int data;
  ListNode? next;

  ListNode(this.data);
}

// Insert a Listnode at the beginning of the linked list
void insertAtBeginning(ListNode head, int data) {
  ListNode newListNode = ListNode(data);
  newListNode.next = head;
  head = newListNode;
}

// Insert a Listnode at the end of the linked list
void insertAtEnd(ListNode head, int data) {
  ListNode newListNode = ListNode(data);
  ListNode current = head;
  while (current.next != null) {
    current = current.next!;
  }
  current.next = newListNode;
}

void insertAfterListNode(ListNode prevListNode, int data) {
  ListNode newListNode = ListNode(data);
  newListNode.next = prevListNode.next;
  prevListNode.next = newListNode;
}

// Display the linked list
void displayList(ListNode head) {
  ListNode? current = head;
  String myList = "";
  while (current != null) {
    myList += "${current.data} -> ";
    current = current.next;
  }

  print(myList + "null");
}

// Temp list
ListNode createTempList() {
  ListNode head = ListNode(1);
  insertAtEnd(head, 2);
  insertAtEnd(head, 3);
  insertAtEnd(head, 4);
  insertAtEnd(head, 5);
  insertAtEnd(head, 6);
  insertAtEnd(head, 7);

  insertAtBeginning(head, 0);
  return head;
}

ListNode? reverseList(ListNode? head) {
  if (head == null) return head;
  ListNode? prev = null;
  ListNode? current = head;
  ListNode? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev!;
}

main() {
  ListNode head = createTempList();
  displayList(head);
}
