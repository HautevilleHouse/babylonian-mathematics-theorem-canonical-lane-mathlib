import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianAdmittedObject where
  tabletId : String
  problem : String
  solution : String
  solutionCorrect : Prop

structure AdmissibleClass where
  object : BabylonianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.solutionCorrect ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse