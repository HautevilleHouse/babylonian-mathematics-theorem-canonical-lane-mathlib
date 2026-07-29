import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonTablet where
  catalogNumber : String
  provenance : String
  period : String
  contentDescription : String

structure BabylonCuneiformSign where
  sign : String
  phoneticValue : String
  numericValue : Nat

structure BabylonNumericalTablet where
  tablet : BabylonTablet
  rows : List (List Nat)
  columns : List String
  interpretations : List String

structure BabylonAdmittedObject where
  tablet : BabylonNumericalTablet
  theoremStatement : Prop
  numericalEvidence : Prop
  geometricInterpretation : Prop
  conclusion : theoremStatement

def BabylonWitnessClosed (O : BabylonAdmittedObject) : Prop :=
  O.theoremStatement

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse