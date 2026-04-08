#!/bin/bash
# Extract old sections
git show HEAD~1:references/DIAGRAM_TYPES.md | awk '/^## Flowchart \/ Graph/{flag=1; print; next} /^## Sequence Diagram/{flag=0} flag' > old_flowchart.txt
git show HEAD~1:references/DIAGRAM_TYPES.md | awk '/^## Sequence Diagram/{flag=1; print; next} /^## State Diagram/{flag=0} flag' > old_sequence.txt
git show HEAD~1:references/DIAGRAM_TYPES.md | awk '/^## State Diagram/{flag=1; print; next} /^## Class Diagram/{flag=0} flag' > old_state.txt
git show HEAD~1:references/DIAGRAM_TYPES.md | awk '/^## Class Diagram/{flag=1; print; next} /^## ER Diagram/{flag=0} flag' > old_class.txt
git show HEAD~1:references/DIAGRAM_TYPES.md | awk '/^## ER Diagram/{flag=1; print; next} /^## General Best Practices/{flag=0} flag' > old_er.txt

# Adjust headings in old files to match new files
sed -i 's/^### /## /g' old_*.txt
sed -i 's/^## /# /g' old_*.txt

# Compare
echo "Flowchart diff:"
diff -u old_flowchart.txt references/types/flowchart.md
echo "Sequence diff:"
diff -u old_sequence.txt references/types/sequence.md
echo "State diff:"
diff -u old_state.txt references/types/state.md
echo "Class diff:"
diff -u old_class.txt references/types/class.md
echo "ER diff:"
diff -u old_er.txt references/types/er.md
