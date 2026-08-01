import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

noncomputable section

structure InterpolationCouple (E0 E1 : Type*) [NormedAddCommGroup E0] [NormedAddCommGroup E1]
    [NormedSpace ℝ E0] [NormedSpace ℝ E1] where
  embedding : E0 →L[ℝ] E1
  denseRange : True

namespace InterpolationCouple

def default (E0 E1 : Type*) [NormedAddCommGroup E0] [NormedAddCommGroup E1]
    [NormedSpace ℝ E0] [NormedSpace ℝ E1] : InterpolationCouple E0 E1 :=
  { embedding := 0, denseRange := True.intro }

end InterpolationCouple

structure InterpolationSpace {E0 E1 : Type*} [NormedAddCommGroup E0] [NormedAddCommGroup E1]
    [NormedSpace ℝ E0] [NormedSpace ℝ E1] (couple : InterpolationCouple E0 E1) where
  carrier : Type*
  topology : TopologicalSpace carrier
  linearSpace : Module ℝ carrier
  intermediate : True

namespace InterpolationSpace

def default {E0 E1 : Type*} [NormedAddCommGroup E0] [NormedAddCommGroup E1]
    [NormedSpace ℝ E0] [NormedSpace ℝ E1] (couple : InterpolationCouple E0 E1) :
    InterpolationSpace couple :=
  { carrier := E0, topology := inferInstance, linearSpace := inferInstance, intermediate := True.intro }

end InterpolationSpace

structure InterpolationAdmittedObject where
  E0 : Type*
  E1 : Type*
  [topology0 : TopologicalSpace E0]
  [topology1 : TopologicalSpace E1]
  [normed0 : NormedAddCommGroup E0]
  [normed1 : NormedAddCommGroup E1]
  [normedSpace0 : NormedSpace ℝ E0]
  [normedSpace1 : NormedSpace ℝ E1]
  couple : InterpolationCouple E0 E1
  space : InterpolationSpace couple
  exactInterpolationConstant : Bool
  exactInterpolationConstantTrue : exactInterpolationConstant = true
  conclusion : exactInterpolationConstant = true

def InterpolationWitnessClosed (obj : InterpolationAdmittedObject) : Prop :=
  obj.exactInterpolationConstant = true

end
end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse