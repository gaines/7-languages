package com.crebma.primeFactors

object PrimeFactors {

  def factors(num: Int, c: Int=2) : List[Int] = {
    if (num == 1) {
      List[Int]()
    }
    else {
      if (num > c)
        if (num % c == 0) {
          List[Int](c) ++ factors(num/c, c)
        }
        else {
          factors(num, c+1)
        }
      else
      {
        List[Int](num)
      }
    }
  }
}
