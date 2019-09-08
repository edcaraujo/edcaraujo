---
layout: post

title: Compilando o NCL Composer com o Qt Creator e CMake no Ubuntu

categories: 
 - blog
 - tutoriais

tags:
 - cmake
 - qtcreator
 - ubuntu
 - c++
 - qt
 - authoring
 - multimedia
 - ginga
 - ncl
 - nclcomposer
 - telemidia
 - puc-rio
 - digital tv
 - plugins
---

Para quem acompanha o [repositório](https://github.com/telemidia/nclcomposer) do [NCL Composer](http://composer.telemidia.puc-rio.br/) já deve estar sabendo que aos pouco estamos migrando o nosso sistema de *build* para o [CMake](https://cmake.org/) (thanks to [@robertogerson](http://www.telemidia.puc-rio.br/~robertogerson/)). A maior parte dos benefícios, por enquanto, estão relacionados com a geração dos *releases* e com os sistemas de integração contínua, detalhes que não vou tratar aqui.

Dessa forma, recomendamos que todos aqueles que estão desenvolvendo, estudando, brincando ou passando um tempo com o NCL Composer, que **migrem** para o CMake. Nossa intenção é aos poucos remover completamente os arquivos de projeto do *qmake* (.pro). Então, para não ser pego de surpresa, aproveite as dicas deste *post* e dê as boas vindas ao CMake.

Antes de continuar, quero alertar que este *post* é do interesse daqueles que querem ou estão trabalhando no **desenvolvimento** do NCL Composer ou de *plugins* para o mesmo. Caso esteja interessado apenas em utilizar o NCL Composer, visite a página oficial do [NCL Composer](http://composer.telemidia.puc-rio.br/) para fazer o [download](http://composer.telemidia.puc-rio.br/en/download) da *release* mais recente. Mas, mesmo que você seja apenas um curioso, é bem-vindo a ficar por aqui.

Outro detalhe é que neste *post* tratarei somente dos detalhes envolvendo o Ubuntu (**Linux**). Prometo fazer um *post* semelhante para o **Windows** e, quem sabe, **macOS**. Caso esteja interessado em adiantar alguma informação com relação aos outros SO, deixe um comentário ou entre [em contato](/#contato).

Como referência, estou utilizando: **Ubuntu 16.04 LTS**, **Qt 5.7**, **Qt Creator 4.0.2** e **CMake 3.5.1**.

Ótimo! Agora chegou a hora de colocar a mão na massa. :)

Nossa tarefa será dividida em **4** etapas:

- [Download das dependências](#download-das-depend%c3%aancias)
- [Download do código](#download-do-c%c3%b3digo)
- [Configuração do Projeto](#configura%c3%a7%c3%a3o-do-projeto)
- [Configuração da execução](#configura%c3%a7%c3%a3o-da-execu%c3%a7%c3%a3o)

Como deve ter percebido pelos tópicos, **não** estou considerando que o código do NCL Composer tenha sido **baixado**, ou seja, que você é um desenvolvedor antigo do projeto. Se esse é o caso, lembre-se de **desinstalar** a versão atual, **limpar** os arquivos gerados a partir da compilação anterior e **atualizar** o código. Para isso, primeiramente, **navegue** para diretório onde o código do NCL Composer está localizado. Faça isso através do comando abaixo.

```
cd /path/to/nclcomposer/
```

Lembre-se de **substituir** o `'/path/to/nclcomposer'` pelo **caminho** correto no seu ambiente. No meu caso, por exemplo, eu executei comando da seguinte forma:

```
cd /home/edcaraujo/Workspace/cpp/nclcomposer/
```

Em seguida, execute os comandos para **limpeza** e **atualização** do código conforme descritos abaixo.

```
sudo make uninstall
sudo make clean
sudo make distclean

git pull
```

Feito isso, sendo você um desenvolvedor **antigo**, podemos pular diretamente para [terceira etapa](#configuração-do-projeto).

## Download das dependências

Para baixar e compilar o NCL Composer é preciso instalar o [Git](https://git-scm.com/) e [Qt](https://www.qt.io/). Porém, para fazer valer o próposito deste *post*, também precisaremos do [Qt Creator](https://www.qt.io/ide/) e do [CMake](https://cmake.org/). Assim, abra um terminal e execute o seguinte comando:

```
sudo apt-get -y install git qt5 qtcreator cmake
```

Terminado a instalação já podemos ir para a [próxima etapa](#download-do-código).

Para mais detalhes sobre as dependências acesse a página oficial do [NCL Composer](http://composer.telemidia.puc-rio.br/).

## Download do código

O código do NCL Composer está hopedado no [GitHub](https://github.com/telemidia/nclcomposer). Portanto, para baixar o código, abra um terminal e execute o seguinte comando:

```
git clone https://github.com/telemidia/nclcomposer.git
```

Lembre-se de guardar o local em que você está baixando o código. Usaremos essa informação nas próximas etapas.

## Configuração do Projeto

Para configurar o projeto, primeiro devemos importá-lo para o Qt Creator. Para importar o projeto, abra o Qt Creator e siga para o **menu** `File` > `Open File or Project...` (Figura 1).

![Abrindo o NCL Composer com o Qt Creator](/assets/images/posts/d3d3ee634288f7b291e5f69a3dc8a2cb.png)

*Figura 1 - Abrindo o NCL Composer com o Qt Creator*

Após clicar o menu `File` > `Open File or Project...` o Qt Creator irá abrir uma janela para seleção do arquivo. **Selecione** o arquivo `CMakeList.txt` na raiz do projeto do NCL Composer (Figura 2) e clique em `Open`. O arquivo `CMakeList.txt` é o arquivo de projeto do CMake.

![Abrindo o NCL Composer com o Qt Creator (Diálogo)](/assets/images/posts/971b865d634a8dc937d52005e7026d4f.png)

*Figura 2 - Abrindo o NCL Composer com o Qt Creator (Diálogo)*

Com isso terminamos de importar o projeto. Agora vamos ao próximo passo, a **configuração** do projeto de fato. Logo após abrir o arquivo `CMakeList.txt` o Qt Creator irá apresentar a aba de Configuração de Projeto (Figura 3).

![Configurando o NCL Composer no Qt Creator](/assets/images/posts/392d47ae1e70f97c7cb34b03cd509a9f.png)

*Figura 3 - Configurando o NCL Composer no Qt Creator*

Clique em `Details` para visualizar todas as configuração de *build* (Figura 4).

![Configurando o NCL Composer no Qt Creator (Detalhes)](/assets/images/posts/ea42b79a76fad5872690cef8e79f9001.png)

*Figura 4 - Configurando o NCL Composer no Qt Creator (Detalhes)*

Em cada uma das configurações (*Default*, *Debug*, *Release*, etc.) **altere** o diretório de *build*. No nosso caso, vamos alterar a parte final de cada caminho para `'/nclomposer/build'`, ou seja, o local onde você baixou o código na [etapa anterior](#download-do-código) + `'/nclomposer/build'`. Assim, no meu caso, por exemplo, alterarei o diretório de *build* de cada uma das configurações para:

```
/home/edcaraujo/Workspace/cpp/nclcomposer/build
```

Feito isso (Figura 5), clique em `Configure Project` pra finalizar. É importante dizer que estamos fazer isso por simplicidade, dado que o correto é manter um diretório de *build* diferente para cada configuração.

![Configurando o NCL Composer no Qt Creator (Nova Configuração)](/assets/images/posts/252abadf9bbd43191336592a7b5e5b49.png)

*Figura 5 - Configurando o NCL Composer no Qt Creator (Nova Configuração)*

Uma vez finalizado, os arquivos do projeto são listados (Figura 6) e estamos prontos para brincar com o código. Porém, antes que a diversão comece é interessante que compilemos o código para saber se está tudo certo.

![Configurando o NCL Composer no Qt Creator (Resultado)](/assets/images/posts/89fd05ce5a811ea0aa4234f7faecf929.png)

*Figura 6 - Configurando o NCL Composer no Qt Creator (Resultado)*

Para **compilar** basta clicar no ícone de *build* (Figura 7) na barra de ferramentas do Qt Creator. Outra forma é usar o atalho `ctrl`+`b`.

![Compilando o NCL Composer com o Qt Creator](/assets/images/posts/c5fe3b45de0286a98937dd7da2b7f171.png)

*Figura 7 - Compilando o NCL Composer com o Qt Creator*

Passado alguns minutos a compilação deve terminar. Depois disso podemos executar o NCL Composer e nossa tarefa estará concluída. Portanto, vamos para [última etapa](#configuração-da-execução)!

## Configuração da execução

De forma resumida, o que vamos fazer aqui é dizer para o Qt Creator onde está localizado o binário gerado a partir da compilação. Para fazermos isso, clicamos em `Project` na barra de ferramentas do NCL Composer (Figura 8). Em seguida, selecionamos a aba `Run` e alteramos o `Working directory` para o local na qual o binário é gerado.

![Configurando a Execução do NCL Composer](/assets/images/posts/ae37b64c77a7e50fc92d3d44600a35df.svg)

*Figura 8 - Configurando a Execução do NCL Composer*

O caminho para binário será `'/path/to/build'` + `'/bin'`. O `'/path/to/build'` foi o que definimos na [etapa anterior](#configuração-do-projeto). Portanto, no meu caso, devo **alterar** o `Working directory` para:

```
/home/edcaraujo/Workspace/cpp/nclcomposer/build/bin
```

Feito isso (Figura 9) estamos prontos para executar o NCL Composer.

![Configurando a Execução do NCL Composer (Nova Configuração)](/assets/images/posts/7139fe2d84f74b98a255fd889577822a.png)

*Figura 9 - Configurando a Execução do NCL Composer (Nova Configuração)*

Para **executar** o NCL Composer basta clicar no ícone de *run* (Figura 10) na barra de ferramentas do Qt Creator. Outra forma mais fácil é usar o atalho `ctrl`+`r`.

![Executando o do NCL Composer](/assets/images/posts/2b8c3cd71fed65488387f78ddcfb9617.svg)

*Figura 10 - Executando o do NCL Composer*

**Pronto!** Terminamos a nossa tarefa. Agora é possível contribuir com o projeto ou desenvolver seu próprio *plugin*. Se estiver curioso em como contribuir ou criar um novo *plugin* é só acessar a página oficial do [NCL Composer](http://composer.telemidia.puc-rio.br/).

Caso ainda restam dúvidas, comente ou entre em contato. Não precisa se limitar ao assunto deste *post*.

TV Digital de faz com Ginga! :)