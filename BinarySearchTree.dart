class Node {
  String data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  late Node root;

  BinarySearchTree(String data) {
    root = Node(data);
  }

  void insert(String data) {
    _insertNode(root, data);
  }

  void _insertNode(Node node, String data) {
    if (data.compareTo(node.data) <= 0) {
      // Eşitse veya küçükse sola git
      if (node.left == null) {
        node.left = Node(data);
      } else {
        _insertNode(node.left!, data);
      }
    } else {
      // Büyükse sağa git
      if (node.right == null) {
        node.right = Node(data);
      } else {
        _insertNode(node.right!, data);
      }
    }
  }

  List<String> get sortedData {
    final result = <String>[];
    _inOrderTraversal(root, result);
    return result;
  }

  void _inOrderTraversal(Node? node, List<String> result) {
    if (node == null) return;
    _inOrderTraversal(node.left, result);
    result.add(node.data);
    _inOrderTraversal(node.right, result);
  }
}
