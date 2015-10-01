import java.util.*;
class LongestValidString  {
	public static void main(String[] args) {
		LongestValidString lvs = new LongestValidString();
		lvs.findLongestString("()");
		lvs.findLongestString("((()()");
		lvs.findLongestString("()(()))))");
	}

	public void findLongestString(String str){
		int n = str.length();
		System.out.println("************************");
		Stack<Integer> st = new Stack<Integer>();
		st.push(-1);
		 int result = 0;

		 for (int i=0;i<n ;i++ ) {
		 	
		 	if (str.charAt(i) == '(') {
		 		st.push(i);
		 	}else{
		 		int temp = st.pop();
		 		System.out.println(temp);
		 		if (!st.empty()) {
		 			result = Math.max(result, i - st.peek());
		 		}else{
		 			st.push(i);
		 		}
		 	}
		 }

		 System.out.println(result);
	}
}