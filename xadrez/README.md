# Xadrez do Clube

Xadrez para passar o tempo e para aprender, do primeiro movimento das peças às partidas dos campeões. Tudo num `index.html`: regras, motor de busca, peças em SVG próprio e sons gerados na hora.

## Modos

- **Contra o computador:** sete níveis, de Iniciante (≈400) a Mestre (≈2200), com ou sem relógio (1 min a 30 min, com ou sem incremento).
  - **Treino:** o treinador comenta cada lance seu (Melhor, Ótimo, Bom, Imprecisão, Erro, Capivarada, Brilhante, Lance de livro), explica por que (captura, garfo, cravada, ameaça de mate, desenvolvimento…), mostra o que o adversário ganhou com o seu erro, marca as suas peças em perigo e tem dica em dois passos, desfazer e barra de avaliação.
  - **Valendo:** sem ajuda, conta para o rating (Elo, começando em 800).
- **Com um amigo:** os dois no mesmo aparelho, com relógio e opção de virar o tabuleiro a cada lance.
- **Revisão:** depois de qualquer partida, o motor analisa todas as posições e mostra precisão de cada lado, gráfico da avaliação, a classificação de cada lance e o melhor lance onde houve erro. Em cada erro dá para voltar e procurar um lance melhor.
- **Aprender:** nove lições em três níveis (peças, capturas, xeque e mate, lances especiais, princípios da abertura, táticas, mates básicos, finais essenciais com oposição e Lucena, estratégia). Os exercícios são de pegar estrelas, capturar, fazer um lance, resolver um problema ou vencer o computador numa posição.
- **Problemas:** mates em 1 e 2, garfo, cravada, espeto, ataque descoberto, armadilhas e lances de mestres tirados das partidas históricas. Nos problemas de mate, um caminho diferente do da solução vale se o motor confirmar que ele também força o mate. **Relâmpago:** três minutos, três erros.
- **Partidas históricas:** de Légal (1750) a Kasparov × Topalov (1999), com comentários. Dá para assistir ou jogar no lugar do vencedor e adivinhar os lances (3, 2 ou 1 ponto).
- **Aberturas:** explorador com o nome e a ideia de cada abertura e as continuações conhecidas, e treino das linhas de memória.
- **Analisar:** tabuleiro livre com o motor, colando FEN ou PGN.
- **Coordenadas:** ache o máximo de casas em 30 segundos.

## Controles

Clique na peça e na casa, ou arraste. Teclado: ← e → navegam pelos lances, H pede dica, V vira o tabuleiro, M liga e desliga o som, Esc abre o menu.

## Por dentro

- **Núcleo** (`<script id="nucleo">`): tabuleiro 0x88, geração de lances conferida por perft, SAN/FEN, avaliação com tabelas de posição por fase do jogo, estrutura de peões, mobilidade e técnica de mate com rei sozinho. Busca alfa-beta com aprofundamento iterativo, tabela de transposição (Zobrist), busca de quiescência, lance nulo, redução de lances tardios, killers e histórico.
- O mesmo código roda na página (regras) e em dois Web Workers criados a partir do texto do script: um joga e outro é o treinador.
- Os níveis fracos escolhem entre os lances com sorteio ponderado pela nota (e alguns lances ruins de propósito); os fortes pensam por tempo. Todos usam o livro de aberturas nos primeiros lances.
- Os dados (aberturas, partidas, problemas e lições) ficam em `ABERTURAS`, `HISTORICAS`, `PROBLEMAS` e `LICOES`, com os lances em SAN inglês; a tela mostra em português (R, D, T, B, C) ou inglês, conforme as opções.

O progresso fica no `localStorage` com o prefixo `xadrez-` (`xadrez-cfg`, `xadrez-progresso` e `xadrez-partida`, a partida em andamento).
