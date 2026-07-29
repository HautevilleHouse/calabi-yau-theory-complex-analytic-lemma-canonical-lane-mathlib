import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

def sourceFiles : List SourceFile :=
  [{ path := "scripts/extract_constants.py", sha256 := "abc123", functionCount := 3, classCount := 0, assignmentCount := 2, parseOk := true }]

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

theorem source_files_nonempty : sourceFiles.length > 0 := by
  decide

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse