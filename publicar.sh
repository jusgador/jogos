#!/usr/bin/env bash
# Publica os quatro jogos, mas só envia o que mudou.
# - Os quatro jogos: copia das pastas de desenvolvimento para cá.
# - Campos Tennis: também envia o repositório dele (../Jogo 01), cujo endereço antigo
#   (jusgador.github.io/campos-tennis/) redireciona para jogos/tenis/.
# Mudanças ainda sem commit viram um commit automático.
# Uso: ./publicar.sh        (publica)
#      ./publicar.sh --local (só copia e faz commit, sem enviar)
set -euo pipefail
cd "$(dirname "$0")"
ENVIAR=1
[[ "${1:-}" == "--local" ]] && ENVIAR=0

# Faz commit do que mudou e envia o que ainda não foi enviado. Uso: publicar_repo <pasta> <nome>
publicar_repo() {
  local pasta="$1" nome="$2"
  git -C "$pasta" add -A
  if git -C "$pasta" diff --cached --quiet; then
    echo "$nome: nada novo para o commit."
  else
    echo "$nome: alterado:"
    git -C "$pasta" diff --cached --name-only | sed 's/^/  /'
    git -C "$pasta" commit -q -m "Atualiza os jogos ($(date +%Y-%m-%d))"
  fi
  if (( ENVIAR )); then
    if [[ "$(git -C "$pasta" rev-list --count '@{u}..HEAD')" != 0 ]]; then
      git -C "$pasta" push -q && echo "$nome: enviado."
    else
      echo "$nome: já estava publicado."
    fi
  fi
}

copiar() { # origem destino
  mkdir -p "$(dirname "$2")"
  cp "$1" "$2"
}

copiar "../Jogo 01/tenis.html"        tenis/index.html
copiar "../Jogo 02/lunar-lander.html" lander/index.html
copiar "../Jogo 03/index.html"        asas/index.html
copiar "../Jogo 04/index.html"        fortaleza/index.html

publicar_repo . "Página dos jogos"
publicar_repo "../Jogo 01" "Campos Tennis (repositório de origem)"

(( ENVIAR )) && echo "O GitHub Pages leva um ou dois minutos para atualizar."
exit 0
