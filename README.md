# Jogos

Página inicial e jogos, publicados no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Pasta | Antes em |
|---|---|---|
| Campos Tennis | `tenis/` | `D:\dev\Jogo 01` (`tenis.html`) |
| Lunar Lander Vetorial | `lander/` | `D:\dev\Jogo 02` (`lunar-lander.html`) |
| Asas de Aço | `asas/` | `D:\dev\Jogo 03` |
| Bruce Lee 64 - A Fortaleza | `fortaleza/` | `D:\dev\Jogo 04` |

Cada jogo é desenvolvido direto na sua pasta, num único `index.html`. O histórico de cada um veio junto (`git log --follow asas/index.html`). As pastas `D:\dev\Jogo 01` a `04` ficaram só como arquivo: não edite nelas.

O endereço antigo do tênis (`jusgador.github.io/campos-tennis/`) continua redirecionando para `tenis/`. Esse redirecionamento fica no repositório `jusgador/campos-tennis` (`D:\dev\Jogo 01`), que não muda mais.

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
