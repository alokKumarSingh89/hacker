import java.util.*;
class Solution{
	public static void printNumber(String[] arr, int siz){
		int sum=(Integer.parseInt(arr[0])+Integer.parseInt(arr[arr.length-1]))*siz/2;
		int sum2=0;
		for (int i=0;i<arr.length ;i++ ) {
			sum2+=Integer.parseInt(arr[i]);
		}
		int num=sum-sum2;
		System.out.println(num);
	}
	public static void main(String[] args) {
		 Scanner sc=new Scanner(System.in);
		int test=sc.nextInt();
		int arr[]=new int[test];
		sc.nextLine();
		String str[]=sc.nextLine().split(" ");
		//System.out.println(str);
		// for (int i=0;i<str.length ;i++ ) {
		// 	//arr[i]=sc.nextInt();
		// 	System.out.println(str[i]);
		// }
		printNumber(str,test+1);
		//System.out.println(arr);
	}


}