macro cmp [A,B]
{
  if A eq a & B eq
    ; [$82] cmp a
    db $82
  else if A eq a & (B eqtype 'a' | B eqtype $FF)
    ; [$89] cmp x,$00
    db $89
    db B
  else
    error SyntaxErrorxxx
  end if
}

cmp a, $aa

