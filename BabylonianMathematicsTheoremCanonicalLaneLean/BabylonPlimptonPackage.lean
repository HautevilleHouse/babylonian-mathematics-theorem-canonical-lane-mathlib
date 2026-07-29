import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonObjects
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonNumericalEvidence

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonPlimptonPackage where
  tablet : BabylonNumericalTablet
  interpretation : String
  triples : List (Nat × Nat × Nat)
  geometricMethod : Prop
  consistentWithSexagesimal : Prop

def BabylonPlimptonPackageClosed (P : BabylonPlimptonPackage) : Prop :=
  P.geometricMethod ∧ P.consistentWithSexagesimal

theorem babylon_plimpton_package_closed (P : BabylonPlimptonPackage) (h : P.geometricMethod ∧ P.consistentWithSexagesimal) :
    BabylonPlimptonPackageClosed P := h

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse