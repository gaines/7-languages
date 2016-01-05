package prime_factors

func Factors(num int) []int {
  if num == 1 {
    return []int{}
  } else {
    return FactorsExt(num, 2)
  }
}

func FactorsExt(num int, c int) []int {
  if (num <= c) {
    return []int{num}
  }

  if (num % c == 0) {
    return append([]int{c}, FactorsExt(num / c, c)...)
  } else {
    return FactorsExt(num, c + 1)
  }
}
