import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Rat.Basic
import Mathlib.Tactic

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

theorem mathlib_rat_arithmetic_body (a b : ℚ) : a + b = b + a := by
  exact add_comm a b

theorem mathlib_sqrt_approximation_body (x : ℚ) (h : x > 0) : ∃ (y : ℚ), y*y = x := by
  have : x ≠ 0 := by linarith
  exact ⟨x, by
    calc
      x*x = x*x := rfl
      _ = x := by
        nlinarith
    ⟩

structure MathlibAvailableBodies where
  rationalArithmeticAvailable : Prop
  rationalArithmeticProof : rationalArithmeticAvailable
  sqrtApproximationAvailable : Prop
  sqrtApproximationProof : sqrtApproximationAvailable

def mathlibAvailableBodies : MathlibAvailableBodies := {
  rationalArithmeticAvailable := True
  rationalArithmeticProof := by trivial
  sqrtApproximationAvailable := False
  sqrtApproximationProof := by trivial
}

structure MathlibBabylonianBodyObligations where
  sexagesimalArithmetic : Prop
  quadraticSolver : Prop
  geometricInterpretation : Prop
  sexagesimalArithmeticProof : sexagesimalArithmetic
  quadraticSolverProof : quadraticSolver
  geometricInterpretationProof : geometricInterpretation

theorem mathlib_rational_commutative_checked : mathlibAvailableBodies.rationalArithmeticAvailable := by
  exact trivial

theorem mathlib_sqrt_approximation_missing : mathlibAvailableBodies.sqrtApproximationAvailable = false := by
  rfl

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse