import AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean.ReiterationTheorem

namespace HautevilleHouse
namespace AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean

structure InterpolationInequalityPackage {F : InterpolationFunctor} {R : ReiterationPackage} where
  inequalityStatement : Prop
  optimalConstant : Prop
  endpointEstimates : Prop

def InterpolationInequalityClosed {F : InterpolationFunctor} {R : ReiterationPackage}
    (I : InterpolationInequalityPackage) : Prop :=
  I.inequalityStatement ∧ I.optimalConstant ∧ I.endpointEstimates

structure InterpolationInequalityEvidence {F : InterpolationFunctor} {R : ReiterationPackage}
    (I : InterpolationInequalityPackage) where
  inequalityStatementClosed : I.inequalityStatement
  optimalConstantClosed : I.optimalConstant
  endpointEstimatesClosed : I.endpointEstimates

theorem interpolation_inequality_closed_from_evidence
    {F : InterpolationFunctor} {R : ReiterationPackage}
    (I : InterpolationInequalityPackage) (E : InterpolationInequalityEvidence I) :
    InterpolationInequalityClosed I := by
  exact And.intro E.inequalityStatementClosed
    (And.intro E.optimalConstantClosed E.endpointEstimatesClosed)

end AbstractInterpolationTopologicalVectorSpacesCanonicalLaneLean
end HautevilleHouse