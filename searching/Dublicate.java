import java.util.*;
class Dublicate {
	public static void main(String[] args) {
		int arr[] = {3,2,1,2,2,3};

		Dublicate db = new Dublicate();

		db.checkDublicateBruteForce(arr);
		db.checkDublicateBruteForceSort(arr);
		db.checkDublicateHashTable(arr);
	}

	public void checkDublicateBruteForce(int arr[]){
		System.out.println("First Type");
		int i , j;
		int length = arr.length;
		for (i=0;i<length; i++) {
			for (j=i+1;j<length ;j++ ) {
				if (arr[i]==arr[j]) {
					System.out.println("Doblicate: "+arr[i]);
					return;
				}
			}
		}
		System.out.println("No Dublicate");
		return;
	}

	public void checkDublicateBruteForceSort(int arr[]){
		System.out.println("SECON Type");
		
		for (int i=0;i< arr.length-1 ;i++ ) {
			if (arr[i] == arr[i+1]) {
				System.out.println("Dublicate Found: "+arr[i]);
				return;
			}
		}
		System.out.println("Dublicate Not Found");
		return;

	}

	public void checkDublicateHashTable(int arr[]){
		System.out.println("Third Type");
		Hashtable<Integer, Integer> table = new Hashtable<Integer, Integer>();

		for (int item : arr) {
		 	Integer value = (Integer)table.get(item);
		 	
		 	if (value == null) {
		 		table.put(item, 1);
		 	}else{
		 		table.put(item, value+1);
		 		System.out.println("Dublicate exits: "+item);
		 		break;
		 	}
		 } 
	}
}