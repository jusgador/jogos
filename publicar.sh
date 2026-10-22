#!/usr/bin/env bash
# Publica a página e os jogos no GitHub Pages: envia os commits que ainda não foram enviados.
# Só vai o que tem commit. Alterações sem commit ficam de fora, com aviso.
# Uso: ./publicar.sh
set -euo pipefail
cd "$(dirname "$0")"

if [[ "$(git branch --show-current)" != main ]]; then
  echo "Fora da branch main: nada foi enviado."; exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Sem commit (fica de fora):"
  git status --short | sed 's/^/  /'
  echo
fi

git fetch -q
if [[ "$(git rev-list --count 'HEAD..@{u}')" != 0 ]]; then
  echo "O GitHub tem commits que não estão aqui. Rode git pull antes."; exit 1
fi
if [[ "$(git rev-list --count '@{u}..HEAD')" == 0 ]]; then
  echo "Nada novo: já estava publicado."; exit 0
fi

echo "Vai ser publicado:"
git log --first-parent --format='  %s' '@{u}..HEAD'
git push -q
echo "Enviado. O GitHub Pages leva um ou dois minutos para atualizar."
