// RUN: %dafny /compile:0 /print:"%t.print" /dprint:"%t.dprint" /autoTriggers:1 /printTooltips "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

// This file checks that multi-dimensional array accesses yield trigger candidates

method M(m: array2<int>)
  requires m != null
  requires forall i, j | 0 <= i < m.Length0 && 0 <= j < m.Length1 :: m[i, j] == m[j, i+1] {
}
