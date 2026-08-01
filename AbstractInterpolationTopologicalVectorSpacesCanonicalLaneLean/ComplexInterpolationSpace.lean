import canonicalLaneMathlib.AdmissibleClass
import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.InterpolationPair

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure ComplexInterpolationSpace (p : InterpolationPair) where
  analyticFamily : ℂ → p.TVS
  boundaryValues : (t : ℝ) → analyticFamily (t + 0*I) ∈ p.A0 ∧ analyticFamily (t + 1*I) ∈ p.A1
  interpolationProperty : Prop

structure ComplexInterpolationEvidence {p : InterpolationPair} (C : ComplexInterpolationSpace p) where
  interpolationPropertyClosed : C.interpolationProperty

def ComplexInterpolationClosed {p : InterpolationPair} (C : ComplexInterpolationSpace p) : Prop :=
  C.interpolationProperty

theorem complex_interpolation_closed_from_evidence {p : InterpolationPair} (C : ComplexInterpolationSpace p) (E : ComplexInterpolationEvidence C) : ComplexInterpolationClosed C := by
  exact E.interpolationPropertyClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse