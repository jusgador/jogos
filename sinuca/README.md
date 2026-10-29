# Sinuca de Bico

Sinuca e bilhar de bar em visão de cima, num único arquivo HTML ([index.html](index.html)), com Canvas 2D e JavaScript puro. A mesa, as bolas e o taco são desenhados por código; não há imagens nem áudios externos. O jogo foi feito em 7 etapas (lista no fim).

## Como jogar

Abra pelo servidor de teste da raiz (ver o README de lá), em `http://localhost:8765/sinuca/`.

- **Jogar:** escolha o modo, os jogadores (cada lugar é um humano ou um dos 8 adversários do computador, à vontade misturados, até nas duplas), o nível, a mesa, a cor do feltro e as variantes. Os humanos jogam no mesmo aparelho, passando a vez. Os modos:
  - **Bola 8** e **Par × Ímpar**: 2 jogadores ou duas duplas.
  - **Carioquinha**: 2 jogadores ou duas duplas, com quatro bolas amarelas, quatro azuis e a branca no centro.
  - **Contagem de pontos ("61")**: 2 a 4 jogadores.
  - **Mata-mata**: 2 a 6 jogadores, com bolas secretas sorteadas.
  - **Três jogadores**: grupos 1–5, 6–10 e 11–15.
  - **Sinuca brasileira**: tradicional ou "sinuca de bar".
  - **Bola 9**, com push out no Profissional.
  - **Carambola**: livre ou três tabelas, na mesa sem caçapas.
  - **Snooker internacional**: 2 jogadores, na mesa oficial, com 15, 10 ou 6 vermelhas e bola livre opcional.
- **Mesas:** de bar (2,00 × 1,00 m, bolas de 54 mm, caçapas largas, feltro mais lento e meia-lua), de clube (pool de 9 pés), oficial de sinuca (3,57 × 1,78 m, caçapas justas) e de carambola. Cada modo oferece as mesas que fazem sentido para ele.
- **Campeonato:** você e 7 adversários do computador (ver abaixo).
- **Desafios:** 11 posições montadas, cada uma com objetivo, extra e nota de 1 a 3 estrelas (ver abaixo).
- **Treino livre:** sem regras, em qualquer mesa, com as bolas que você escolher no menu (na carambola, as três bolas).
- **Estatísticas:** por jogador humano (pelo nome): partidas, vitórias (no total e por modo), acerto, maior sequência, aberturas com bola encaçapada e os troféus dos campeonatos vencidos.
- **Como jogar:** as regras de cada modo, com diagramas e a lista de variantes.

### Partidas

- **Variantes:** cada modo tem as suas (cantar caçapa e penalidade da falta na Bola 8; papel da 8 e punição da bola errada no Par × Ímpar; arrumação, penalidade da falta e última bola do adversário na Carioquinha; ordem das bolas e penalidade da branca na Contagem), explicadas no preparo e no "Como jogar".
- **Regra da casa:** no preparo, dê um nome à combinação de variantes e salve; ela aparece na lista "Regra da casa" daquele modo.
- **Níveis:** Aprendiz (mira longa com o caminho da branca, cada falta explicada num balão, desfazer à vontade, sem relógio); Clube (saída da bola-alvo, balão só nas faltas, um desfazer por jogador, 60 s por tacada); Profissional (só a linha até o contato, throw, sem dicas nem desfazer, 45 s por tacada, ajustável nas configurações). O desfazer só volta a própria última tacada, antes de o próximo jogador mexer na mesa.
- **Placar:** um cartão por jogador ou dupla, com avatar, grupo e bolas que faltam (ou pontos), sequência (x2, x3) e o relógio da tacada. Embaixo, de quem é a vez, a bola da vez, a caçapa cantada, a bola na mão e o efeito. Na mesa, quando a regra só deixa tocar primeiro uma, duas ou três bolas, elas ganham um brilho suave no feltro, por baixo da bola, que pulsa devagar.
- **Passa-e-joga:** a troca de vez aparece num aviso. Nas configurações dá para ligar a tela "Passe o aparelho" em toda troca; no Mata-mata ela aparece sempre.
- **Bolas secretas (Mata-mata):** antes da partida, cada jogador recebe o aparelho, toca em "Ver minhas bolas" e passa adiante. Na partida, a tela da vez e o botão 👁 Minhas bolas mostram só as bolas de quem está na vez. O placar diz quem está vivo e quantas bolas tem, nunca quais; no fim, a tela revela de quem era cada bola.
- **Botões do modo:** aparecem embaixo do placar quando o modo pede uma escolha: o grupo (Três jogadores), o push out e depois "Jogar daqui" ou "Devolver a vez" (Bola 9).
- **Dica (💡, só no Aprendiz):** o computador procura uma boa jogada para quem está na vez, deixa a mira, o efeito e a força prontos (e a branca no lugar, com bola na mão), destaca a bola e a caçapa e explica a jogada num balão.

### Campeonatos

| Campeonato | Formato | Fases | Adversários |
|---|---|---|---|
| Copa do Bar | chave | Bola 8, mesa de bar | os 7 mais fracos |
| Rei do Boteco | chave | quartas Par × Ímpar, semifinal Contagem, final Sinuca de bar (mesa de bar) | 7 sorteados |
| Noite do Mata-mata | mesas | duas mesas de 4; os 2 primeiros de cada vão à mesa final, e o último vivo dela é o campeão | 7 sorteados |
| Torneio Brasileiro | chave | Sinuca brasileira tradicional, mesa oficial | 7 sorteados |
| Circuito Misto | chave | quartas Bola 8, semifinal Bola 9, final Sinuca brasileira | 7 sorteados |
| Grand Slam Profissional | chave | nível Profissional obrigatório; Bola 9, Sinuca brasileira na mesa oficial e final, à escolha, em Carambola três tabelas (a 5 pontos) ou Snooker de 6 vermelhas | os 7 mais fortes |

Na chave, quartas, semifinal e final são séries de melhor de 3 ou de 5, à escolha; quem abre alterna a cada jogo. As séries entre adversários do computador são simuladas jogo a jogo, com a chance de cada um tirada dos atributos (mira pesa mais; na carambola, o efeito também) e do modo favorito; nas mesas do Mata-mata, sai um de cada vez, com chance maior para os mais fracos. A tela do campeonato mostra a chave (ou as mesas) com os resultados e o troféu, desenhado em canvas: apagado enquanto está em jogo, dourado para quem vence. O progresso fica salvo entre os jogos: dá para sair e continuar depois (um jogo interrompido recomeça). Se você cai, o resto é simulado até o campeão.

### Desafios de tacada

| # | Desafio | Objetivo | Extra |
|---|---|---|---|
| 1 | Bola reta | encaçapar a 1 no canto de cima, à direita | a branca para perto de onde bateu (tacada seca) |
| 2 | Puxeta | encaçapar a 5 no meio de cima | a branca volta até o círculo |
| 3 | Siga | encaçapar a 3 no canto de baixo, à direita | a branca segue e para no círculo |
| 4 | Corte fino | encaçapar a 2 num corte fino | a branca termina no círculo, à esquerda |
| 5 | Bola de tabela | encaçapar a 8 depois de ela bater numa tabela | ela cai no meio de baixo |
| 6 | Combinação | bater na 2 e fazer a 2 mandar a 9 para o canto | só a 9 cai |
| 7 | Defesa | tocar a 1 sem falta e deixar a branca a mais de 1,5 m dela | a branca para no círculo, perto do canto |
| 8 | De tabela | com duas bolas no caminho, acertar a 6 batendo antes numa tabela | a 6 cai |
| 9 | Posição | encaçapar a 7 no meio de cima | a branca para no círculo, de frente para a 8 |
| 10 | Abertura certeira | abrir o losango de 9 e encaçapar alguma bola | caem duas ou mais |
| 11 | Três tabelas | fazer um ponto de três tabelas, na mesa de carambola | a primeira bola tocada é a amarela |

Cada desafio tem 3 tentativas. Cumprir o objetivo vale ★; cumprir também o extra, ★★; tudo isso na primeira tentativa, ★★★. O círculo dourado na mesa mostra onde a branca deve parar. O nível (Aprendiz, Clube ou Profissional) é escolhido na lista e muda a mira, como nas partidas; não há relógio nem desfazer. A melhor nota de cada desafio fica salva, e a lista mostra o total de estrelas. Os desafios não entram nas estatísticas.

### Adversários do computador

| Apelido | Cidade | Mira | Força | Efeito | Estilo | Favorito |
|---|---|---|---|---|---|---|
| Tião Cotovelo | Juiz de Fora (MG) | 42 | 48 | 20 | ataca | Contagem |
| Dona Cidinha da Caçapa | Campinas (SP) | 55 | 58 | 35 | equilibrada | Par × Ímpar |
| Baiano Tacada Seca | Salvador (BA) | 62 | 70 | 42 | ataca muito | Bola 8 |
| Seu Lauro Giz Azul | Porto Alegre (RS) | 70 | 68 | 58 | defende | Sinuca brasileira |
| Marquinho do Bico | Belém (PA) | 75 | 74 | 68 | ataca | Mata-mata |
| Lucinha Três Tabelas | Curitiba (PR) | 80 | 84 | 86 | equilibrada | Carambola |
| Mestre Tonhão | Recife (PE) | 86 | 82 | 76 | equilibrado | Sinuca brasileira |
| Doutora Efeito | Rio de Janeiro (RJ) | 93 | 92 | 95 | equilibrada | Bola 9 |

Cada um tem avatar desenhado em canvas, frases de vitória e de derrota (na tela de fim) e joga um pouco melhor no modo favorito. Na vez do computador, o placar mostra "pensando…" de 0,6 a 1,5 s, o taco balança e a mira gira devagar até o ângulo escolhido.

## Controles

- **Computador:** mova o mouse para mirar. Segure o botão e puxe para trás: o taco recua; solte para tacar (puxar de volta até o começo cancela). A barra de força à direita também taca: arraste para baixo e solte.
- **Teclas:** ← → ou a roda do mouse fazem o ajuste fino da mira, de 0,1° (com Shift, 0,01°). ↑ ↓ mudam a força da barra; Espaço ou Enter tacam com ela (o taco recua e avança). W, S, A e D movem o ponto do efeito; C o centraliza. Z desfaz, M liga o modo de mover bolas, R arruma as bolas, Esc abre o menu.
- **Efeito:** no computador, o seletor fica acima da barra de força: arraste o ponto vermelho na bola (duplo clique centraliza). Em cima dá siga, embaixo puxeta, dos lados efeito lateral. Fora do círculo tracejado o taco pode escorregar (miscue).
- **Celular:** o dedo é o taco: a mira vai do dedo para a branca. Tocando em cima do taco (até 32 px de lado), ele não pula: gira só o que o dedo girar em volta da branca; longe dele, o taco vem para o dedo. Ajuste fino: gire o anel do canto (devagar, uma volta = 6°; só acima de uma volta por segundo acelera, até 24°) ou arraste com dois dedos (devagar, uns 0,5° por centímetro; rápido, até 4 vezes isso). Força: arraste a barra da direita para baixo e solte; arrastar para fora dela cancela. O efeito abre num painel ao tocar no ícone da branca, acima da barra; tocar fora do painel o fecha. Em retrato, o jogo pede para girar o aparelho, mas dá para jogar assim mesmo, com a mesa em pé e o placar à direita dos botões. Se o jogo perde o foco no meio da partida (troca de aplicativo, tela apagada), ele abre a pausa. Se um quadro passa de 14 ms de média por 3 segundos, a resolução do desenho cai (densidade de pixels 2 → 1,5 → 1) para manter os 60 quadros.
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

No `localStorage`, com o prefixo `sinuca-`: `sinuca-config` (bolas, nível e mesa do treino, feltro, rastro, vibração, som e volumes, tempo do Profissional, tela entre as vezes), `sinuca-preparo` (o último preparo de cada modo: jogadores humanos ou adversários, nomes, nível, mesa, feltro, variantes), `sinuca-regras-casa` (as regras da casa salvas), `sinuca-campeonato` (o campeonato atual, com a chave e os resultados), `sinuca-desafios` (a melhor nota de cada desafio) e `sinuca-estatisticas` (as estatísticas de cada jogador humano).

## Inteligência artificial

O planejador (seção 5 do código) trabalha em fatias de ~4 ms por quadro:

1. **Candidatas.** Para cada bola que o modo deixa tocar primeiro e cada caçapa, a mira pela bola fantasma, com caminho livre até a bola e da bola até a caçapa, e três efeitos (centro, siga, puxeta) em duas forças. Também jogadas de defesa (tocar devagar, cheio ou fino, as bolas mais perto) e, sem bola à vista, tacadas de tabela. Na carambola, cortes de 7 espessuras em cada bola; no três tabelas, uma busca larga de 288 direções.
2. **Simulação.** Cada candidata roda na física de verdade, numa cópia da mesa, sem desenhar.
3. **Nota.** O motor de regras julga o resultado; a nota soma vitória ou derrota, faltas, pontos, eliminações (pesando quem está mais perto de vencer), o avanço no próprio grupo, a facilidade da próxima tacada (para si, se continua, ou para o adversário, se a vez passa) e, nas tacadas de ataque, a chance de acerto calculada pelo erro do perfil. Na sinuca brasileira, errar a livre numa bola maior custa os pontos dela, e a IA só arrisca quando compensa.
4. **Erro humano.** A tacada escolhida sai com ruído de mira, de força e de efeito conforme os atributos (mira de 0,03° no 100 a 0,44° no 45).

Com bola na mão, a IA testa lugares para a branca atrás das melhores tacadas diretas. No Mata-mata ela só conhece as próprias bolas: o estado em que simula não tem os donos das outras. Também escolhe o grupo (Três jogadores), a bola que tira da mesa na penalidade e se joga ou devolve depois de um push out.

## Testes

Com `#teste` no endereço (`http://localhost:8765/sinuca/#teste`), o console ganha `__sinuca`, com a física, o jogo, a IA e o som, para simular tacadas e partidas inteiras sem desenhar (`IA.planejarJa`).

## Motor de regras

Cada modo é um objeto em `REGRAS`, com a mesma interface: `montar(sim, estado)`, `bolaDaVez(estado)`, `validarJogada(registro, estado)` → `{ falta, continuaJogando, pontos, bolaNaMao, recolocar, eliminados, fimDePartida, vencedor, mensagemDica, mensagemCurta, penalidade }`, `textoRegras`, `diagramas` e `pontuacaoHUD(estado, lado)`. Os modos podem ter ainda `acoes`/`executarAcao` (botões), `bloqueio` (impede a tacada até uma escolha), `bolaDoJogador` (carambola), `recolocarBola` (marcas da sinuca brasileira, tabela da Carioquinha), `minhasBolas` e `revelar` (bolas secretas). O gerenciador `Partida` cuida dos lados (um jogador ou uma dupla, que revezam), da vez, das eliminações e das fotografias para desfazer. Detalhes de regra que esta versão decidiu:

- Bola 8: a 8 que cai na abertura volta à marca, e a partida segue. Com a mesa aberta, tocar primeiro na 8 é falta.
- Par × Ímpar: bola de um jogador encaçapada pelo outro conta para o dono; bolas do faltoso que caem numa tacada com falta voltam à mesa.
- Carioquinha: é o jogo que a Wikipédia chama de Mata-mata ("sinuca duas cores"), com amarelas e azuis no lugar de amarelas e vermelhas; as amarelas são as bolas 1 a 4 e as azuis, 5 a 8, sem números. A primeira bola que a branca toca dá a cor de quem tacou. Tocar primeiro numa bola do adversário não é falta; encaçapá-la é, e ela fica fora, contando para ele. Branca na caçapa volta ao centro (sem bola na mão), e a bola de quem tacou que caiu junto volta para perto da tabela comprida da caçapa onde caiu. As duas chances acabam quando o jogador mata uma bola.
- Contagem: se a mesa acabar antes de alguém chegar a 61, vence quem tem mais pontos. Na variante "pontos para o próximo", ele ganha o valor da menor bola da mesa.
- Mata-mata: as bolas que sobram no sorteio não são de ninguém, mas derrubá-las dá a vez de novo. Vidas: quando todas as bolas de um jogador caem, ele perde uma vida e as bolas dele voltam à mesa. As mensagens não dizem de quem era a bola, só quem saiu ou perdeu uma vida. Não tocar em nada só passa a vez.
- Três jogadores: o primeiro a encaçapar na caçapa cantada (fora da abertura) escolhe o grupo; os outros dois ficam com os grupos que sobram, na ordem da vez.
- Sinuca brasileira: as bolas ficam nas marcas do snooker (amarela, marrom e verde na meia-lua; azul no centro; rosa no ponto do pé; vermelha logo atrás dela; preta perto da tabela do pé). Bolas que caem fora da regra voltam às marcas sem valer pontos. Empate com a mesa vazia: a preta volta e decide. Na sinuca de bar, a falta vale 4 pontos e errar a livre não dá pontos. No Aprendiz, o balão explica o "golpe de 20" (com só a rosa e a preta, uma sequência faz no máximo 20) e o "golpe de 27" (a um ponto dos 28).
- Bola 9: a 9 que cai numa falta volta à marca.
- Snooker: as vermelhas são as bolas 1 a 15 e as coloridas, 16 a 21 (valem o número menos 14). Depois de uma vermelha, a colorida escolhida é a primeira tocada, sem precisar cantar. A falta vale o maior entre 4 e o valor da bola da vez, da primeira tocada e das encaçapadas; coloridas que caem numa falta voltam à marca (ocupada: a marca livre de maior valor). Com branca na caçapa, o adversário joga da meia-lua e não há bola livre. A bola livre é decidida por linhas retas até as bordas das bolas da vez. Não há a regra do "miss" nem a escolha de devolver a tacada ao faltoso. Empate com a mesa vazia: a preta volta à marca e decide.
- Desafios: o motor `REGRAS.desafios` monta a posição a partir da tabela `DESAFIOS` (frações da mesa) e julga a tacada com um ajudante (`caiu`, `semFalta`, `primeira`, `tabelasAntes`, `naZona`, `distancia`, `pontoTresTabelas`…). Uma tentativa que falha remonta a posição (`reiniciar`).

## Etapas

1. **Base física e mesa** (pronta): mesa de clube, bolas com número e listra girando, física sem efeito, registro da jogada, mira com bola fantasma, controles de mouse e toque, treino livre.
2. **Efeito, som e polimento** (pronta): seletor de efeito no computador e no celular, puxeta, siga, lateral, curva leve, miscue, throw no Profissional, som sintetizado com volumes, taco que recua e se desloca com o efeito, marca de giz.
3. **Regras e modos de bar** (pronta): motor de regras para 2 a 6 jogadores, duplas, variantes e regra da casa; Bola 8, Par × Ímpar e Contagem de pontos no passa-e-joga; níveis com balões, desfazer e relógio; telas de modo, preparo, como jogar, configurações e fim; placar completo.
4. **Modos brasileiros, multijogador e mesas** (pronta): Mata-mata com sorteio secreto e tela de privacidade, Três jogadores, Sinuca brasileira tradicional e de bar, Bola 9 com push out, Carambola livre e três tabelas; mesas de bar, oficial e de carambola, com escolha de mesa e de feltro por partida.
5. **Inteligência artificial** (pronta): IA em todos os modos, multijogador e bolas secretas incluídos; os 8 adversários com avatar, modo favorito e frases; "pensando…"; botão Dica do Aprendiz; partidas mistas de humanos e computador.
6. **Campeonato e progresso** (pronta): os 6 campeonatos, com chave em séries ou mesas do Mata-mata; simulação entre os adversários do computador; troféu em canvas; estatísticas por jogador; progresso salvo para continuar depois.
7. **Snooker, desafios e celular** (pronta): Snooker internacional com bola livre e variantes de 15, 10 ou 6 vermelhas (também na final do Grand Slam); 11 desafios de tacada com estrelas; pausa ao perder o foco, qualidade de desenho adaptativa, placar no retrato e botões de toque com 44 px ou mais.

Depois das etapas entrou a **Carioquinha**, com três arrumações e IA.

### Bugs conhecidos

- Snooker: não há a regra do "miss" nem a opção de devolver a tacada a quem fez a falta; com a branca na caçapa, o próximo joga da meia-lua sem direito a bola livre, mesmo sinucado.
- Snooker: a IA não procura sinucar o adversário de propósito; as defesas dela só deixam a branca longe.
- Desafios: o "Três tabelas" e o "De tabela" são difíceis no Profissional, porque lá a mira só mostra a linha até o contato.
- A IA nunca declara push out na Bola 9 (mas decide bem quando o adversário declara).
- No três tabelas a IA acerta pouco, como gente: as soluções são estreitas e o erro de mira as estraga.
- Numa partida só de computadores, cada tacada leva o tempo de pensar mais o das bolas rolando.
- A linha de saída, a meia-lua e as marcas da sinuca brasileira aparecem na mesa de bar também na Bola 8 (como nas mesas de bar de verdade).
- Na carambola não há regra de abertura (tocar primeiro a vermelha); a primeira tacada vale como qualquer outra.
- Quem abre a partida é o jogador 1; em "Jogar de novo", abre o seguinte.

- A abertura forte encaçapa em média meia bola, um pouco menos que numa mesa real.
- A previsão do Aprendiz é recalculada no máximo a cada 90 ms e com teto de 4 ms; mirando no triângulo com força alta, o caminho da branca depois do choque sai mais curto.
- O efeito lateral na tabela é forte (meio efeito tira a bola uns 28° numa batida de frente); `atritoTabela` regula.
- A altura da borracha não entra no cálculo: siga e puxeta não mudam a saída da tabela, só o rolamento depois dela.
- O ângulo de corte sai até 0,2° mais aberto que o da bola fantasma, por causa da duração do contato.
- Em retrato, a luz das bolas gira junto com a mesa.
- A qualidade adaptativa só desce: depois de um trecho pesado, a resolução fica menor até recarregar a página.

### Sugestões de ajuste

- `FISICA.restituicaoBola` (0,95; testar 0,92–0,97) e a força máxima do taco, para a abertura encaçapar um pouco mais.
- `FISICA.atritoTabela` (0,2), se o lateral na tabela parecer forte demais (testar 0,10–0,25).
- `ESCALA_FORCA` dos campeonatos (40; testar 25–60): menor deixa as séries entre computadores mais imprevisíveis.
- Limite da qualidade adaptativa (14 ms por 180 quadros; testar 12–16 ms): mais baixo protege celulares fracos e reduz a nitidez antes.
- Raio das zonas dos desafios (110–260 mm, no campo `zona` de cada um): aumentar facilita o ★★.
- Snooker: começar pelas 6 vermelhas para aprender; a partida de 15 leva umas 130 tacadas entre computadores.
