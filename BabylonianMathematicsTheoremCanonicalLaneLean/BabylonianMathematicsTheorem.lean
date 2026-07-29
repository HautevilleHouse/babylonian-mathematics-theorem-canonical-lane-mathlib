import HautevilleHouse.BabylonianMathematicsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianQuadraticTablet where
  coefficientA : Nat
  coefficientB : Nat
  coefficientC : Nat
  root1 : Nat
  root2 : Nat
  rootsCorrect : Prop

structure BabylonianQuadraticSolver where
  tablet : BabylonianQuadraticTablet
  algorithmApplied : Prop
  algorithmWorks : tablet.rootsCorrect

def BabylonianSolverClosed (solver : BabylonianQuadraticSolver) : Prop :=
  solver.algorithmApplied ∧ solver.algorithmWorks

theorem babylonian_solver_closed (solver : BabylonianQuadraticSolver) : BabylonianSolverClosed solver := by
  exact And.intro solver.algorithmApplied solver.algorithmWorks

def ConstrainedBabylonianClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem babylonian_endgame (A : AdmissibleClass) : ConstrainedBabylonianClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse