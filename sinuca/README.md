# Sinuca de Bico

Sinuca e bilhar de bar em visão de cima, num único arquivo HTML ([index.html](index.html)), com Canvas 2D e JavaScript puro. A mesa, as bolas e o taco são desenhados por código; não há imagens nem áudios externos. O jogo está sendo feito em etapas (lista no fim).

## Como jogar

Abra pelo servidor de teste da raiz (ver o README de lá), em `http://localhost:8765/sinuca/`. Por enquanto há só o **Treino livre**: sem regras, com as bolas que você escolher no menu.

## Controles

- **Computador:** mova o mouse para mirar. Segure o botão e puxe para trás: o taco recua; solte para tacar (puxar de volta até o começo cancela). A barra de força à direita também taca: arraste para baixo e solte.
- **Teclas:** ← → ou a roda do mouse fazem o ajuste fino da mira, de 0,1° (com Shift, 0,01°). ↑ ↓ mudam a força da barra; Espaço ou Enter tacam com ela. Z desfaz, M liga o modo de mover bolas, R arruma as bolas, Esc abre o menu.
- **Celular:** toque ou arraste na mesa para mirar. Ajuste fino: gire o anel do canto ou arraste com dois dedos. Força: arraste a barra da direita para baixo e solte; arrastar para fora dela cancela. Em retrato, o jogo pede para girar o aparelho, mas dá para jogar assim mesmo, com a mesa em pé.
- **Bolas:** a branca pode ser arrastada para qualquer lugar livre. Com ✥ ligado, qualquer bola pode ser arrastada.

Depois de cada tacada, o painel mostra a velocidade, o ângulo, a primeira bola tocada, as tabelas da branca e as bolas que caíram.

## Física

Passo fixo de 240 Hz, em milímetros e segundos. Cada bola tem posição, velocidade e giro em três eixos e passa de deslizando a rolando e a parada. O choque entre bolas é uma mola rígida de 0,2 ms com restituição 0,95: quando várias bolas se tocam ao mesmo tempo, como na abertura, a energia se divide sozinha. Tabelas e mandíbulas das caçapas são choques instantâneos com restituição da mesa. A bola cai quando o centro passa sobre o buraco; a que bate na mandíbula pode voltar. Todos os coeficientes ficam na tabela `FISICA`, no começo do arquivo, com faixas para testar.

Ao fim de cada tacada, a física entrega ao motor de regras o registro da jogada: primeira bola tocada, todos os contatos da bola do jogador (com as tabelas antes de cada um), tabelas depois do contato, bolas encaçapadas e em que caçapa, branca na caçapa e bolas fora da mesa.

## Dados salvos

No `localStorage`, com o prefixo `sinuca-`: `sinuca-config` (bolas do treino, mira, feltro, rastro, vibração).

## Etapas

1. **Base física e mesa** (pronta): mesa de clube, bolas com número e listra girando, física sem efeito, registro da jogada, mira com bola fantasma, controles de mouse e toque, treino livre.
2. Efeito (puxeta, siga, lateral, curva, miscue), throw no Profissional, som e acabamento do taco.
3. Motor de regras, Bola 8, Par × Ímpar e Contagem de Pontos, níveis, telas e HUD completo.
4. Mata-mata, Três Jogadores, Sinuca Brasileira, Bola 9, Carambola e as outras mesas.
5. Inteligência artificial e os 8 adversários.
6. Campeonatos, estatísticas e progresso salvo.
7. Snooker, desafios de tacada e revisão para celular.

### Pendências conhecidas da etapa 1

- Ainda sem efeito, sem som e sem marca de giz (etapa 2).
- A abertura forte encaçapa em média meia bola, um pouco menos que numa mesa real.
- O ângulo de corte sai até 0,2° mais aberto que o da bola fantasma, por causa da duração do contato.
- Em retrato, a luz das bolas gira junto com a mesa.
