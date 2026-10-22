#!/usr/bin/env bash
# Copia os jogos das pastas de desenvolvimento para cá e faz o commit.
# Uso: ./publicar.sh [--push]
# O Campos Tennis é publicado no repositório dele (jusgador/campos-tennis).
set -euo pipefail
cd "$(dirname "$0")"

copiar() { # origem destino
  mkdir -p "$(dirname "$2")"
  cp "$1" "$2"
}

copiar "../Jogo 02/lunar-lander.html" lander/index.html
copiar "../Jogo 03/index.html"        asas/index.html
copiar "../Jogo 04/index.html"        fortaleza/index.html

git add -A
if git diff --cached --quiet; then
  echo "Nada mudou."
else
  git commit -m "Atualiza os jogos ($(date +%Y-%m-%d))"
fi

if [[ "${1:-}" == "--push" ]]; then
  git push
fi
