# Jogos

Página inicial e jogos, publicados no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Pasta |
|---|---|
| Campos Tennis | `tenis/` |
| Lunar Lander Vetorial | `lander/` |
| Asas de Aço | `asas/` |
| Bruce Lee 64 - A Fortaleza | `fortaleza/` |

Cada jogo é desenvolvido direto na sua pasta, num único `index.html`. Os jogos começaram em repositórios próprios, e o histórico de cada um veio junto (`git log --follow asas/index.html`).

## Testar

O servidor de teste (`.claude/servidor.js`, configuração `jogos` em `.claude/launch.json`) serve a raiz, como no Pages. Assim o manifest, os ícones e o botão "Jogos" funcionam também no teste:

```bash
node .claude/servidor.js
```

Depois acesse `http://localhost:8765/` ou a pasta de um jogo, como `http://localhost:8765/asas/`. No celular, use o IP do PC na mesma rede Wi-Fi.

## Commits

- Cada commit mexe num jogo só, com o nome dele no início da mensagem ("Asas de Aço: modos fácil, normal e difícil"). No `git add`, use a pasta do jogo (`git add asas/`), nunca `git add -A`: pode haver outra pessoa ou sessão mexendo em outro jogo.
- Uma mudança que vale para todos os jogos, como o "App instalável" abaixo, é um commit só.

## Publicar

Dê dois cliques em `publicar.bat`, ou rode `./publicar.sh`. Ele envia os commits ainda não enviados, e o Pages publica. Só vai o que tem commit: alterações sem commit ficam de fora e aparecem num aviso.

## App instalável

A página é um app instalável (PWA): `manifest.webmanifest` e os ícones `icone-*.png` (gerados por script, fundo escuro com um controle verde). Instalado pela tela inicial do celular, o app abre em tela cheia, sem as barras do navegador, também dentro dos jogos, porque todos ficam no mesmo escopo (`/jogos/`). No celular, a página mostra uma dica de instalação até a pessoa fechá-la (chave `jogos-instalar`).

Cada jogo tem:
- no `<head>`, o link para `../manifest.webmanifest` e as metas de app;
- um botão "Jogos" no menu e na pausa, que volta para `../` (instalado, não há botão de voltar do navegador);
- pedido de tela cheia no toque, para quem joga pelo navegador (não funciona no iPhone, só instalado).

## Acrescentar um jogo

1. Crie a pasta com o `index.html` do jogo.
2. Inclua o jogo no array `JOGOS` no topo do `index.html` da raiz.
3. Faça o jogo seguir o que está em "App instalável".
4. Use um prefixo próprio nas chaves do `localStorage`. Todos os jogos dividem o domínio `jusgador.github.io`. Prefixos em uso: `bt-`, `lander-`, `asasDeAco.` e `bl64_`, além de `jogos-` na própria página.
