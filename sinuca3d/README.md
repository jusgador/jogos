# Sinuca3D

Jogo de sinuca e bilhar em 3D num único arquivo HTML ([index.html](index.html)), com Three.js via CDN (`cdn.jsdelivr.net`). A mesa, as bolas, o taco, as texturas, a iluminação do salão e os efeitos sonoros são gerados proceduralmente por código, sem imagens nem áudios externos.

## Modos de jogo

- **Bola 8:** após a abertura, a primeira bola encaçapada define lisas (1–7) ou listradas (9–15). Limpe o seu grupo e encaçape a bola 8 para vencer. Faltas dão bola na mão em qualquer ponto da mesa.
- **Snooker:** encaçape uma vermelha (1 pt) e depois uma colorida (amarela 2, verde 3, marrom 4, azul 5, rosa 6, preta 7), que volta à marca enquanto houver vermelhas. Quando acabarem as vermelhas, limpe as coloridas em ordem. Permite escolher mesas com **6**, **10** ou **15** vermelhas.
- **Blitz:** modo arcade de 2 minutos. Qualquer bola vale pontos; encaçapar em tacadas seguidas aumenta o multiplicador até ×8 e limpar a mesa soma +1.000 pontos e +20 segundos. Derrubar a branca desconta 5 segundos.

Nos modos **Bola 8** e **Snooker**, é possível jogar contra a CPU em três níveis (**Fácil**, **Profissional** e **Mestre**) ou em **2 Jogadores** locais no mesmo aparelho. Também há quatro cores de pano disponíveis (**Azul torneio**, **Verde clássico**, **Vermelho veludo** e **Ardósia noturna**).

## Controles

- **Olhar ao redor da mesa:** cada turno pode começar com visão afastada (configurável em *Configurações*). Arraste para girar em torno da mesa, use pinça ou a roda do mouse para dar zoom e arraste com dois dedos (ou botão direito) para deslocar a câmera.
- **Mirar:** clique ou toque na bola desejada para se posicionar atrás do taco. Arraste para ajustar a direção; para ajuste fino use a faixa **MIRA FINA** (no toque), as setas `←` `→` (com `Shift` para precisão extra) ou a roda do mouse.
- **Tacar:** puxe a barra de força à direita para baixo e solte (arraste para o lado para cancelar), ou segure `Espaço` e solte.
- **Efeito na branca:** clique/toque na bola branca no canto inferior esquerdo (ou tecla `S`) e arraste o ponto vermelho — cima dá siga, baixo dá puxeta, lados dão efeito lateral nas tabelas (`X` centraliza).
- **Bola na mão:** após faltas ou no início, arraste a bola branca até uma posição válida antes de tacar.
- **Atalhos no teclado:** `L` alterna entre olhar a mesa e mirar, `V` alterna entre câmera 3D e vista de cima, `↑` `↓` aproximam/afastam a câmera, `S` abre o efeito, `X` zera o efeito, `M` liga/desliga o som e `Esc` abre a pausa.

## Dados salvos

Armazenados no `localStorage` com o prefixo `sinuca3d-`:

- `sinuca3d-opts`: modo, adversário, quantidade de vermelhas e cor do pano selecionados no menu.
- `sinuca3d-settings`: som, tipo de linha de mira, câmera inicial do turno e visão de mira.
- `sinuca3d-rec`: partidas jogadas, vitórias por modo/nível, recorde do Blitz, maior tacada no Snooker e total de bolas encaçapadas.
