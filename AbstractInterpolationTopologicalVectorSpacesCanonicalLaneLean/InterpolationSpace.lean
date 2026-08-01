import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationSpacePackage {G : TVSCategory} where
  interpolationPair : G × G
  interpolationMethod : String
  exactness : Prop
  intermediateProperty : Prop
  optimality : Prop

structure InterpolationSpaceEvidence {G : TVSCategory} (P : InterpolationSpacePackage G) where
  exactnessClosed : P.exactness
  intermediatePropertyClosed : P.intermediateProperty
  optimalityClosed : P.optimality

def InterpolationSpaceClosed {G : TVSCategory} (P : InterpolationSpacePackage G) : Prop :=
  P.exactness ∧ P.intermediateProperty ∧ P.optimality

theorem interpolation_space_closed_from_evidence {G : TVSCategory} (P : InterpolationSpacePackage G) (E : InterpolationSpaceEvidence P) : InterpolationSpaceClosed P := by
  exact And.intro E.exactnessClosed (And.intro E.intermediatePropertyClosed E.optimalityClosed)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse