import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure YauTheoremCertificate where
  kahlerMetric : Type
  ricciFlatMetric : Type
  existenceProved : Prop
  uniquenessProved : Prop
  bridgeWitness : Bool

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
