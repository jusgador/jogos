# Lunar Lander Vetorial

Jogo de pouso de nave no estilo do Lunar Lander (Atari, 1979), em um único arquivo HTML ([index.html](index.html)), feito com Canvas 2D e JavaScript puro. Não usa bibliotecas nem assets externos: gráficos vetoriais, fonte e sons são todos gerados por código.

## Como jogar

Abra `index.html` no navegador. Não precisa de servidor, mas o botão "Jogos" e a instalação como app só funcionam pelo servidor de teste da raiz (ver o README de lá), em `http://localhost:8765/lander/`.

Pouse numa plataforma plana com velocidade vertical abaixo de 16, horizontal abaixo de 9 e a nave quase na vertical (menos de 8°). Plataformas menores valem mais (x2, x3, x5). Pontos = multiplicador × combustível ÷ 4 + bônus de pouso suave.

## Controles

- **Modo clássico:** ← → giram a nave; ↑ ou Espaço liga o propulsor.
- **Modo arcade:** ← → dão empuxo lateral; ↑ ou Espaço sobe ou freia a queda.
- **Teclas:** P pausa, R reinicia, M liga e desliga o som, G troca a cor (branco ou verde fósforo), Esc volta ao menu.
- **Celular:** botões de toque para esquerda, direita e propulsor, que aparecem no primeiro toque.
- **Fase inicial:** depois de passar da fase 1, o menu ganha o item "FASE INICIAL", para começar em qualquer fase já alcançada (até a 10). ← e → mudam a fase.

## Fases

São dez fases em ciclo. As cinco primeiras mudam o relevo; as cinco seguintes mudam também a forma de jogar:

1. Lua: planície
2. Lua: crateras
3. Marte: cânions com paredes e torres
4. Marte: montanhas
5. Planeta X: caverna. Um poço de paredes irregulares com saliências alternadas dos dois lados: a nave desce em zigue-zague, de lado e depois para baixo. Há plataformas x2 e x3 nas saliências e x5 no fundo. Bater no teto ou na parede destrói a nave.
6. Titã: mesas sob vento. Mesas de paredes verticais, com a x5 no topo estreito da mais alta. O vento empurra a nave de lado, muda de força e de direção devagar, tem rajadas e é mais fraco rente ao chão. O painel mostra o vento, e a poeira risca a tela na direção dele.
7. Europa: plataformas móveis. O chão é gelo pontiagudo, sem lugar para pousar. As plataformas flutuam em três alturas e vão e vêm (a x5, mais rápida, também sobe e desce). Para pousar é preciso acompanhar a plataforma: os limites de velocidade valem em relação a ela, e a nave pousada segue com ela. Bater nela de lado ou por baixo destrói a nave.
8. Io: vulcões. Três vulcões lançam rochas de tempos em tempos, em arcos rápidos; pouco antes, a cratera solta faíscas. Uma rocha que encosta na nave a destrói.
9. Ceres: pouso em sequência. Gravidade bem baixa e três plataformas, 1, 2 e 3, em vales separados por dois pináculos. É preciso pousar na ordem: nas duas primeiras a nave para, ganha pontos e decola de novo; a 3 (x5) encerra a fase. A 1 fica do lado oposto ao da chegada. Se a nave for destruída, os pousos feitos continuam valendo.
10. Mercúrio: túnel. Um maciço atravessado por um túnel sinuoso e sem saída, com estalactites, estalagmites e trechos apertados. x2 logo na entrada, x3 no meio e x5 no fim.
11. Daí em diante, o ciclo recomeça mais difícil: gravidade 25% maior a cada volta, plataformas menores e, nas fases novas, mais vento, plataformas mais rápidas, mais rochas, pináculos mais altos e túnel mais apertado.

O combustível é recarregado em parte a cada fase, e por completo na caverna, no pouso em sequência e no túnel.

A câmera aproxima conforme a nave chega perto do terreno, embaixo ou dos lados, e muda o zoom devagar. Plataformas que ficam fora da tela aparecem como setas na borda, com o multiplicador. Destruir a nave custa 200 de combustível, e o jogo acaba quando ele zera. O recorde fica salvo no navegador.

## Pendências

- Testar num celular de verdade: tamanho do texto, botões cobrindo o terreno, desempenho do brilho.
- Talvez adaptar a ajuda do menu para o toque.
- Jogar as fases à mão para ajustar a dificuldade, principalmente o x5 nos cânions, o fundo da caverna e as fases 6 a 10 (força do vento, velocidade das plataformas móveis, frequência das rochas, combustível no pouso em sequência e no túnel). As fases novas foram testadas com um piloto automático no navegador, não à mão.
