import canonicalLaneMathlib.AdmissibleClass

/-!
# Complex Interpolation Package
-/

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure ComplexInterpolationPackage (I : InterpolationSpacePackage) where
  complexMethodApplied : Prop
  analyticFamilyDefined : Prop
  boundOnStrip : Prop
  interpolationInequality : Prop

structure ComplexInterpolationEvidence {I : InterpolationSpacePackage} (C : ComplexInterpolationPackage I) where
  complexMethodAppliedClosed : C.complexMethodApplied
  analyticFamilyDefinedClosed : C.analyticFamilyDefined
  boundOnStripClosed : C.boundOnStrip
  interpolationInequalityClosed : C.interpolationInequality

def ComplexInterpolationClosed {I : InterpolationSpacePackage} (C : ComplexInterpolationPackage I) : Prop :=
  C.complexMethodApplied ∧ C.analyticFamilyDefined ∧ C.boundOnStrip ∧ C.interpolationInequality

theorem complex_interpolation_closed_from_evidence {I : InterpolationSpacePackage} (C : ComplexInterpolationPackage I) (E : ComplexInterpolationEvidence C) :
    ComplexInterpolationClosed C := by
  exact And.intro E.complexMethodAppliedClosed (And.intro E.analyticFamilyDefinedClosed (And.intro E.boundOnStripClosed E.interpolationInequalityClosed))

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse