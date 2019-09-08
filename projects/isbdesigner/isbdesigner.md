---
layout: project

permalink: /projetos/isbdesigner/

title: isbdesigner
subtitle: "ISB Designer: a tool for design interactive storyboard"

duration: 2011 - 2014
image: /assets/images/projects/isbdesigner/0.0.1/0f6548a5659620651e30f990c200ba2d.png

excerpt: "ISB Designer is an authoring tool focused on the design of interactive narratives. Based on techniques used by film and animation producers, the tool does not rule out paradigms they are used to. One of its main advantages is to allow the design of audiovisual content together with its points of adaptation and intervention, thus helping in the detection and correction of narrative inconsistencies. Another ISB Designer differential is the possibility of designing applications for presentations on multiple screens. Unlike other tools, the ISB Designer focuses on the design and prototyping phase of applications, as a means of producing higher quality interactive narratives, for then automatically generate the final application, in a post-project stage."

categories: 
 - projects
 - tools
 
tags:
  - storyboard
  - interactive narrative
  - multimedia
  - ginga
  - ncl
  - qt
  - c++
  - telemidia
  - puc-rio
  - isbdesigner
  - digital tv
  - authoring

navigation:
 - sobre
 - apresentações
 - publicações
 - downloads
 - releases
---

## sobre

A ISB Designer é o resultado do projeto desenvolvido durante o meu mestrado no laboratório [TeleMídia](telemidia.puc-rio.br/) da [PUC-Rio](http://www.puc-rio.br/) sob orientação do [Prof. Luiz Fernando Gomes Soares](http://www.telemidia.puc-rio.br/~lfgs/). A ferramenta procura facilitar o projeto e criação de aplicações interativas para a TV digital através de **storyboards interativos**. Com isso, permite que várias alternativas de interação e leiaute possam ser testadas antes mesmo da produção do conteúdo final, e tanto a interatividade quanto o conteúdo do vídeo principal podem ser pensados juntos. Assim, programas interativos mais ricos podem ser produzidos, trazendo para fase de projeto detalhes relacionados ao sincronismo entre os objetos de mídia e a preocupação em garantir uma semântica mais consistente entre a interação e o conteúdo sendo apresentado. Isso implica no desenvolvimento de aplicações em que, por exemplo, o telespectador possa decidir o destino de um determinado personagem ou o andamento de um filme.

Para isso, no projeto é definido a ideia de **storyboard interativo**, que lida com os eventos de **adaptação**, **intervenção** e **distribuição**, também detalhados neste trabalho, presentes nas narrativas interativas e não lineares. Dessa forma, foi possível inclusive a criação de storyboards interativo "*de papel*" (disponíveis logo mais para [download](#donwloads)), possibilitando a validação do modelo conceitual junto aos usuário finais sem qualquer comprometimento com relação à implementação, em um primeiro momento.

Atualmente, o projeto entra-se estacionado, mas com potencial de crescimento, especialmente considerando a convergência de mídia, ou seja, o desenvolvimento de aplicações [transmidiáticas](https://pt.wikipedia.org/wiki/Transm%C3%ADdia), cujo conceito pode ser adaptado aos da ferramenta.

## apresentações

{% assign list = site.data.presentations 
  | where_exp: "item", "item.tags contains 'isbdesigner'"
  | sort: "date" | reverse %}

{% include content-data.html %}

## publicações

{% assign list = site.data.publications 
  | where_exp: "item", "item.tags contains 'isbdesigner'"
  | sort: "date" | reverse %}

{% include content-data.html %}

## desenvolvimento

O código está disponível no [GitHub](https://github.com/edcaraujo/isbdesigner-deprecated) e foi desenvolvido em `C++` apoiado no *framwork* [Qt](https://www.qt.io/) para desenvolvimento de interfaces gráficas e portabilidade do projeto para multiplas plataformas.

Em caso de dúvidas, entre [em contato](/#contato).

## donwloads

- [2012.04.04 - Interactive Storyboard (*Sequencial Model*)](/assets/downloads/projects/isbdesigner/9f522044dac8534b50191c3f80284129.zip)
- [2012.04.04 - Interactive Storyboard (*Adaptative Model*)](/assets/downloads/projects/isbdesigner/0db73e1876e1890da238deb5a12cc165.zip)
- [2012.04.04 - Interactive Storyboard (*Distributive Model*)](/assets/downloads/projects/isbdesigner/6e53384f2a124639c06638d24f89dd00.zip)
- [2012.01.16 - Logos](/assets/downloads/projects/isbdesigner/ac2b617435903b688af3f43fa0c122bf.zip)

## releases

- <i class="fas fa-box-open"></i> [0.0.1](/projetos/isbdesigner/0.0.1/)