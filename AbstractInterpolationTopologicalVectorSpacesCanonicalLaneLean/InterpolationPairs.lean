import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationPair where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  linearInjection : source → target
  compatible : Prop
  conclusion : compatible

def InterpolationPairClosed (I : InterpolationPair) : Prop :=
  I.compatible

structure InterpolationPairEvidence (I : InterpolationPair) where
  compatibleClosed : I.compatible

theorem interpolation_pair_closed_from_evidence (I : InterpolationPair) (E : InterpolationPairEvidence I) :
    InterpolationPairClosed I := by
  exact E.compatibleClosed

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse