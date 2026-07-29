import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure TabletClassificationPackage where
  contentCategory : String
  mathematicalProcedure : String
  period : String
  provenance : String
  procedureValidated : Prop

structure TabletClassificationEvidence (C : TabletClassificationPackage) where
  contentCategoryClosed : C.contentCategory = "algebraic" ∨ C.contentCategory = "geometric"
  mathematicalProcedureClosed : C.mathematicalProcedure ≠ ""
  periodClosed : C.period ≠ ""
  provenanceClosed : C.provenance ≠ ""
  procedureValidatedClosed : C.procedureValidated

def TabletClassificationClosed (C : TabletClassificationPackage) : Prop :=
  C.contentCategory = "algebraic" ∨ C.contentCategory = "geometric" ∧
  C.mathematicalProcedure ≠ "" ∧
  C.period ≠ "" ∧
  C.provenance ≠ "" ∧
  C.procedureValidated

theorem tablet_classification_closed_from_evidence
    (C : TabletClassificationPackage) (E : TabletClassificationEvidence C) :
    TabletClassificationClosed C := by
  exact And.intro E.contentCategoryClosed
    (And.intro E.mathematicalProcedureClosed
      (And.intro E.periodClosed
        (And.intro E.provenanceClosed E.procedureValidatedClosed)))

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse
