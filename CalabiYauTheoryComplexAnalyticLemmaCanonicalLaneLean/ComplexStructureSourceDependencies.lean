import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/check_manifest.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 }
]

def sourceRuntimeModules : List String := [
  "__future__.annotations",
  "math"
]

theorem source_import_dependencies_nonempty :
    sourceImportDependencies.length > 0 := by
  decide

end CalabiYauTheoryComplexAnalyticLemmaCanonicalLaneLean
end HautevilleHouse