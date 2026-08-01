import canonicalLaneMathlib.AdmissibleClass
import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.InterpolationPair

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure KMethodSpace (p : InterpolationPair) where
  KFunctional : (t : ℝ) → (a : p.A0 + p.A1) → ℝ
  norm : (a : p.A0 + p.A1) → ℝ
  interpolationProperty : Prop

structure KMethodEvidence {p : InterpolationPair} (K : KMethodSpace p) where
  interpolationPropertyClosed : K.interpolationProperty

def KMethodClosed {p : InterpolationPair} (K : KMethodSpace p) : Prop :=
  K.interpolationProperty

theorem k_method_closed_from_evidence {p : InterpolationPair} (K : KMethodSpace p) (E : KMethodEvidence K) : KMethodClosed K := by
  exact E.interpolationPropertyClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse