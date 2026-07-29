import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonBridgeLemmas
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonGateLemmas

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

def ConstrainedBabylonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_babylon_endgame (A : AdmissibleClass) :
    ConstrainedBabylonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse