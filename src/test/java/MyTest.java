import java.util.*;
import java.util.stream.Collectors;

public class MyTest {
    public static void main(String [] args) {
        Scanner scanner = new Scanner(System.in);
        scanner.useDelimiter("\n");
        String s = scanner.next();
        String [] strings = s.split(",");
        ArrayList<Integer> list = new ArrayList<>();
        for (String s1: strings[0].split(" ")) {
            list.add(Integer.parseInt(s1));
        }
        list.sort(Integer::compareTo);

        int array [] = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            array[i] = list.get(i);
        }

        int number = Integer.parseInt(strings[1]);
        if (findSum(number, array, array.length)) {
            System.out.println("True");
        } else {
            System.out.println("False");
        }
    }

    private static boolean findSum(int k, int a[], int n)
    {
        boolean found = false;
        int i=0, j=n-1;
        while (i < j) {
            if (a[i] + a[j] < k)
                i++;
            else if (a[i] + a[j] > k)
                j--;
            else {
                found = true;
            }
        }
        return found;
    }
}
