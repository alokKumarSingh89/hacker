class FindWay {
	int ways[][]={{1,2,3,4,5},
				  {6,7,8,9,10},
				  {11,12,13,14,15},
				  {16,17,18,19,20},
				  {21,22,23,24,25}};
	public static void main(String[] args) {
		FindWay tt=new FindWay();
		tt.show();
	}

	public void show(){
		int start = 9;
		int end = 13;
		int starti=0,startj=0,endi=0,endj=0;
		for (int j=0;j<5 ;j++ ) {
			for (int i=0;i<5 ;i++ ) {
				if (ways[i][j]==start) {
					starti=i;
					startj=j;
				}else if (ways[i][j]==end) {
					endi=i;
					endj=j;
				}
			}
		}
		System.out.println("starti:"+starti+" ,startj: "+startj+" ,endi: "+endi+" ,endj "+endj);
		int i=starti, j = startj;
		if (starti < endi) {
			for (;i<=endi;i++ ) {
				System.out.println(ways[i][j]);
			}
		}else{
			for (;starti>=startj;starti--) {
				System.out.println(ways[startj][endj]);
			}
		}
		
		if (startj < endj) {
			i--;
			for (;j<=endj;j++ ) {
				System.out.println(ways[i][j]);
			}
		}else{
			j--;i--;
			for (;j>=endj;j-- ) {
				System.out.println(ways[i][j]);
			}
		}

	}
}