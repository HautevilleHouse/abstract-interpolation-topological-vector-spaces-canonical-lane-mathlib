import canonicalLaneMathlib.AdmissibleClass

/-!
# Real Interpolation Package
-/

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure RealInterpolationPackage (I : InterpolationSpacePackage) where
  realMethodApplied : Prop
  KFunctionalDefined : Prop
  JFunctionalDefined : Prop
  equivalenceTheorem : Prop

structure RealInterpolationEvidence {I : InterpolationSpacePackage} (R : RealInterpolationPackage I) where
  realMethodAppliedClosed : R.realMethodApplied
  KFunctionalDefinedClosed : R.KFunctionalDefined
  JFunctionalDefinedClosed : R.JFunctionalDefined
  equivalenceTheoremClosed : R.equivalenceTheorem

def RealInterpolationClosed {I : InterpolationSpacePackage} (R : RealInterpolationPackage I) : Prop :=
  R.realMethodApplied ∧ R.KFunctionalDefined ∧ R.JFunctionalDefined ∧ R.equivalenceTheorem

theorem real_interpolation_closed_from_evidence {I : InterpolationSpacePackage} (R : RealInterpolationPackage I) (E : RealInterpolationEvidence R) :
    RealInterpolationClosed R := by
  exact And.intro E.realMethodAppliedClosed (And.intro E.KFunctionalDefinedClosed (And.intro E.JFunctionalDefinedClosed E.equivalenceTheoremClosed))

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse