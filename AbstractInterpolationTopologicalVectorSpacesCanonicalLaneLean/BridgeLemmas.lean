import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InterpolationTVSWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse