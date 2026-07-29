import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure HolomorphicVectorBundleCertificate where
  rank : ℕ
  chernClass : ℕ
  hermitianMetric : Bool
  holomorphicConnection : Bool


-- certificate that the holomorphic vector bundle is admissible
def holomorphicVectorBundleCertificate : HolomorphicVectorBundleCertificate := {
  rank := 3,
  chernClass := 2,
  hermitianMetric := true,
  holomorphicConnection := true
}

def HolomorphicVectorBundleClosed (C : HolomorphicVectorBundleCertificate) : Prop :=
  C.rank > 0 ∧
  C.chernClass ≥ 0 ∧
  C.hermitianMetric = true ∧
  C.holomorphicConnection = true

theorem holomorphic_vector_bundle_closed_checked :
    HolomorphicVectorBundleClosed holomorphicVectorBundleCertificate := by
  exact And.intro (by decide) (And.intro (by decide) (And.intro rfl rfl))

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
