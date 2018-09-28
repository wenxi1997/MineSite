import java.util.Arrays;
import java.util.Scanner;

public class MyTestTwo {
    public static void main(String[] args){
        Scanner s = new Scanner(System.in);
        int n = s.nextInt();
        if(n == 1) {
            System.out.println(2);
            return;
        }
        if(n == 2) {
            System.out.println(3);
            return;
        }
        long result = 3;
        long prev = 2;
        for(int i = 3; i <= n; i++) {
            result = result + prev;
            prev = result - prev;
        }
        System.out.println(result);
    }
}
