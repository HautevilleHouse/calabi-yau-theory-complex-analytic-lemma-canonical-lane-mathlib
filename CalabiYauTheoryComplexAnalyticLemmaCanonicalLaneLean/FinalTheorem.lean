import canonicalLaneMathlib.AdmissibleClass
import CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean.CalabiYauComplexAnalyticLemma
import CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean.HodgeStructureLayer
import CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean.ComplexAnalyticBridge

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalabiYauComplexBridgeClosed calabiYauComplex ∧
  HodgeStructureBridgeClosed hodgeStructureCertificate ∧
  ComplexAnalyticBridgeClosed complexAnalyticBridgeCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro calabi_yau_complex_bridge_closed_checked
    (And.intro hodge_structure_bridge_closed_checked
      complex_analytic_bridge_closed_checked)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def CalabiYauComplexAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem calabi_yau_complex_analytic_closure (A : AdmissibleClass) :
    CalabiYauComplexAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
