/*
Write recursive function to compute the factors of a positive integer fact()

    Function prototype : int fact(int f)
        If f == 1 the function return 1
        If f <= 0 return 0
*/

int fact(int f) {
  if (f == 1) {
    return 1;
  } else if (f <= 0) {
    return 0;
  } else {
    return f * fact(f - 1);
  }
}
