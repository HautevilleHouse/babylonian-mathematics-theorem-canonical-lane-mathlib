import HautevilleHouse.BabylonianMathematicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure CircleArea where
  diameter : Nat
  computedArea : Nat
  actualArea : Prop

structure TrapezoidArea where
  bases : Nat × Nat
  height : Nat
  computedArea : Nat
  formulaCorrect : Prop

structure BabylonianAreaPackage where
  circles : List CircleArea
  trapezoids : List TrapezoidArea
  circleFormula : Prop
  trapezoidFormula : Prop

structure AreaEvidence (A : BabylonianAreaPackage) where
  circleFormulaClosed : A.circleFormula
  trapezoidFormulaClosed : A.trapezoidFormula

def BabylonianAreaClosed (A : BabylonianAreaPackage) : Prop :=
  A.circleFormula ∧ A.trapezoidFormula

theorem babylonian_area_closed_from_evidence (A : BabylonianAreaPackage) (E : AreaEvidence A) :
    BabylonianAreaClosed A := by
  exact And.intro E.circleFormulaClosed E.trapezoidFormulaClosed

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse