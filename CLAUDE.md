# Jogos

Um repositório só para a página inicial e todos os jogos, publicado no GitHub Pages (https://jusgador.github.io/jogos/). Cada jogo é desenvolvido direto na sua pasta, num único `index.html`: `tenis/` (Campos Tennis), `lander/` (Lunar Lander Vetorial), `asas/` (Asas de Aço), `fortaleza/` (Bruce Lee 64 - A Fortaleza) e `poker/` (Poker Texas Hold'em). Os detalhes estão no README.md.

## Os jogos andam juntos

- Os jogos dividem o domínio, o app instalável e a publicação. Todo jogo segue a seção "App instalável" do README e usa um prefixo próprio no `localStorage`.
- **Jogo novo:** antes de começar, leia a seção "Acrescentar um jogo" do README e siga o roteiro até o fim, inclusive o registro do jogo neste arquivo e no README.

## Commits

- Pode haver outra sessão mexendo em outro jogo nesta mesma pasta ao mesmo tempo. Trabalhando num jogo, mexa só na pasta dele.
- No commit, adicione só a pasta do jogo (`git add asas/`). Nunca use `git add -A`, `git add .` ou `git commit -a`. Se `git status` mostrar alteração em outra pasta, ela não é sua: deixe como está.
- Comece a mensagem com o nome do jogo: "Asas de Aço: modos fácil, normal e difícil".
- Uma mudança que vale para todos os jogos, ou para a página inicial, é um commit só, feito a partir da raiz.
- Ao fim de cada tarefa, faça o commit do que você mudou, para não deixar alteração solta para a próxima sessão.

## Publicar

Enviar (`git push`, ou `publicar.bat`) já publica no ar. Só envie quando eu pedir.

## Testar

Use a configuração `jogos` do `.claude/launch.json`, que serve a raiz em `http://localhost:8765/`. A pasta de um jogo fica em `http://localhost:8765/asas/` e assim por diante. Servir só a pasta do jogo quebra o manifest e o botão "Jogos".
