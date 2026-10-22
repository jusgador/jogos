# Jogos

Página inicial dos jogos, publicada no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Endereço | Desenvolvimento |
|---|---|---|
| Campos Tennis | https://jusgador.github.io/campos-tennis/ | `D:\dev\Jogo 01` (repositório próprio) |
| Lunar Lander Vetorial | `lander/` | `D:\dev\Jogo 02` |
| Asas de Aço | `asas/` | `D:\dev\Jogo 03` |
| Bruce Lee 64 - A Fortaleza | `fortaleza/` | `D:\dev\Jogo 04` |

Os jogos são desenvolvidos nas pastas próprias. As subpastas daqui são cópias: não edite nelas.

## Publicar

```bash
./publicar.sh
```

Ou dê dois cliques em `publicar.bat`. Ele publica os quatro jogos, incluindo o Campos Tennis (pelo repositório `../Jogo 01`), mas só envia o que mudou. Mudanças sem commit viram um commit automático. Com `--local`, só copia e faz o commit, sem enviar.

## Acrescentar um jogo

1. Inclua uma linha `copiar` em `publicar.sh`.
2. Inclua o jogo no array `JOGOS` no topo do `index.html`.
3. Use um prefixo próprio nas chaves do `localStorage`. Todos os jogos dividem o domínio `jusgador.github.io`. Prefixos em uso: `bt-`, `lander-`, `asasDeAco.` e `bl64_`.
