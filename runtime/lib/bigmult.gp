// Code by manyone on the GP Blocks forum

to nums2list s {
  return (map (function a {
    return (toNumber a)
  }
) (letters (toString s)))
}

to list2nums l {
  return (stringFromCodePoints (map (function a {
    return (a + 48)
  }
) l))
}

to droplz n {
  if (n == (list)) {return (list 0)}
  if ((first n) == 0) {
    return (droplz (copyFromTo n 2))
  } else {
    return n
  }
}

to bigmult m_str n_str {
  local 'm' (nums2list m_str)
  local 'n' (nums2list n_str)
  local 'm_len' (count m)
  local 'n_len' (count n)
  if (or (m_len == 0) (n_len == 0)) {
    return (toString 0)
  }
  local 'r' (list)
  for i (m_len + n_len) {
    r = (join (list 0) r)
  }
  for i m_len {
    local 'm_c' ((m_len - i) + 1)
    local 'c' 0
    for j n_len {
      local 'n_c' ((n_len - j) + 1)
      local 'p' (+ ((at m m_c) * (at n n_c)) (at r ((i + j) - 1)) c)
      local 'c' (floor (p / 10))
      atPut r ((i + j) - 1) (p % 10)
    }
    atPut r (i + j) c
  }
  return (list2nums (droplz (reversed r)))
}