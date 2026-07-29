import BabylonianMathematicsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

def sourceRepository : String := "babylonian-mathematics-canonical-lane"

def sourceDescription : String := "Babylonian Mathematics: solution of quadratic equations"

def sourceTheoremStatement : BabylonianTheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "Classical boundary carried",
  carriedRemainder := "Remainder carried"
}

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse
