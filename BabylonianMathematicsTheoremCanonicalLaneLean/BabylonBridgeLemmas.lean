import canonicalLaneMathlib.AdmissibleClass
import BabylonianMathematicsTheoremCanonicalLaneLean.BabylonObjects

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BabylonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- A.object is a BabylonAdmittedObject, its conclusion is theoremStatement
  -- We need to extract that conclusion is true
  -- But we have A.object.conclusion which is a Prop, but we need it to be True
  -- Actually BabylonWitnessClosed expects theoremStatement, which is a Prop, but we need a proof
  -- The structure BabylonAdmittedObject has a field conclusion : theoremStatement, which is a proof
  -- So we can use that
  exact A.object.conclusion

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse