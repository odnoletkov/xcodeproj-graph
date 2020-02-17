. as $proj |
"digraph {",
(.objects | to_entries[] | select(.value.isa == "PBXNativeTarget") | "\"\(.key)\" [label=\"\(.value.productName)\"]", "\"\(.key)\" -> \"\($proj.objects[.value.dependencies[]] | .name // .target)\""),
"}"
