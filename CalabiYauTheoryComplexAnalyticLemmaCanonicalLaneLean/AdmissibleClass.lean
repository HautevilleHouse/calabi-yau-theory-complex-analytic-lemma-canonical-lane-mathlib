import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse