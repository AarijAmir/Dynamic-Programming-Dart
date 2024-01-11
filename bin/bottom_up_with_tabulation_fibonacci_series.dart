class FibonacciTabulation {
  static int fibTab(int n) {
    List<int> tb = [];
    tb.add(0);
    tb.add(1);
    for (var i = 2; i <= n - 1; i++) {
      int n1 = tb[i - 1];
      int n2 = tb[i - 2];
      tb.add(n1 + n2);
    }
    return tb[n - 1];
  }
}
