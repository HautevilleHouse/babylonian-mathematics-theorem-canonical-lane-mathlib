import HautevilleHouse.BabylonianMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.solutionCorrect

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.solutionCorrect

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse