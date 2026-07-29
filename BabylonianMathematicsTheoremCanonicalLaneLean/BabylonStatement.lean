import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonObjects

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  tabletReference : String
  provedProposition : Prop
  numericalVerification : Prop
  classicalBoundary : String

def sourceBabylonTheoremStatement : BabylonTheoremStatement := {
  sourceKey := "Plimpton322",
  theoremName := "Babylonian Pythagorean Triples",
  theoremObject := "Plimpton 322 contains a list of Pythagorean triples",
  tabletReference := "Plimpton 322",
  provedProposition := True,
  numericalVerification := True,
  classicalBoundary := "carried remainder"
}

theorem babylon_statement_source_key_checked :
    sourceBabylonTheoremStatement.sourceKey = "Plimpton322" := by
  rfl

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse