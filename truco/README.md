# Truco do Clube

Truco paulista para quatro: você e um parceiro (CPU) contra uma dupla de CPUs. Os jogadores são a turma do Campos Tennis e da Bocha do Clube. No menu você escolhe quem é e quem é o seu parceiro; os outros dois são os adversários.

## Regras

- **Baralho:** 40 cartas, sem 8, 9 e 10. Ordem, da mais fraca para a mais forte: 4, 5, 6, 7, Q, J, K, A, 2, 3.
- **Vira e manilha:** a manilha é o valor seguinte ao da vira (depois do 3 vem o 4). Entre as manilhas: ♦ ouros (pica-fumo), ♠ espadas (espadilha), ♥ copas e ♣ paus (zap).
- **Vazas:** ganha a mão quem faz duas de três. Na vaza empatada (cartas do mesmo valor, de times diferentes): com a primeira empatada, leva quem ganhar a segunda; com a primeira decidida, um empate depois dá a mão a quem fez a primeira; três empates, ninguém pontua. Depois de um empate, começa a próxima vaza quem jogou primeiro a carta do empate.
- **Ordem:** a vez passa para a direita (sentido anti-horário). Quem está à direita de quem deu as cartas começa.
- **Truco:** na sua vez, antes de jogar: truco (3), seis, nove e doze. O time pedido aceita, corre (o outro ganha o valor anterior) ou aumenta. Quem pediu por último não aumenta de novo.
- **Pagou para ver:** regra da casa. Com um pedido aceito, as cartas que sobraram são mostradas no fim da mão, para dar para descobrir os blefes. As cartas jogadas cobertas continuam escondidas.
- **Carta coberta:** da segunda vaza em diante.
- **Mão de onze:** o time com 11 vê as cartas do parceiro e decide se joga (vale 3) ou corre (1 ponto para os outros). Sem truco.
- **Mão de ferro:** no 11 a 11, todos jogam no escuro, sem ver nem as próprias cartas.
- **Partida:** a 12 pontos.

## Controles

Clique ou toque na carta. Teclado: 1, 2 e 3 jogam as cartas; T pede truco ou aumenta; C liga a carta coberta; na resposta, A aceita e C corre; na mão de onze, J joga e C corre; Esc pausa.

## A CPU

Cada decisão sai de simulações: a CPU sorteia muitas vezes as cartas que não conhece, joga o resto da mão de forma simples e mede a chance de o time dela ganhar. Com essa chance ela escolhe a carta e decide se pede truco, aceita, corre ou aumenta. A personalidade (`PERS`) muda os limites:

| Quem | Estilo | Como ler |
|---|---|---|
| Leo | blefador | pede muito e quase nunca corre; quando grita demais, é blefe |
| Bia | cautelosa | só pede com jogo e corre fácil; quando demora para responder, está fraca |
| Lícia | calculista | arrisca conforme o placar; a fala não entrega nada; é quem mais repara nos seus blefes |
| Ricardo | cascudo | quase nunca pede primeiro, mas aumenta quando você pede; quando demora, cuidado |

As falas têm uma versão de mão forte e outra de blefe, e cada um "entrega" a mão numa proporção diferente (`fidelidade`). O tempo de resposta também entrega.

A CPU também lê você: ela conta os seus pedidos que acabaram à vista e quantos eram blefe, e acredita mais ou menos nos seus trucos (a Lícia muito, o Leo quase nada).

## Dados salvos (`localStorage`, prefixo `truco-`)

- `truco-config`: personagens escolhidos, som, voz, ritmo, destaque das manilhas.
- `truco-estat`: partidas, vitórias, sequência e recorde.
- `truco-fichas`: o que você viu de cada um (tela "A turma"). A leitura de cada um aparece depois de 20 mãos contra ele.
- `truco-voce`: os seus blefes que a turma viu.
- `truco-partida`: a partida em andamento, que recomeça na mão em que parou.
