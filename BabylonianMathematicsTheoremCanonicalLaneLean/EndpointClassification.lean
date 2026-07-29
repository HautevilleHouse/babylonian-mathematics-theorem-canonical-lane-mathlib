import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure EndpointClassificationPackage where
  targetComputation : String
  resultType : String
  numericalResult : ℚ
  textualInterpretation : String
  endpointReached : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  targetComputationClosed : E.targetComputation ≠ ""
  resultTypeClosed : E.resultType ∈ ["exact", "approximate", "geometric"]
  numericalResultClosed : E.numericalResult > 0
  textualInterpretationClosed : E.textualInterpretation ≠ ""
  endpointReachedClosed : E.endpointReached

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.targetComputation ≠ "" ∧
  E.resultType ∈ ["exact", "approximate", "geometric"] ∧
  E.numericalResult > 0 ∧
  E.textualInterpretation ≠ "" ∧
  E.endpointReached

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.targetComputationClosed
    (And.intro Ev.resultTypeClosed
      (And.intro Ev.numericalResultClosed
        (And.intro Ev.textualInterpretationClosed Ev.endpointReachedClosed)))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse
