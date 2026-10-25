# Sinuca de Bico

Sinuca e bilhar de bar em visão de cima, num único arquivo HTML ([index.html](index.html)), com Canvas 2D e JavaScript puro. A mesa, as bolas e o taco são desenhados por código; não há imagens nem áudios externos. O jogo está sendo feito em etapas (lista no fim).

## Como jogar

Abra pelo servidor de teste da raiz (ver o README de lá), em `http://localhost:8765/sinuca/`.

- **Jogar:** escolha o modo (por enquanto **Bola 8**, **Par × Ímpar** e **Contagem de pontos**), os jogadores (2 a 4, ou duas duplas na Bola 8 e no Par × Ímpar), o nível e as variantes. Todos jogam no mesmo aparelho, passando a vez.
- **Treino livre:** sem regras, com as bolas que você escolher no menu.
- **Como jogar:** as regras de cada modo, com diagramas e a lista de variantes.

### Partidas

- **Variantes:** cada modo tem as suas (cantar caçapa e penalidade da falta na Bola 8; papel da 8 e punição da bola errada no Par × Ímpar; ordem das bolas e penalidade da branca na Contagem), explicadas no preparo e no "Como jogar".
- **Regra da casa:** no preparo, dê um nome à combinação de variantes e salve; ela aparece na lista "Regra da casa" daquele modo.
- **Níveis:** Aprendiz (mira longa com o caminho da branca, cada falta explicada num balão, desfazer à vontade, sem relógio); Clube (saída da bola-alvo, balão só nas faltas, um desfazer por jogador, 60 s por tacada); Profissional (só a linha até o contato, throw, sem dicas nem desfazer, 45 s por tacada, ajustável nas configurações). O desfazer só volta a própria última tacada, antes de o próximo jogador mexer na mesa.
- **Placar:** um cartão por jogador ou dupla, com avatar, grupo e bolas que faltam (ou pontos), sequência (x2, x3) e o relógio da tacada. Embaixo, de quem é a vez, a bola da vez, a caçapa cantada, a bola na mão e o efeito.
- **Passa-e-joga:** a troca de vez aparece num aviso. Nas configurações dá para ligar a tela "Passe o aparelho" em toda troca (com as bolas secretas do Mata-mata ela vai ser obrigatória).

## Controles

- **Computador:** mova o mouse para mirar. Segure o botão e puxe para trás: o taco recua; solte para tacar (puxar de volta até o começo cancela). A barra de força à direita também taca: arraste para baixo e solte.
- **Teclas:** ← → ou a roda do mouse fazem o ajuste fino da mira, de 0,1° (com Shift, 0,01°). ↑ ↓ mudam a força da barra; Espaço ou Enter tacam com ela (o taco recua e avança). W, S, A e D movem o ponto do efeito; C o centraliza. Z desfaz, M liga o modo de mover bolas, R arruma as bolas, Esc abre o menu.
- **Efeito:** no computador, o seletor fica acima da barra de força: arraste o ponto vermelho na bola (duplo clique centraliza). Em cima dá siga, embaixo puxeta, dos lados efeito lateral. Fora do círculo tracejado o taco pode escorregar (miscue).
- **Celular:** toque ou arraste na mesa para mirar. Ajuste fino: gire o anel do canto ou arraste com dois dedos. Força: arraste a barra da direita para baixo e solte; arrastar para fora dela cancela. O efeito abre num painel ao tocar no ícone da branca, acima da barra; tocar fora do painel o fecha. Em retrato, o jogo pede para girar o aparelho, mas dá para jogar assim mesmo, com a mesa em pé.
- **Bolas:** no treino, a branca pode ser arrastada para qualquer lugar livre e, com ✥ ligado, qualquer bola. Na partida, só com bola na mão (na abertura, atrás da linha de saída).
- **Cantar caçapa:** quando a regra pede, toque na caçapa onde a bola vai cair; ela fica dourada.
- **Penalidade "tira uma bola dele":** o jogador da vez toca numa bola sua, marcada com um anel, para tirá-la da mesa.

Depois de cada tacada, o painel mostra a velocidade, o ângulo, a primeira bola tocada, as tabelas da branca e as bolas que caíram. O nível escolhido no menu muda a mira: o Aprendiz simula a tacada e mostra o caminho real da branca (com squirt, curva, puxeta e siga) e a saída da bola-alvo; o Clube mostra só a saída da bola-alvo; o Profissional, só a linha até o contato, e só nele há throw.

O som (choques, tabela, taco, caçapa, rolamento e o ambiente de bar opcional) tem volumes separados no menu e liga e desliga pelo botão 🔊.

## Física

Passo fixo de 240 Hz, em milímetros e segundos. Cada bola tem posição, velocidade e giro em três eixos e passa de deslizando a rolando e a parada. O choque entre bolas é uma mola rígida de 0,2 ms com restituição 0,95: quando várias bolas se tocam ao mesmo tempo, como na abertura, a energia se divide sozinha. Toques mais lentos que 15 cm/s viram impulso instantâneo, para não gastar passos curtos com bolas encostadas. Tabelas e mandíbulas das caçapas são choques instantâneos com restituição da mesa.

O taco dá à branca o giro do ponto de contato: siga e puxeta no eixo horizontal (o rolamento natural fica a 0,4 do raio acima do centro), lateral no vertical. O lateral também desvia a saída um pouco para o outro lado (squirt) e, como o taco fica levemente inclinado, encurva de leve as tacadas fortes. Na tabela, o atrito com a borracha usa o giro lateral e muda o ângulo de saída. Entre bolas, o atrito no contato passa giro de uma para a outra; no Profissional ele também desvia a bola-alvo (throw, uns 2° num corte de 30°). A bola cai quando o centro passa sobre o buraco; a que bate na mandíbula pode voltar. Todos os coeficientes ficam na tabela `FISICA`, no começo do arquivo, com faixas para testar.

Ao fim de cada tacada, a física entrega ao motor de regras o registro da jogada: primeira bola tocada, todos os contatos da bola do jogador (com as tabelas antes de cada um), tabelas depois do contato, bolas encaçapadas e em que caçapa, branca na caçapa e bolas fora da mesa.

## Dados salvos

No `localStorage`, com o prefixo `sinuca-`: `sinuca-config` (bolas do treino, nível do treino, feltro, rastro, vibração, som e volumes, tempo do Profissional, tela entre as vezes), `sinuca-preparo` (o último preparo de cada modo: nomes, nível, variantes) e `sinuca-regras-casa` (as regras da casa salvas).

## Testes

Com `#teste` no endereço (`http://localhost:8765/sinuca/#teste`), o console ganha `__sinuca`, com a física, o jogo e o som, para simular tacadas sem desenhar.

## Motor de regras

Cada modo é um objeto em `REGRAS`, com a mesma interface: `montar(sim, estado)`, `bolaDaVez(estado)`, `validarJogada(registro, estado)` → `{ falta, continuaJogando, pontos, bolaNaMao, recolocar, eliminados, fimDePartida, vencedor, mensagemDica, mensagemCurta, penalidade }`, `textoRegras`, `diagramas` e `pontuacaoHUD(estado, lado)`. O gerenciador `Partida` cuida dos lados (um jogador ou uma dupla, que revezam), da vez, das eliminações e das fotografias para desfazer. Detalhes de regra que esta versão decidiu:

- Bola 8: a 8 que cai na abertura volta à marca, e a partida segue. Com a mesa aberta, tocar primeiro na 8 é falta.
- Par × Ímpar: bola de um jogador encaçapada pelo outro conta para o dono; bolas do faltoso que caem numa tacada com falta voltam à mesa.
- Contagem: se a mesa acabar antes de alguém chegar a 61, vence quem tem mais pontos. Na variante "pontos para o próximo", ele ganha o valor da menor bola da mesa.

## Etapas

1. **Base física e mesa** (pronta): mesa de clube, bolas com número e listra girando, física sem efeito, registro da jogada, mira com bola fantasma, controles de mouse e toque, treino livre.
2. **Efeito, som e polimento** (pronta): seletor de efeito no computador e no celular, puxeta, siga, lateral, curva leve, miscue, throw no Profissional, som sintetizado com volumes, taco que recua e se desloca com o efeito, marca de giz.
3. **Regras e modos de bar** (pronta): motor de regras para 2 a 6 jogadores, duplas, variantes e regra da casa; Bola 8, Par × Ímpar e Contagem de pontos no passa-e-joga; níveis com balões, desfazer e relógio; telas de modo, preparo, como jogar, configurações e fim; placar completo.
4. Mata-mata, Três Jogadores, Sinuca Brasileira, Bola 9, Carambola e as outras mesas.
5. Inteligência artificial e os 8 adversários.
6. Campeonatos, estatísticas e progresso salvo.
7. Snooker, desafios de tacada e revisão para celular.

### Pendências conhecidas

- Por enquanto todas as partidas são na mesa de clube; as mesas de bar e oficial chegam na etapa 4.
- O botão "Dica" do Aprendiz depende da IA (etapa 5).
- Quem abre a partida é o jogador 1; em "Jogar de novo", abre o seguinte.

- A abertura forte encaçapa em média meia bola, um pouco menos que numa mesa real.
- A previsão do Aprendiz é recalculada no máximo a cada 90 ms e com teto de 4 ms; mirando no triângulo com força alta, o caminho da branca depois do choque sai mais curto.
- O efeito lateral na tabela é forte (meio efeito tira a bola uns 28° numa batida de frente); `atritoTabela` regula.
- A altura da borracha não entra no cálculo: siga e puxeta não mudam a saída da tabela, só o rolamento depois dela.
- O ângulo de corte sai até 0,2° mais aberto que o da bola fantasma, por causa da duração do contato.
- Em retrato, a luz das bolas gira junto com a mesa.
