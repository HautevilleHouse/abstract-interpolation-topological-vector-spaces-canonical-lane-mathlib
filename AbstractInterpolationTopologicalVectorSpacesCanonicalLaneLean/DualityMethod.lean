import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure DualityMethodPackage {G : TVSCategory} {P : InterpolationSpacePackage G} {T : InterpolationTheoremPackage G P} where
  dualInterpolationPair : G × G
  dualityPrinciple : Prop
  dualExactness : Prop
  dualOptimality : Prop
  dualInterpolationInequality : Prop

structure DualityMethodEvidence {G : TVSCategory} {P : InterpolationSpacePackage G} {T : InterpolationTheoremPackage G P} (D : DualityMethodPackage G P T) where
  dualityPrincipleClosed : D.dualityPrinciple
  dualExactnessClosed : D.dualExactness
  dualOptimalityClosed : D.dualOptimality
  dualInterpolationInequalityClosed : D.dualInterpolationInequality

def DualityMethodClosed {G : TVSCategory} {P : InterpolationSpacePackage G} {T : InterpolationTheoremPackage G P} (D : DualityMethodPackage G P T) : Prop :=
  D.dualityPrinciple ∧ D.dualExactness ∧ D.dualOptimality ∧ D.dualInterpolationInequality

theorem duality_method_closed_from_evidence {G : TVSCategory} {P : InterpolationSpacePackage G} {T : InterpolationTheoremPackage G P} (D : DualityMethodPackage G P T) (E : DualityMethodEvidence D) : DualityMethodClosed D := by
  exact And.intro E.dualityPrincipleClosed (And.intro E.dualExactnessClosed (And.intro E.dualOptimalityClosed E.dualInterpolationInequalityClosed))

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse