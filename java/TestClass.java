

    /* IMPORTANT: class must not be public. */
     
    /*
     * uncomment this if you want to read input(*)**/
    import java.io.BufferedReader;
    import java.io.InputStreamReader;
     
     
     
    class TestClass {
        public static void main(String args[] ) throws Exception {
            /*
             * Read input from stdin and provide input before running
    		**/	
            BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
            String line = br.readLine();
            int N = Integer.parseInt(line);
            for (int i = 0; i < N; i++) {
                String lines = br.readLine();
                display(lines);
            }
            
        }
        
        public static void display(String s){
    		char prev = ' ';
    		int count = 0, prevCount = 0, charCount=0;
    		boolean flag = true;
    		for(char c : s.toCharArray()){
    			if (c !=  prev) {
    				charCount +=1;
    				if (charCount > 3) {
    					flag = false;
    					break;
    				}

                    if (prevCount != 0 && prevCount != count){
    					flag = false;
    					break;
    				}
    				prevCount = count;
    				count = 1;
    				prev = c;
    			}else{
    				count++;
    			}
    			
    		}
     
    		if (flag) {
    			System.out.println("OK");
    		}else{
    			System.out.println("Not OK");
    		}
    	}
    }

