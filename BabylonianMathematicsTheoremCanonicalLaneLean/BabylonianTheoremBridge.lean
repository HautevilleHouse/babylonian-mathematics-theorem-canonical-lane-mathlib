import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianBase
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianAlgebra
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianGeometry
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianNumericalMethods

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianAdmittedObject where
  tabletEntry : BabylonianTabletEntry
  theoremStatement : Prop
  evidence : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | BabylonianAdmittedObject obj => obj.evidence
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse