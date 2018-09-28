import java.util.HashMap;
import java.util.Scanner;

public class MyTestOne {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        long n = scanner.nextLong();
        int m = (int)(Math.log(n) / Math.log(4));
        System.out.println(m);
    }
}
