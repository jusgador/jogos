# Bocha do Clube

Bocha numa cancha de grama sintética, no gramado do clube, ao lado do campo de golfe. Um `index.html` só: three.js por CDN; cenário, texturas e sons feitos por código.

## Jogadores

A mesma turma do Campos Tennis: Leonardo, Ricardo, Beatriz e Lícia. No menu se escolhe quem você é e quem é o adversário (a CPU, ou o segundo jogador). Os bonecos, rostos e cabelos vêm de `tenis/index.html` (`drawFace`, `buildHair`, `bakeGroups`, `poseCelebrate`, `poseDefeat`); as poses do arremesso são próprias da bocha. Quem faz uma bochada ou encosta no bolim comemora, e no fim da partida o vencedor pula e o perdedor lamenta.

## Regras

- Quem começa joga o bolim, que precisa parar entre a linha do meio e a última linha. Se errar, o outro lado tenta; se errar de novo, o bolim vai para o meio da cancha.
- Depois joga sempre o lado que está perdendo o ponto, até acabarem as quatro bolas de cada lado.
- Ao fim da rodada, o lado com a bola mais perto marca um ponto para cada bola sua mais perto que a melhor do adversário, e joga o bolim na rodada seguinte.
- Bola que bate na tábua do fundo sem encostar em outra, ou que passa por cima da tábua, é bola morta e sai.
- A partida vai até 7 ou 12 pontos.

## Controles

- **Mira:** o círculo no gramado é onde a bola deve parar (ou cair, na bochada), como se o gramado fosse plano. Arraste para mexer nele (quanto mais devagar, mais fino o ajuste), toque direto no lugar ou use o quadro do bolim, visto de cima, no canto.
- **Lançamentos:** Rasteira (rola o caminho todo), Por cima (voa, cai antes da mira e rola pouco) e Bochada (voa direto até a mira, para tirar uma bola do lugar). ◀ ▶ mudam o lugar de onde se lança.
- **Teclado:** setas (Shift: mais rápido), roda do mouse para a distância, A e D para o lugar, T troca o lançamento, Espaço lança, P ou Esc pausa. Segurar o clique, o dedo ou o Espaço acelera a bola rolando.

## Níveis

- O gramado tem caimento: inclinação geral e ondulações, diferentes a cada partida. A seta no quadro do bolim mostra para onde a bola puxa ali.
- **Fácil:** caimento leve, e a trajetória pontilhada já mostra a curva. CPU imprecisa.
- **Normal** e **Difícil:** a trajetória é a do gramado plano, e o caimento é mais forte. A CPU simula as jogadas possíveis (encostar, passar por cima, bochar de frente ou de raspão, empurrar o bolim) e escolhe a melhor; no difícil, prefere as que dão certo mesmo com a mão tremendo.

## Desafios

Nove situações de jogo, com até três estrelas cada. A melhor nota de cada uma fica salva.

## Dados salvos

Prefixo `bocha-` no `localStorage`: `bocha-config` (nível, pontos da partida, som, jogadores escolhidos), `bocha-stats` (vitórias, sequência, melhor encostada, bochadas) e `bocha-desafios` (estrelas).
