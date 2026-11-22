# Baduk (Go)

Jogo de **Baduk (Go)** em 3D no estilo de salão tradicional, num único arquivo HTML ([index.html](index.html)) com Three.js via CDN (`cdn.jsdelivr.net`). O goban de madeira *Kaya* com pés tradicionais, as pedras biconvexas de ardósia e concha, as tigelas (*goke*) com prisioneiros nas tampas, o tatame e o estalo característico das pedras são gerados proceduralmente por código.

## Modos

- **Contra CPU:** tabuleiros **9×9**, **13×13** e **19×19**, cinco níveis de força (de Iniciante a Mestre), escolha de cor, vantagem (*handicap* de 2 ou 4 pedras) e opção **Treino** (barra de avaliação, mapa de território em 3D, aviso de *atari*, inspeção de liberdades, dica do treinador e desfazer) ou **Valendo**.
- **2 Jogadores:** partida local no mesmo aparelho, nos três tamanhos de tabuleiro.
- **Aprender (7 lições interativas em 3D):** liberdades e captura, atari e fuga, grupos conectados, suicídio e regra do Ko, vida e morte (dois olhos), corte e conexão, e fechamento de território.
- **Problemas (10 Tsumego):** desafios de captura e vida-e-morte em 3D (Atari direto, Duplo Atari, Boca de Tigre, Dois Olhos, Matar no Canto, Rede/Geta, Snapback, Olho Falso, Escada/Shicho e Ponto Vital no Lado).

## Regras e Contagem

- Regras oficiais com captura, proibição de suicídio, **Ko** e **Superko posicional**.
- Pontuação pelas **Regras Chinesas (Área)**: território cercado + pedras vivas no tabuleiro + *komi* (`6.5` em 9×9, `7.5` em 13×13 e 19×19, ou `0.5` em partidas com handicap).
- Após dois passes consecutivos, entra na **fase de marcação de pedras mortas**, com sugestão automática de grupos mortos e prévia de território em 3D — basta clicar em qualquer grupo para alternar vivo/morto e confirmar o resultado.
- Permite exportar a partida em formato padrão **SGF** (`.sgf`).

## Controles

- **Jogar (computador):** passe o mouse para visualizar a pedra fantasma e clique na interseção.
- **Jogar (celular):** nos tabuleiros 13×13 e 19×19 (configurável em *Opções*), o toque posiciona a pedra fantasma com deslocamento acima do dedo; ajuste arrastando e toque em **Confirmar** (ou toque novamente no mesmo ponto).
- **Câmera 3D:** botão direito do mouse (ou arrastar fora/com 2 dedos) gira ao redor do goban; `Shift` + arrastar (ou botão do meio / 2 dedos) desloca a câmera; roda do mouse ou pinça controla o zoom.
- **Atalhos no teclado:** `V` alterna entre vista 3D e vista de cima, `R` centraliza a câmera, `T` mostra/oculta estimativa de território (Treino), `H` pede dica, `Z` desfaz lance (Treino), `P` passa a vez, `M` liga/desliga o som e `Esc` abre pausa/opções.

## Motor

- O núcleo de regras e o motor de IA (**MCTS + RAVE** com padrões 3×3 estilo MoGo e *playouts* táticos) vivem num único bloco `<script id="nucleo">`, rodado na página para validação instantânea e dentro de um **Web Worker** dedicado para manter a cena 3D a 60 FPS enquanto a CPU pensa.

## Dados salvos

Armazenados no `localStorage` com o prefixo `go-`:

- `go-cfg`: opções de partida, coordenadas, confirmação no toque, aviso de *atari* e som.
- `go-partida`: partida em andamento para continuar depois.
- `go-progresso`: lições concluídas, problemas Tsumego resolvidos e estatísticas.
