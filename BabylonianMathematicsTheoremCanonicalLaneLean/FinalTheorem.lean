import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianTheoremBridge

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

def ConstrainedBabylonianTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_babylonian_theorem_endgame (A : AdmissibleClass) :
    ConstrainedBabylonianTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse