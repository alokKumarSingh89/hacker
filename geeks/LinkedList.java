class LinkedList{
	Node head = null;
	public LinkedList(int data){
		head = new Node(data);
	}
	public static void main(String[] args) {
		LinkedList ll = new LinkedList(4);
		int arr[] = {3,4,5,6,7,8,1,10};
		ll.insertNodeInList(arr);
		ll.displayList();
		ll.displayListInRever(ll.head);
	}

	public void insertNodeInList(int arr[]){
		Node temp = head;
		for (int num : arr ) {
			Node node = new Node(num);
            temp.next = node;
            temp = node;
        }
	}

	public  void displayList(){
		Node temp = head;

		while(temp != null){
			System.out.print(temp.data+"->");
			temp = temp.next;
		}
		System.out.println();
	}

	public void displayListInRever(Node temp){
		if (temp == null) {
			return ;
		}
		displayListInRever(temp.next);
		System.out.println(temp.data);
	}
}