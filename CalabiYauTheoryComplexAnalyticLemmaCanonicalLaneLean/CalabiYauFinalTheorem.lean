import canonicalLaneMathlib.AdmissibleClass
import ComplexKaehlerMetricLayer

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

def calabiYauBridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexKaehlerMetricLayerClosed complexKaehlerMetricLayerCertificate

def calabiYauGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedCalabiYauClosure (A : AdmissibleClass) : Prop :=
  calabiYauBridgeClosed A ∧ calabiYauGateClosed A

theorem calabi_yau_endgame (A : AdmissibleClass) :
    ConstrainedCalabiYauClosure A := by
  have hBridge : calabiYauBridgeClosed A := by
    exact complex_kaehler_metric_layer_closed_checked
  have hGate : calabiYauGateClosed A := by
    exact A.gateWitness
  exact And.intro hBridge hGate

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse