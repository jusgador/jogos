# Jogos

Página inicial dos jogos, publicada no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Endereço | Desenvolvimento |
|---|---|---|
| Campos Tennis | `tenis/` | `D:\dev\Jogo 01` (`tenis.html`) |
| Lunar Lander Vetorial | `lander/` | `D:\dev\Jogo 02` |
| Asas de Aço | `asas/` | `D:\dev\Jogo 03` |
| Bruce Lee 64 - A Fortaleza | `fortaleza/` | `D:\dev\Jogo 04` |

Os jogos são desenvolvidos nas pastas próprias. As subpastas daqui são cópias: não edite nelas.

## Publicar

```bash
./publicar.sh
```

Ou dê dois cliques em `publicar.bat`. Ele copia os quatro jogos para cá e também envia o repositório `../Jogo 01` (`jusgador/campos-tennis`), cujo endereço antigo redireciona para `tenis/`. Só envia o que mudou. Mudanças sem commit viram um commit automático. Com `--local`, só copia e faz o commit, sem enviar.

## App instalável

A página é um app instalável (PWA): `manifest.webmanifest` e os ícones `icone-*.png` (gerados por script, fundo escuro com um controle verde). Instalado pela tela inicial do celular, o app abre em tela cheia, sem as barras do navegador, também dentro dos jogos, porque todos ficam no mesmo escopo (`/jogos/`). No celular, a página mostra uma dica de instalação até a pessoa fechá-la (chave `jogos-instalar`).

Cada jogo tem:
- no `<head>`, o link para `../manifest.webmanifest` e as metas de app;
- um botão "Jogos" no menu e na pausa, que volta para `../` (instalado, não há botão de voltar do navegador);
- pedido de tela cheia no toque, para quem joga pelo navegador (não funciona no iPhone, só instalado).

## Acrescentar um jogo

1. Inclua uma linha `copiar` em `publicar.sh`.
2. Inclua o jogo no array `JOGOS` no topo do `index.html`.
3. Faça o jogo seguir o que está em "App instalável".
4. Use um prefixo próprio nas chaves do `localStorage`. Todos os jogos dividem o domínio `jusgador.github.io`. Prefixos em uso: `bt-`, `lander-`, `asasDeAco.` e `bl64_`, além de `jogos-` na própria página.
