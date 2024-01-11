class FibonacciMemorization {
  static int fibMemo(int n, Map<int, int> memo) {
    if (n == 1) {
      return 0;
    }
    if (n == 2) {
      return 1;
    }
    if (!memo.containsKey(n)) {
      memo.addAll({n: (fibMemo(n - 1, memo) + fibMemo(n - 2, memo))});
    }
    return memo[n]!;
  }
}
