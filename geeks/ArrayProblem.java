import java.util.*;
class ArrayProblem {
	public static void main(String[] args) {
		ArrayProblem ab = new ArrayProblem();
		
		// maximumSumBy rotation
		//int arr[] = {10, 1, 2, 3, 4, 5, 6, 7, 8, 9};//{1, 20, 2, 10};
		// ab.maximumSumByRotaionOnly(arr);

		//find symmetriPai
		// int arr[][] = {{11, 20}, {30, 40}, {5, 10}, {40, 30}, {10, 5}};
		// ab.findSymmetricPair(arr);

		// int arr[] = {15, -2, 2, -8, 1, 7, 10, 23};
		// ab.sumOfLargestSubArray(arr);
		// int arr[] = {10, 20, 30, 50, 10, 70, 30};
		// ab.MaxOfMinInEveryWindow(arr);
		int arr[]= {11, 13, 21, 3};
		ab.nextGreaterElement(arr);
	}

	public void maximumSumByRotaionOnly(int arr[]){
		int arrSum = 0, currVal = 0, lenght = arr.length;

		for (int i=0;i<lenght ;i++ ) {
			arrSum = arrSum + arr[i];
			currVal = currVal + (i * arr[i]);
		}
		System.out.println(currVal);
		int maxSum = currVal;

		for (int j =1;j< lenght; j++) {
			currVal = currVal + arrSum - lenght * arr[lenght-j];
			if (currVal > maxSum) {
				maxSum = currVal;
			}
		}
	   System.out.println("Max Sum :"+maxSum);
	}

	public void findSymmetricPair(int arr[][]){
		//there are three solution
		
		//best soltuin
		HashMap<Integer, Integer> hm = new HashMap<Integer,Integer>();
		for (int i =0;i < arr.length ;i++ ) {
			int first = arr[i][0], second = arr[i][1];

			//look for second pair as key
			Integer val = hm.get(second);

			if (val != null && val == first) {
				System.out.println("( "+second +", "+first +")");
			}else {
				hm.put(first, second);
			}
		}

		//better solution
		//sort the array by first elemt and select the sec element from one list and do binary search on rest list

		//worst solution
		//normal searching

	}

	public void sumOfLargestSubArray(int arr[]){
		//first worst solution
		int max_length = 0;
		for (int i = 0;i < arr.length ; i++) {
			int currSum = 0;
			for (int j = i;j< arr.length ;j++ ) {
				currSum+=arr[j];

				if (currSum == 0) {
					max_length = Math.max(max_length, j-i+1);
				}
			}
		}

		System.out.println("Length : "+max_length);


		//sec best way
		HashMap<Integer, Integer> hm = new HashMap<Integer, Integer>();
		int sum = 0;
		max_length = 0;
		for (int i = 0;i < arr.length ;i++ ) {
			sum+=arr[i];

			if (arr[i] == 0 && max_length == 0) {
				max_length = 1;
			}

			if (sum == 0) {
				max_length+=1;
			}

			Integer prev_i = hm.get(sum);

			if (prev_i != null) {
				max_length = Math.max(max_length, i - prev_i);
			}else{
				hm.put(sum, i);
			}
		}

		System.out.println("Max Lenght: "+max_length );
	}

	public void MaxOfMinInEveryWindow(int arr[]){
		// first waay 
		int n = arr.length-1;

		// for (int k=1;k<=n ;k++ ) {
		// 	int maxOfMin = arr[0];

		// 	for (int i=0;i<=n-k ;i++ ) {
		// 		int min = arr[i];

		// 		for (int j=1;j<k ;j++ ) {
		// 			if (arr[i+j] < min) {
		// 				min = arr[i+j];
		// 			}
		// 		}

		// 		if (min > maxOfMin) {
		// 			maxOfMin = min;
		// 		}
		// 	}

		// 	System.out.println(maxOfMin);
		// }

		//another methods
		Stack<Integer> st = new Stack<Integer>();//use to find previous and next
		int left[] = new int[n+1];
		int right[] = new int[n+1];

		for (int i=0;i<n ;i++ ) {
			left[i] = -1;
			right[i] = n;
		}

		for (int i=0; i<n;i++ ) {
			
		}
	}

	public void nextGreaterElement(int arr[]){
		Stack<Integer> st = new Stack<Integer>();
		int i =0 , n = arr.length-1;
		int element, next;
		st.push(arr[0]);
		for (i=1;i< n ;i++ ) {
			next = arr[i];
			if (st.isEmpty() == false) {
				element = st.pop();
				while(element < next){
					if (st.isEmpty()) {
						break;
					}
					element = st.pop();
				}

				if (element > next) {
					st.push(element);
				}
			}

			st.push(next);
		}
		System.out.println(st);
		while(st.isEmpty()){
			System.out.println(st.pop());
		}
	}


	
}