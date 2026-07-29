import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure ComplexStructureDatum where
  complexManifold : Type
  kahlerFormValued : Prop
  ricciFormValued : Prop
  chernClassChecked : Bool

structure CalabiYauComplexStructureCertificate where
  complexStructure : ComplexStructureDatum
  canonicalBundleTrivial : Prop
  firstChernClassZero : Prop

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
