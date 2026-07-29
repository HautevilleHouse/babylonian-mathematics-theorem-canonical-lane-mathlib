import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure AlgebraicInterpretationPackage where
  geometricFigure : String
  quadraticEquation : ℚ × ℚ × ℚ
  solutionMethod : String
  translationConsistent : Prop
  algebraicDerivation : Prop

structure AlgebraicInterpretationEvidence (A : AlgebraicInterpretationPackage) where
  geometricFigureClosed : A.geometricFigure ≠ ""
  quadraticEquationClosed : A.quadraticEquation.1 ≠ 0
  solutionMethodClosed : A.solutionMethod ∈ ["completingSquare", "cutAndPaste", "algorithm"]
  translationConsistentClosed : A.translationConsistent
  algebraicDerivationClosed : A.algebraicDerivation

def AlgebraicInterpretationClosed (A : AlgebraicInterpretationPackage) : Prop :=
  A.geometricFigure ≠ "" ∧
  A.quadraticEquation.1 ≠ 0 ∧
  A.solutionMethod ∈ ["completingSquare", "cutAndPaste", "algorithm"] ∧
  A.translationConsistent ∧
  A.algebraicDerivation

theorem algebraic_interpretation_closed_from_evidence
    (A : AlgebraicInterpretationPackage) (E : AlgebraicInterpretationEvidence A) :
    AlgebraicInterpretationClosed A := by
  exact And.intro E.geometricFigureClosed
    (And.intro E.quadraticEquationClosed
      (And.intro E.solutionMethodClosed
        (And.intro E.translationConsistentClosed E.algebraicDerivationClosed)))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse
