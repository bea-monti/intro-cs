
// count backwards from 1,000 by 10s, until 0

void setup() {
  for (int x = 1000; x>=0; x-=10) {
    println(x);
  }
}
