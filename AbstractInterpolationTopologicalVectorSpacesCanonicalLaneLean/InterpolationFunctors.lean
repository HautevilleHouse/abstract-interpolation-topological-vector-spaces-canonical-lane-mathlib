import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.InterpolationPairs

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationFunctor where
  pair : InterpolationPair
  intermediateSpace : Type u
  intermediateTopology : TopologicalSpace intermediateSpace
  interpolationProperty : Prop
  functorial : Prop

def InterpolationFunctorClosed (F : InterpolationFunctor) : Prop :=
  F.interpolationProperty ∧ F.functorial

structure InterpolationFunctorEvidence (F : InterpolationFunctor) where
  interpolationPropertyClosed : F.interpolationProperty
  functorialClosed : F.functorial

theorem interpolation_functor_closed_from_evidence
    (F : InterpolationFunctor) (E : InterpolationFunctorEvidence F) :
    InterpolationFunctorClosed F := by
  exact And.intro E.interpolationPropertyClosed E.functorialClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse