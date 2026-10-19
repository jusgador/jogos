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
- Regras oficiais: 15/30/40, vantagem, tie-break, melhor de 3 sets, 2º saque e troca de lado.
- Física da bola com arrasto, efeito Magnus (topspin e slice), quique e rede.
- Replay em câmera lenta nos pontos de set e partida e, de vez em quando, nos pontos bonitos (ace, rally longo, winner de drop shot, lob, voleio ou golpe perfeito, quebra de saque).
- Quadra de piso rígido ou de saibro.

## Desempenho

Ao carregar, o jogo mede o FPS. Se o WebGPU ficar abaixo de 45 FPS, ele passa a usar WebGL 2 e guarda essa escolha no navegador. Use `?webgpu` ou `?webgl` na URL para forçar um dos dois.
