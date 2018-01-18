macro @printc x, y, c {
  push x
  push y
  push c
  set a, 5
  callt $400, a
}
