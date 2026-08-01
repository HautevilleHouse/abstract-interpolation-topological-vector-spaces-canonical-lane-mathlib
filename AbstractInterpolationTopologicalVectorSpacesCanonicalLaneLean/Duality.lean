import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure DualityPackage where
  primalSpace : TopologicalVectorSpacePackage
  dualSpace : TopologicalVectorSpacePackage
  pairing : (x : primalSpace.underlyingVectorSpace) → (y : dualSpace.underlyingVectorSpace) → ℝ
  separatingPairing : Prop
  strongTopology : Prop
  dualityInterpolation : Prop

structure DualityEvidence (D : DualityPackage) where
  separatingPairingClosed : D.separatingPairing
  strongTopologyClosed : D.strongTopology
  dualityInterpolationClosed : D.dualityInterpolation

def DualityClosed (D : DualityPackage) : Prop :=
  D.separatingPairing ∧ D.strongTopology ∧ D.dualityInterpolation

theorem duality_closed_from_evidence (D : DualityPackage) (E : DualityEvidence D) :
    DualityClosed D := by
  exact And.intro E.separatingPairingClosed (And.intro E.strongTopologyClosed E.dualityInterpolationClosed)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse