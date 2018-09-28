import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.TreeMap;

public class MyTest {
    public static void main(String [] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int k = scanner.nextInt();
        String s = scanner.next();

        int count[] = new int[26];
        for (char c: s.toCharArray()) {
            count[c - 'A'] += 1;
        }
        Arrays.sort(count);
        System.out.println(Arrays.toString(count));
        int all = 0;
        for (int i = count.length - 1; i >= 0; i--) {
            int remain = k - count[i];
            if (count[i] == 0) {
                break;
            }
            if (remain < 0) {
                continue;
            }
            all += (count[i] * count[i]);
            k -= count[i];
        }
        all += k;
        System.out.println(all);
    }
}
