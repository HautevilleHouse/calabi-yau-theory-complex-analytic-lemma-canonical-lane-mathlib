import CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean.CalabiYauSubstrate

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure AdmittedCalabiYauObject where
  substrate : CalabiYauSubstrate
  complexAnalyticBridgeWitness : Bool
  mirrorSymmetryBridgeWitness : Bool
  sourceKeyChecked : Bool

deriving Repr, DecidableEq

structure AdmissibleClass where
  object : AdmittedCalabiYauObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.substrate.substrateReady = true) ∧
  (A.object.complexAnalyticBridgeWitness = true) ∧
  (A.object.mirrorSymmetryBridgeWitness = true) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse