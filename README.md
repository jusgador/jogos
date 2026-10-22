# Jogos

Página inicial dos jogos, publicada no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Endereço | Desenvolvimento |
|---|---|---|
| Campos Tennis | https://jusgador.github.io/campos-tennis/ | `D:\dev\Jogo 01` (repositório próprio) |
| Lunar Lander Vetorial | `lander/` | `D:\dev\Jogo 02` |
| Asas de Aço | `asas/` | `D:\dev\Jogo 03` |
| A Fortaleza 64 | `fortaleza/` | `D:\dev\Jogo 04` |

Os jogos são desenvolvidos nas pastas próprias. As subpastas daqui são cópias: não edite nelas.

## Publicar

```bash
./publicar.sh --push
```

O script copia os arquivos, faz o commit e, com `--push`, envia.

## Acrescentar um jogo

1. Inclua uma linha `copiar` em `publicar.sh`.
2. Inclua o jogo no array `JOGOS` no topo do `index.html`.
3. Use um prefixo próprio nas chaves do `localStorage`. Todos os jogos dividem o domínio `jusgador.github.io`. Prefixos em uso: `bt-`, `lander-`, `asasDeAco.` e `bl64_`.
