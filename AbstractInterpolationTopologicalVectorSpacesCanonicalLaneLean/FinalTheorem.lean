import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

def ConstrainedInterpolationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_interpolation_endgame (A : AdmissibleClass) :
    ConstrainedInterpolationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse