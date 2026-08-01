import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationFunctorPackage where
  categoryDomain : Type u
  categoryCodomain : Type v
  functorAction : (X : Type u) → (Y : Type v) → (X → Y) → Prop
  exactFunctor : Prop
  interpolationPreserving : Prop

structure InterpolationFunctorEvidence (F : InterpolationFunctorPackage) where
  exactFunctorClosed : F.exactFunctor
  interpolationPreservingClosed : F.interpolationPreserving

def InterpolationFunctorClosed (F : InterpolationFunctorPackage) : Prop :=
  F.exactFunctor ∧ F.interpolationPreserving

theorem interpolation_functor_closed_from_evidence (F : InterpolationFunctorPackage)
    (E : InterpolationFunctorEvidence F) : InterpolationFunctorClosed F := by
  exact And.intro E.exactFunctorClosed E.interpolationPreservingClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse