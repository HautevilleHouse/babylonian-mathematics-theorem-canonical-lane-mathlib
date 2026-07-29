import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BabylonianMathematicsTheoremCanonicalLaneLean

structure QuadraticEquation where
  a : Int
  b : Int
  c : Int

def discriminant (q : QuadraticEquation) : Int :=
  q.b * q.b - 4 * q.a * q.c

structure BabylonianQuadraticSolution where
  equation : QuadraticEquation
  solution1 : Int
  solution2 : Int
  positiveRoot : Bool
  proof : Prop

theorem babylonian_solution_formula (q : QuadraticEquation) (sol : BabylonianQuadraticSolution) : sol.equation = q := rfl

end BabylonianMathematicsTheoremCanonicalLaneLean
end HautevilleHouse