# Jogos

Página inicial e jogos, publicados no GitHub Pages: https://jusgador.github.io/jogos/

| Jogo | Pasta |
|---|---|
| Campos Tennis | `tenis/` |
| Lunar Lander Vetorial | `lander/` |
| Asas de Aço | `asas/` |
| Bruce Lee 64 - A Fortaleza | `fortaleza/` |
| Poker Texas Hold'em | `poker/` |

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

Roteiro para uma sessão aberta em `D:\dev\jogos` para criar um jogo novo, do começo até a publicação.

### 1. Nome, pasta e prefixo

- **Pasta:** curta, em minúsculas, sem acento nem espaço (`tenis`, `asas`). Ela vira o endereço público, `https://jusgador.github.io/jogos/<pasta>/`, e não deve mudar depois: mudar quebra os links, os favoritos e o atalho de quem instalou o app.
- **Prefixo do `localStorage`:** todos os jogos dividem o domínio `jusgador.github.io`, e um prefixo repetido mistura os dados salvos. Prefixos em uso:

  | Prefixo | Dono |
  |---|---|
  | `jogos-` | página inicial |
  | `bt-` | Campos Tennis |
  | `lander-` | Lunar Lander Vetorial |
  | `asasDeAco.` | Asas de Aço |
  | `bl64_` | Bruce Lee 64 - A Fortaleza |
  | `poker-` | Poker Texas Hold'em |

### 2. O arquivo do jogo

Crie `<pasta>/index.html`, como nos outros jogos:
- um arquivo só, com HTML, CSS e JavaScript puros, sem etapa de build;
- gráficos e sons feitos por código, sem imagens nem áudio externos;
- se uma biblioteca for indispensável, carregue-a por CDN, como o three.js do tênis;
- controles de teclado no computador e de toque no celular, se o jogo funcionar nele.

### 3. App instalável

No `<head>`:

```html
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, viewport-fit=cover">
<link rel="manifest" href="../manifest.webmanifest">
<link rel="apple-touch-icon" href="../icone-180.png">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="theme-color" content="#000000">
```

No jogo:
- **Botão "Jogos":** fica no menu e na pausa e faz `location.href = '../'`. Ele precisa respeitar o entalhe do celular (`env(safe-area-inset-*)`, liberado pelo `viewport-fit=cover`). Instalado, o app não tem botão de voltar do navegador: esse botão é a única saída.
- **Tela cheia no toque:** chame `requestFullscreen` num `touchend`, porque o Chrome nem sempre aceita o pedido no `touchstart`. No `fullscreenchange`, reajuste o tamanho do canvas. No iPhone, a tela cheia só funciona com o app instalado.

Os jogos de exemplo mais simples são `lander/index.html` (procure por `voltarAosJogos` e `seguro`) e `fortaleza/index.html` (procure por `goFullscreen` e `'home'`).

### 4. Cartão na página inicial

Inclua uma linha no array `JOGOS`, no topo do `index.html` da raiz, na ordem em que o cartão deve aparecer:

```js
{ nome: 'Nome do Jogo', url: '<pasta>/', compat: 'Computador e celular',
  descricao: 'Uma frase que diga o que se faz no jogo.',
  desenho: '<rect width="160" height="100" fill="#123"/>…' },
```

- `compat`: "Computador e celular", ou "Melhor no computador · funciona no celular".
- `desenho`: o miolo de um SVG de 160x100, sem a tag `<svg>`. Siga o estilo dos outros cartões: fundo de cor chapada e formas simples.

### 5. Registro

- Acrescente o jogo à tabela no topo deste README e à lista de pastas no começo do `CLAUDE.md`.
- Acrescente o prefixo à tabela do passo 1.
- Se o jogo tiver controles ou regras que valha explicar, escreva um `<pasta>/README.md`, como os de `tenis/` e `lander/`.

### 6. Teste

Com o servidor de teste no ar, confira em `http://localhost:8765/`:
- o cartão aparece e abre o jogo;
- o botão "Jogos" volta para a página inicial;
- o jogo funciona no celular, pelo IP do PC na mesma rede Wi-Fi;
- todas as chaves salvas começam com o prefixo (veja nas ferramentas do navegador, em Armazenamento).

### 7. Commit e publicação

- O jogo novo é um commit só, com a pasta e a página inicial juntas: `git add <pasta>/ index.html README.md CLAUDE.md`. É a única vez em que um commit de jogo mexe fora da pasta dele. A mensagem fica assim: "Nome do Jogo: novo jogo, ...".
- Publique com `publicar.bat`. Um ou dois minutos depois, confira o jogo no endereço público.
