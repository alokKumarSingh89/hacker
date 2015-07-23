import java.io.BufferedReader;
import java.io.InputStreamReader;


class TestClassClear {
    public static void main(String args[] ) throws Exception {
        /*
         * Read input from stdin and provide input before running
		*/
        //BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        //String line = br.readLine();
        
        String line="http://www.cleartrip.com/signin/service?username=test&pwd=test&profile=developer&role=ELITE&key=manager";
        String param=line.split("service?")[1];
		for(String s: param.split("&")){
			String keyValue[] =s.split("=");
			System.out.print(keyValue[0].replace("?","")+": ");
			System.out.println(keyValue[1]);
		}
        
    }
}