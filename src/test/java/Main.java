import java.util.*;

public class Main{
    public static void main0(String [] args) {
        Scanner scanner = new Scanner(System.in);
        int count = scanner.nextInt();
        int number = scanner.nextInt();
        List<Integer> array = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            array.add(scanner.nextInt());
        }
        int v = findNumber(array, number);
        System.out.println(v);
    }

    private static int findNumber(List<Integer> array, int count) {
        for (int i = 0; i < count; i++) {
            int minIndex = 0;
            int sumsUp = array.get(0) + array.get(1);
            for (int j = 1; j < array.size() - 1; j++) {
                int s = array.get(j) + array.get(j+1);
                if (sumsUp > s) {
                    sumsUp = s;
                    minIndex = j;
                }
            }
            array.set(minIndex, sumsUp);
            array.remove(minIndex + 1);
            System.out.println(array);
        }
        int min = array.get(0);
        for (int a: array) {
            if (a < min) {
                min = a;
            }
        }
        return min;
    }

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int a = s.nextInt();
        int b = s.nextInt();
        int c = s.nextInt();
        int d = s.nextInt();
        LinkedList<Integer> matchList = new LinkedList<>(Arrays.asList(a, b, c, d));
        Stack<Integer> stackA = new Stack<>();
        stackA.push(4);
        stackA.push(3);
        stackA.push(2);
        stackA.push(1);
        Stack<Integer> stackC = new Stack<>();
        while (true) {
            int value = stackA.pop();
            stackC.push(value);
            if (value == matchList.getFirst()) {
                matchList.removeFirst();
                break;
            }
        }
        while (true) {
            boolean match = false;
            if (!stackA.isEmpty()) {
                if(stackA.peek().equals(matchList.getFirst())) {
                    match = true;
                    stackA.pop();
                }
            }
            if (!stackC.isEmpty()) {
                if (stackC.peek().equals(matchList.getFirst())) {
                    match = true;
                    stackC.pop();
                }
            }
            if (stackA.isEmpty() && stackC.isEmpty() || !match) {
                System.out.println("No");
                return;
            }
            matchList.removeFirst();
            if (matchList.isEmpty()) {
                System.out.println("Yes");
                return;
            }
        }
    }
}