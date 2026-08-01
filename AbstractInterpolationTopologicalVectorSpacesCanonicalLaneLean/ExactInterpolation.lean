import canonicalLaneMathlib.AdmissibleClass
import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.InterpolationPair

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure ExactInterpolation (p : InterpolationPair) where
  interpolationSpace : Type u
  exactConstant : ℝ
  operatorNormEstimate : Prop
  interpolationProperty : Prop

structure ExactInterpolationEvidence {p : InterpolationPair} (E : ExactInterpolation p) where
  interpolationPropertyClosed : E.interpolationProperty

def ExactInterpolationClosed {p : InterpolationPair} (E : ExactInterpolation p) : Prop :=
  E.interpolationProperty

theorem exact_interpolation_closed_from_evidence {p : InterpolationPair} (E : ExactInterpolation p) (Ev : ExactInterpolationEvidence E) : ExactInterpolationClosed E := by
  exact Ev.interpolationPropertyClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse