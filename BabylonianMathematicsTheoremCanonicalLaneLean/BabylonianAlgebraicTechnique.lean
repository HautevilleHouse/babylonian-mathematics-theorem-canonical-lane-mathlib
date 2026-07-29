import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianBridgeLemmas

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianAlgebraicTechniquePackage where
  quadraticFormulaDerived : Prop
  systemOfEquationsSolved : Prop
  reciprocalTableUsed : Prop
  multiplicationAlgorithm : Prop

structure BabylonianAlgebraicTechniqueEvidence (P : BabylonianAlgebraicTechniquePackage) where
  quadraticFormulaDerivedClosed : P.quadraticFormulaDerived
  systemOfEquationsSolvedClosed : P.systemOfEquationsSolved
  reciprocalTableUsedClosed : P.reciprocalTableUsed
  multiplicationAlgorithmClosed : P.multiplicationAlgorithm

def BabylonianAlgebraicTechniqueClosed (P : BabylonianAlgebraicTechniquePackage) : Prop :=
  P.quadraticFormulaDerived ∧ P.systemOfEquationsSolved ∧ P.reciprocalTableUsed ∧ P.multiplicationAlgorithm

theorem babylonian_algebraic_technique_closed_from_evidence
    (P : BabylonianAlgebraicTechniquePackage) (E : BabylonianAlgebraicTechniqueEvidence P) :
    BabylonianAlgebraicTechniqueClosed P := by
  exact And.intro E.quadraticFormulaDerivedClosed
    (And.intro E.systemOfEquationsSolvedClosed
      (And.intro E.reciprocalTableUsedClosed E.multiplicationAlgorithmClosed))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse