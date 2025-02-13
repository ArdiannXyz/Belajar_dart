void main(List<String> args) {
  print("Life");

  Future.delayed(Duration.zero, () {
    print("is");
  });

  print("never flat");
}
