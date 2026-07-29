import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure KahlerRicciFlowCertificate where
  flowTime : ℝ
  kahlerMetric : Type
  ricciCurvature : Type
  flowChecked : Bool
  bridgeClosed : Bool

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
