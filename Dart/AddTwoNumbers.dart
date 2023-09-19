void main() {
  ListNode l1 = listToLinkedList([9, 9, 9, 9, 9, 9, 9]);
  ListNode l2 = listToLinkedList([9, 9, 9, 9]);
  // ListNode l1 = listToLinkedList([2, 4, 3]);
  // ListNode l2 = listToLinkedList([5, 6, 4]);
  printLinkedList(l1);
  printLinkedList(l2);
  getSum(l1, l2);
}

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val);
}

ListNode listToLinkedList(List<int> list) {
  if (list.isEmpty) {
    return ListNode(0);
  }

  ListNode dummy = ListNode(0);
  ListNode current = dummy;

  for (int value in list) {
    current.next = ListNode(value);
    current = current.next!;
  }

  return dummy.next!;
}

void printLinkedList(ListNode head) {
  ListNode? current = head;
  String ll = "";
  while (current != null) {
    ll += (current.val.toString() + " ").toString();
    current = current.next;
  }
  print(ll);
}

void getSum(ListNode l1, ListNode l2) {
  int reminder = 0;
  String summationVal = "";

  ListNode? temp1 = l1;
  ListNode? temp2 = l2;

  int largestIndexedLL = findLargestIndexLinkedList(l1, l2);

  if (largestIndexedLL == 2) {
    temp1 = l2;
    temp2 = l1;
  } else {
    temp1 = l1;
    temp2 = l2;
  }

  while (temp1 != null) {
    int val1 = temp1.val;
    int val2 = temp2?.val ?? 0;
    int tempSum = val1 + val2;
    if (reminder != 0) {
      tempSum += reminder;
      reminder = 0;
    }
    if (tempSum > 9) {
      reminder = int.parse(tempSum.toString().substring(0, tempSum.toString().length - 1));
      tempSum = int.parse(tempSum.toString().substring(tempSum.toString().length - 1, tempSum.toString().length));
    }
    summationVal += tempSum.toString();
    temp1 = temp1.next;
    temp2 = temp2?.next;
    if (temp1 == null && reminder != 0) {
      summationVal += reminder.toString();
    }
  }
  print("Output: " + summationVal);
}

int findLargestIndexLinkedList(ListNode head1, ListNode head2) {
  int length1 = 0;
  int length2 = 0;

  ListNode? current1 = head1;
  while (current1 != null) {
    length1++;
    current1 = current1.next;
  }

  ListNode? current2 = head2;
  while (current2 != null) {
    length2++;
    current2 = current2.next;
  }

  if (length1 > length2) {
    return 1; // Linked list 1 is larger indexed
  } else if (length2 > length1) {
    return 2; // Linked list 2 is larger indexed
  } else {
    return 0; // Both linked lists have the same length
  }
}
