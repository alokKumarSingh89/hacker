import java.util.*;
class Solution{
	public static boolean isPrime(int num){
		if (num < 2){
			return true;
		}
		else{
			for(int i=2;i<num/2;i++){
				if (num%i==0) {
					return false;
				}
			}
		return true;
	
		}
	
	
	}
	public static void printNumber(int num){
		int primeCount=2;
		for (int i=5;i<num ;i++ ) {
			if (isPrime(i)) {
				primeCount++;
			}
		}

		System.out.println(primeCount);
	}
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int num=sc.nextInt();
		
		printNumber(num);
		//System.out.println(arr);
	}


}