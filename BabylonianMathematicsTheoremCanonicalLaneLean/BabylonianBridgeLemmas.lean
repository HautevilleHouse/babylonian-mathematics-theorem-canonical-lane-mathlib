import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianAdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | { tabletSource := s, theoremFormulated := t, evidenceRecorded := e } => t ∧ e

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.theoremFormulated A.object.evidenceRecorded

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse