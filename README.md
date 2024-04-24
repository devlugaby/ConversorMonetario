# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. Definição da Interface Gráfica (UI):
A interface do aplicativo foi definida usando o Flutter, com um esquema de cores preto e verde.
Um campo de texto foi adicionado para permitir que o usuário insira seu nome.
Outro campo de texto foi adicionado para permitir que o usuário insira a quantidade em reais a ser convertida.
Os resultados da conversão para dólares e euros são exibidos abaixo do campo de entrada.
2. Lógica de Conversão:
A lógica de conversão foi implementada na função `_convertCurrency`, que é chamada sempre que o valor em reais é alterado.
A função converte o valor em reais para dólares e euros, com base em fatores de conversão pré-definidos (1 real = 0.19 dólares e 1 real = 0.18 euros).
Os valores convertidos são armazenados em variáveis para dólares e euros.
3. Atualização da Interface com setState:
A interface é atualizada dinamicamente sempre que o usuário insere um novo valor em reais ou salva seu nome. Isso é feito usando o `setState` para notificar o Flutter sobre as mudanças de estado.
4. Estilização:
O texto é estilizado para ser branco.
Os botões e a barra de aplicativos têm uma cor verde.
Esses elementos combinados criam um aplicativo funcional que permite aos usuários converter valores de reais para dólares e euros, enquanto personaliza a experiência com a capacidade de inserir um nome.

DOWNLOAD: app-release.apk
