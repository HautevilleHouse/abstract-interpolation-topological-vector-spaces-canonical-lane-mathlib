import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure TopologicalVectorSpacePackage where
  underlyingVectorSpace : Type u
  topology : TopologicalSpace underlyingVectorSpace
  linearContinuity : Prop
  hausdorff : Prop
  locallyConvex : Prop

structure TopologicalVectorSpaceEvidence (T : TopologicalVectorSpacePackage) where
  linearContinuityClosed : T.linearContinuity
  hausdorffClosed : T.hausdorff
  locallyConvexClosed : T.locallyConvex

def TopologicalVectorSpaceClosed (T : TopologicalVectorSpacePackage) : Prop :=
  T.linearContinuity ∧ T.hausdorff ∧ T.locallyConvex

theorem topological_vector_space_closed_from_evidence (T : TopologicalVectorSpacePackage)
    (E : TopologicalVectorSpaceEvidence T) : TopologicalVectorSpaceClosed T := by
  exact And.intro E.linearContinuityClosed (And.intro E.hausdorffClosed E.locallyConvexClosed)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse