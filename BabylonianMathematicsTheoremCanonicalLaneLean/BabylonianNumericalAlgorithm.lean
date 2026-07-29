import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonianGeometricReasoning

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure BabylonianNumericalAlgorithmPackage where
  sexagesimalPlaceValueSystem : Prop
  iterativeSquareRootMethod : Prop
  interpolationAlgorithm : Prop
  astronomicalComputation : Prop

structure BabylonianNumericalAlgorithmEvidence (N : BabylonianNumericalAlgorithmPackage) where
  sexagesimalPlaceValueSystemClosed : N.sexagesimalPlaceValueSystem
  iterativeSquareRootMethodClosed : N.iterativeSquareRootMethod
  interpolationAlgorithmClosed : N.interpolationAlgorithm
  astronomicalComputationClosed : N.astronomicalComputation

def BabylonianNumericalAlgorithmClosed (N : BabylonianNumericalAlgorithmPackage) : Prop :=
  N.sexagesimalPlaceValueSystem ∧ N.iterativeSquareRootMethod ∧ N.interpolationAlgorithm ∧ N.astronomicalComputation

theorem babylonian_numerical_algorithm_closed_from_evidence
    (N : BabylonianNumericalAlgorithmPackage) (E : BabylonianNumericalAlgorithmEvidence N) :
    BabylonianNumericalAlgorithmClosed N := by
  exact And.intro E.sexagesimalPlaceValueSystemClosed
    (And.intro E.iterativeSquareRootMethodClosed
      (And.intro E.interpolationAlgorithmClosed E.astronomicalComputationClosed))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse