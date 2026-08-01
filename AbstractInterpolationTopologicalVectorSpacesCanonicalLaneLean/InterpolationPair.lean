import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationPair where
  A0 : Type u
  A1 : Type v
  TVS : Type w
  embedding0 : A0 → TVS
  embedding1 : A1 → TVS
  intersection : A0 ∧ A1
  continuity : Prop

def InterpolationPairClosed (p : InterpolationPair) : Prop :=
  p.continuity

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse