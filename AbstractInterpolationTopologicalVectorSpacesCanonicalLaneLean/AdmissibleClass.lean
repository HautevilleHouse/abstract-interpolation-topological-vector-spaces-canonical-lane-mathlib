import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : InterpolationTVSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  InterpolationTVSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse