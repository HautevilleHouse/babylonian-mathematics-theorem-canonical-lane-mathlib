import HautevilleHouse.BabylonianMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure QuadraticEquation where
  a : Nat
  b : Nat
  c : Nat
  solution : Prop

structure BabylonianQuadraticPackage where
  equations : List QuadraticEquation
  generalSolutionForm : Prop
  algorithmCorrect : Prop

structure QuadraticEvidence (Q : BabylonianQuadraticPackage) where
  generalSolutionFormClosed : Q.generalSolutionForm
  algorithmCorrectClosed : Q.algorithmCorrect

def BabylonianQuadraticClosed (Q : BabylonianQuadraticPackage) : Prop :=
  Q.generalSolutionForm ∧ Q.algorithmCorrect

theorem babylonian_quadratic_closed_from_evidence (Q : BabylonianQuadraticPackage) (E : QuadraticEvidence Q) :
    BabylonianQuadraticClosed Q := by
  exact And.intro E.generalSolutionFormClosed E.algorithmCorrectClosed

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse