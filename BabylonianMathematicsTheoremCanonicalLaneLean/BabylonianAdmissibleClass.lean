import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianAdmittedObject where
  tabletSource : String
  theoremFormulated : Prop
  evidenceRecorded : Prop

structure AdmissibleClass where
  object : BabylonianAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse