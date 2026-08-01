import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.InterpolationFunctors

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure ReiterationPackage {F : InterpolationFunctor} where
  firstFunctor : InterpolationFunctor
  secondFunctor : InterpolationFunctor
  reiterationInequality : Prop
  intermediateSpaceCoincidence : Prop

def ReiterationClosed {F : InterpolationFunctor} (R : ReiterationPackage) : Prop :=
  R.reiterationInequality ∧ R.intermediateSpaceCoincidence

structure ReiterationEvidence {F : InterpolationFunctor} (R : ReiterationPackage) where
  reiterationInequalityClosed : R.reiterationInequality
  intermediateSpaceCoincidenceClosed : R.intermediateSpaceCoincidence

theorem reiteration_closed_from_evidence
    {F : InterpolationFunctor} (R : ReiterationPackage) (E : ReiterationEvidence R) :
    ReiterationClosed R := by
  exact And.intro E.reiterationInequalityClosed E.intermediateSpaceCoincidenceClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse