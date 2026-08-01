import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationTheoremPackage {G : TVSCategory} {P : InterpolationSpacePackage G} where
  targetTVS : Type u
  targetTopology : TopologicalSpace targetTVS
  boundedLinearExtension : Prop
  endpointBound : Prop
  interpolationInequality : Prop
  endpointMatchesInterpolationStatement : Prop

structure InterpolationTheoremEvidence {G : TVSCategory} {P : InterpolationSpacePackage G} (T : InterpolationTheoremPackage G P) where
  boundedLinearExtensionClosed : T.boundedLinearExtension
  endpointBoundClosed : T.endpointBound
  interpolationInequalityClosed : T.interpolationInequality
  endpointMatchesStatementClosed : T.endpointMatchesInterpolationStatement

def InterpolationTheoremClosed {G : TVSCategory} {P : InterpolationSpacePackage G} (T : InterpolationTheoremPackage G P) : Prop :=
  T.boundedLinearExtension ∧ T.endpointBound ∧ T.interpolationInequality ∧ T.endpointMatchesInterpolationStatement

theorem interpolation_theorem_closed_from_evidence {G : TVSCategory} {P : InterpolationSpacePackage G} (T : InterpolationTheoremPackage G P) (E : InterpolationTheoremEvidence T) : InterpolationTheoremClosed T := by
  exact And.intro E.boundedLinearExtensionClosed (And.intro E.endpointBoundClosed (And.intro E.interpolationInequalityClosed E.endpointMatchesStatementClosed))

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse