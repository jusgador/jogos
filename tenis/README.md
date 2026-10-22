# Campos Tennis

Jogo de tênis 3D em um único arquivo HTML ([tenis.html](tenis.html)), feito com three.js (WebGPURenderer, com troca automática para WebGL 2). Tudo é procedural: personagens, quadra, estádio, texturas e sons. Não usa nenhum asset externo além do three.js via CDN.

Jogue online: https://jusgador.github.io/campos-tennis/

## Como jogar

Abra `tenis.html` por um servidor HTTP. Abrir direto do disco funciona no Firefox, mas não em todos os navegadores.

```bash
python -m http.server 8000
```

Depois acesse `http://localhost:8000/tenis.html`. No celular, use o IP do PC na mesma rede Wi-Fi.

## Controles

- **Desktop:** WASD ou setas movem o jogador. O mouse (ou J/L/I/K) mira. Segure Espaço para carregar a força e solte na chegada da bola; a zona dourada do medidor dá o golpe perfeito. Shift faz slice e E faz drop shot e Q faz lob (com o adversário na rede). R mostra o replay, M liga e desliga o som, F mostra ou oculta o FPS e Esc pausa.
- **Na rede:** um toque em Espaço já faz o voleio, sem carregar força.
- **Saque:** segure Espaço para lançar a bola e solte perto do ponto mais alto.
- **Drop shot:** E (ou o botão DROP no celular) faz a deixadinha com um toque, curta e com slice, logo depois da rede. Do fundo da quadra ela é mais arriscada.
- **Lob:** quando o adversário sobe à rede, Q (ou o botão LOB, que só aparece nessa hora no celular) joga a bola por cima dele.
- **Celular:** joystick virtual e botões GOLPE, SLICE e DROP, mais o LOB quando o adversário está na rede.

## Recursos

- Quatro personagens: Leonardo, Ricardo, Beatriz e Lícia, com atributos diferentes.
- IA em três dificuldades (fácil, médio e difícil).
- Partida amistosa em melhor de 3 sets ou campeonato: três vitórias (quartas, semifinal e final) com 1 set por partida. No campeonato, os adversários são os outros três da turma ou três profissionais sorteados entre Djokovic (o mais forte), Nadal, Federer, Guga, Alcaraz e Monteiro (um degrau abaixo). O mais forte sorteado fica para a final.
- Partida curta (opcional, amistosa ou campeonato): 1 set de 4 games, com tie-break no 4-4.
- Campeonatos: Porto das Dunas Open, numa arena de praia aberta para o mar, com coqueiros e, do outro lado, dunas com eólicas; Golf Ville Open, numa quadra de clube cercada por alambrado, sem plateia, entre outra quadra de tênis e uma poliesportiva; e Chicago Open, no meio dos arranha-céus (Willis Tower, John Hancock, Marina City), com o Cloud Gate atrás de um fundo, a Buckingham Fountain atrás do outro, o trem elevado "L" passando e a roda-gigante do Navy Pier no lago Michigan. A partida amistosa é no estádio.
- Sala de troféus: uma taça por campeonato e dificuldade (bronze no Fácil, prata no Médio, ouro no Difícil) e o Grand Slam de cada dificuldade, ao vencer os três campeonatos nela ou acima.
- Raquetes especiais, só visuais, ganhas com títulos e feitos: Coqueiro (Porto das Dunas Open), Clube (Golf Ville Open), Neon (Chicago Open), Pneu (set sem perder games), Relâmpago (10 golpes perfeitos numa partida), Djoko (vencer o Djokovic), Prata (Grand Slam no Médio) e Dourada (Grand Slam no Difícil). No golpe perfeito, o rastro da bola sai na cor da raquete.
- Tudo fica guardado no navegador: títulos, troféus, raquetes, histórico (partidas, vitórias, derrotas, sets, games, sequências e retrospecto contra cada adversário) e o campeonato em andamento, com o placar gravado a cada ponto. No menu, "Continuar campeonato" retoma de onde parou.
- Regras oficiais: 15/30/40, vantagem, tie-break, 2º saque e troca de lado.
- Física da bola com arrasto, efeito Magnus (topspin e slice), quique e rede.
- Replay em câmera lenta nos pontos de set e partida e, de vez em quando, nos pontos bonitos (ace, rally longo, winner de drop shot, lob, voleio ou golpe perfeito, quebra de saque).
- Quadra de piso rígido ou de saibro.

## Desempenho

Ao carregar, o jogo mede o FPS. Se o WebGPU ficar abaixo de 45 FPS, ele passa a usar WebGL 2 e guarda essa escolha no navegador. Use `?webgpu` ou `?webgl` na URL para forçar um dos dois.
