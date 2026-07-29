import HautevilleHouse.BabylonianMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure PlimptonEntry where
  row : Nat
  p : Nat
  q : Nat
  a : Nat
  b : Nat
  c : Nat
  isPythagoreanTriple : a^2 + b^2 = c^2

structure PlimptonPackage where
  entries : List PlimptonEntry
  allTriplesCovered : Prop
  existsMissingTriples : Prop

structure PlimptonEvidence (P : PlimptonPackage) where
  allTriplesCoveredClosed : P.allTriplesCovered
  existsMissingTriplesClosed : P.existsMissingTriples

def PlimptonClosed (P : PlimptonPackage) : Prop :=
  P.allTriplesCovered ∧ P.existsMissingTriples

theorem plimpton_closed_from_evidence (P : PlimptonPackage) (E : PlimptonEvidence P) :
    PlimptonClosed P := by
  exact And.intro E.allTriplesCoveredClosed E.existsMissingTriplesClosed

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse