# Poker Texas Hold'em

No-Limit Hold'em contra 1 a 8 bots, num único `index.html`, sem dependências. Funciona offline, no computador e no celular (retrato e paisagem).

## Partida

- Fichas iniciais e número de bots configuráveis. Blinds começam em 10/20 e dobram a cada N mãos (padrão: 10; dá para desligar).
- Botão, small blind e big blind giram a cada mão. No heads-up, o dealer é o small blind e age primeiro no pré-flop.
- Quem fica sem fichas é eliminado. A partida termina quando você é eliminado ou fica com todas as fichas.
- A partida em andamento fica salva a cada ação: recarregue a página e use "Retomar partida".

## Controles

| Tecla | Ação |
|---|---|
| F | Fold |
| C | Check / Call |
| R | Raise (com o valor do campo ou do controle deslizante) |
| A | All-in |
| D | Pedir dica (Modo Aprendizado) |
| L | Histórico da mão |
| M | Som |
| Esc | Menu / fechar janela |
| Enter | Próxima mão |

Os atalhos ½ pote, ⅔ pote e Pote ajustam o valor do raise; no celular, tudo funciona por toque.

## IA

Três níveis (Fácil, Médio, Difícil). Antes do flop, os bots decidem pela força da mão inicial (fórmula de Chen), posição e número de jogadores; depois do flop, estimam a equidade por Monte Carlo (500, 1.000 ou 2.000 iterações) e comparam com as pot odds. No Difícil, a simulação usa as faixas de mãos estimadas pelas ações dos adversários. Cada bot tem um perfil (Rocha, TAG, LAG, Calling station, Maníaco, Equilibrado), blefa de vez em quando e varia o tamanho das apostas. A IA só recebe a visão pública da mesa e as próprias cartas.

## Modo Aprendizado

Liga na tela inicial ou no menu, com níveis Iniciante, Intermediário e Avançado:

- **HUD:** equidade (vitória + empate), outs (com outs sujos), chance na próxima carta e até o river ao lado da regra do 2 e 4, pot odds com barra de equidade, implied e reverse implied odds.
- **Treinador:** botão "Dica" com a ação sugerida e os motivos (automática no Iniciante); balões que explicam conceitos na primeira vez.
- **Avaliação:** cada decisão sua recebe Boa, Aceitável, Questionável ou Erro; clique no selo para ver a explicação.
- **Revisão da mão:** replay passo a passo com todas as cartas, gráfico de equidade por rua e o raciocínio de cada bot.
- **Ranges:** tabela 13×13 com a faixa de abertura de cada posição; no Avançado, as faixas estimadas dos oponentes e a equidade contra elas.
- **Estatísticas de aprendizado:** decisões por rua, os 3 principais pontos a melhorar e a evolução por partida.
- **Exercícios:** quiz de decisões e treino de contagem de outs. **Glossário** com os termos do HUD clicáveis.

## Testes

No console do navegador, `runTests()` roda os autotestes: avaliador de mãos (kickers, wheel, flush contra sequência), split pot, side pots com 3 all-ins, ordem de ação no heads-up, opção do big blind, raise mínimo, all-in curto que não reabre a ação e uma simulação de 300 mãos que confere a conservação das fichas.

## Dados salvos

Tudo no `localStorage`, com o prefixo `poker-`: configurações, estatísticas, partida em andamento, estatísticas de aprendizado e conceitos já vistos.
