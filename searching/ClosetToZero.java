class ClosetToZero {
	public static void main(String[] args) {
		ClosetToZero cz= new ClosetToZero();
		int arr[] = {1,60,-10,70,-80,85};
		cz.TwoElementWithSum(arr);
	}
	
	public void TwoElementWithSum(int arr[]){
		int length = arr.length;
		int inv_count = 0;
		int i,j,min_sum, sum, min_i, min_j;

		if (length<0) {
			System.out.println("Invalid Count");
			return ;
		}
		min_i = 0;
		min_j = 1;
		min_sum = arr[0]+arr[1];

		for (i=0;i<length ;i++ ) {
			for (j=i+1;j<length ;j++ ) {
				sum = arr[i]+arr[j];
				if (Math.abs(min_sum) > Math.abs(sum)) {
					min_sum = sum;
					System.out.println(sum);
					min_i = i;
					min_j = j;
				}
			}
		}

		System.out.println("The two element are "+arr[min_i]+" and "+arr[min_j]);
	}
}