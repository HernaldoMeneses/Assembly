#!/bin/bash
#Evitar fazer push de arquivos desnescessários
cat > .gitignore << EOF
# Arquivos compilados
*.o
*.out
*.exe

# Arquivos Objeto
*.obj

# Arquvos de debug
*.dSYM/
*.su
*.idb
*.pdb

# Arquivos do editor
.vscode/
.idea/
*.swp
*.swo
*~
EOF

# Adicione ao git
git add .gitignore
git commit -m "Add file .gitignore"
git branch -M main
git push origin main
