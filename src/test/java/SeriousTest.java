import java.util.*;

public class SeriousTest extends BaseTest{
    public static class Node {
        int me;
        HashSet<Node> next;
        Node(int me) {
            this.me = me;
            this.next = new HashSet<>();
        }
    }

    public static void main(String[] args) {
        Node [] nodes = construct();
        Map<Node, HashSet<Node>> reachable = new LinkedHashMap<>();
        for(Node node: nodes) {
            if (node == null) {
                continue;
            }
            HashSet<Node> set = new HashSet<>();
            reachable.put(node, set);
            goThrough(node, set);
        }
        int [] ys = new int[nodes.length];
        for (int i = 0; i < nodes.length; i++) {
            Node node = nodes[i];
            if (node == null) {
                continue;
            }
            HashSet<Node> reach = reachable.get(node);
            for (Node n: reach) {
                (ys[n.me])++;
            }
        }
        int count = 0;
        for (int i = 0; i < nodes.length; i++) {
            Node node = nodes[i];
            if (node == null) {
                continue;
            }
            HashSet<Node> reach = reachable.get(node);
            if (reach.size() < ys[node.me]) {
                count++;
            }
        }
        System.out.println(count);
    }

    public static Node[] construct() {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        Node[] nodes = new Node[n + 1];
        for (int i = 0; i < m; i++) {
            int u = scanner.nextInt();
            int v = scanner.nextInt();
            Node fromNode = nodes[u];
            if (fromNode == null) {
                fromNode = new Node(u);
                nodes[u] = fromNode;
            }
            Node toNode = nodes[v];
            if (toNode == null) {
                toNode = new Node(v);
                nodes[v] = toNode;
            }
            if (toNode != fromNode) {
                fromNode.next.add(toNode);
            }
        }
        return nodes;
    }

    public static void goThrough(Node node, HashSet<Node> set) {
        LinkedList<Node> nexted = new LinkedList<>();
        nexted.add(node);
        LinkedList<Node> list = new LinkedList<>(node.next);
        set.addAll(node.next);
        while (!list.isEmpty()) {
            Node n = list.remove();
            nexted.add(n);
            set.addAll(n.next);
            list.addAll(n.next);
            list.removeIf(nexted::contains);
        }
    }
}
