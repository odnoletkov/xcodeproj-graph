. as $project |

def obj_label:
	[.[] | scalars] | join("\\r");

def id:
	strings | select(length == 24 and $project.objects[.]);

def rels:
	. as $obj | paths(id) | {path: join("/"), to: (. as $path | $obj | getpath($path))};

"digraph {",
($project.objects | to_entries[] | "\"\(.key)\" [label=\"\(.value | obj_label)\"]"),
($project.objects | to_entries[] | "\"\(.key)\" -> \(.value | rels | "\"\(.to)\" [label=\"\(.path)\"]")"),
"}"
