import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianAlgebraicTechnique

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianGeometricReasoningPackage where
  pythagoreanTripleRecorded : Prop
  areaComputationCorrect : Prop
  similarTrianglesIdentified : Prop
  circleGeometryKnown : Prop

structure BabylonianGeometricReasoningEvidence (G : BabylonianGeometricReasoningPackage) where
  pythagoreanTripleRecordedClosed : G.pythagoreanTripleRecorded
  areaComputationCorrectClosed : G.areaComputationCorrect
  similarTrianglesIdentifiedClosed : G.similarTrianglesIdentified
  circleGeometryKnownClosed : G.circleGeometryKnown

def BabylonianGeometricReasoningClosed (G : BabylonianGeometricReasoningPackage) : Prop :=
  G.pythagoreanTripleRecorded ∧ G.areaComputationCorrect ∧ G.similarTrianglesIdentified ∧ G.circleGeometryKnown

theorem babylonian_geometric_reasoning_closed_from_evidence
    (G : BabylonianGeometricReasoningPackage) (E : BabylonianGeometricReasoningEvidence G) :
    BabylonianGeometricReasoningClosed G := by
  exact And.intro E.pythagoreanTripleRecordedClosed
    (And.intro E.areaComputationCorrectClosed
      (And.intro E.similarTrianglesIdentifiedClosed E.circleGeometryKnownClosed))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse