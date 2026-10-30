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

Há duas miras, escolhidas no menu (`Mira`):

- **Força na mão** (padrão): arrastar para os lados, tocar no lugar ou usar o quadro do bolim, visto de cima no canto, só escolhe a direção, que aparece como uma linha de pontinhos. A força vem da barra: segurando LANÇAR (ou o Espaço), ela enche e esvazia sem parar, e a bola vai mais longe quanto mais cheia estiver ao soltar. Metade da barra cobre a zona do bolim (da linha do meio à última linha), para dar mais precisão ali; os tracinhos marcam o meio, a última linha e o fundo. A marca branca mostra onde aquele lado soltou da última vez, por tipo de lançamento. A barra leva 3,6 s para encher no fácil, 3 s no normal e 2,4 s no difícil, e no fácil uma faixa clara mostra a força para chegar no bolim.
- **Círculo:** o círculo no gramado é onde a bola deve parar (ou cair, na bochada), como se o gramado fosse plano, e o jogo calcula a força. Arraste para mexer nele (quanto mais devagar, mais fino o ajuste), toque direto no lugar ou use o quadro do bolim. Um clique em LANÇAR lança.
- **Lançamentos:** Rasteira (rola o caminho todo), Por cima (voa, cai e rola pouco) e Bochada (voa direto, para tirar uma bola do lugar). ◀ ▶ mudam o lugar de onde se lança.
- **Teclado:** setas (Shift: mais rápido), A e D para o lugar, T troca o lançamento, Espaço lança (na força, segure e solte), P ou Esc pausa. No círculo, a roda do mouse muda a distância. Segurar o clique, o dedo ou o Espaço acelera a bola rolando.

## Níveis

- O gramado tem caimento: inclinação geral e ondulações, diferentes a cada partida. A seta no quadro do bolim mostra para onde a bola puxa ali.
- **Fácil:** caimento leve, e a trajetória pontilhada já mostra a curva. CPU imprecisa.
- **Normal** e **Difícil:** a trajetória é a do gramado plano, e o caimento é mais forte. A CPU simula as jogadas possíveis (encostar, passar por cima, bochar de frente ou de raspão, empurrar o bolim) e escolhe a melhor; no difícil, prefere as que dão certo mesmo com a mão tremendo.

## Desafios

Nove situações de jogo, com até três estrelas cada. A melhor nota de cada uma fica salva.

## Dados salvos

Prefixo `bocha-` no `localStorage`: `bocha-config` (nível, pontos da partida, mira, som, jogadores escolhidos), `bocha-stats` (vitórias, sequência, melhor encostada, bochadas) e `bocha-desafios` (estrelas).
