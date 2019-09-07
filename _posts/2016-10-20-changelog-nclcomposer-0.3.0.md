---
layout: post

title: 'Changelog: nclcomposer (0.3.0)'

categories: 
 - blog
 - changelog

tags:
 - nclcomposer
 - ncl
 - ginga
 - tv digital
 - telemidia
---

Há alguns dias a versão `0.3.0` do [NCL Composer](http://composer.telemidia.puc-rio.br/) está disponível para [download](http://composer.telemidia.puc-rio.br/en/download). Essa versão traz várias melhorias, especialmente no plugin da **Visão Estrutural**. As mudanças na Visão Estrutural vão desde elementos da interface até uma completa restruturação do código.

![Nova Visão Estrutural no NCL Composer](/assets/images/posts/ad70e185481cb44b00eb66e29f336970.png)

*Figura 1 - Nova Visão Estrutural no NCL Composer*

Além de todas as funcionalidades da versão anterior, a nova Visão Estrutural inclui também:

- suporte à *undo/redo*;
- suporte à organização automática das entidades da visão (esta opção está **desabilitada** por padrão);
- novos diálogos para criação e edição dos `<link/>`, `<bind/>`, `<linkParam/>` e `<bindParam/>`;
- barra de ferramentas para facilitar o acesso as funcinalidades da visão.

## Antes e depois

![Visão Estrutural (0.2.1) do NCL Composer](/assets/images/posts/a0b3e33f7e0ccc813b7b8ec157e0aa99.png)

*Figura 2 - Visão Estrutural (0.2.1) no NCL Composer*

![Visão Estrutural (0.3.0) do NCL Composer](/assets/images/posts/129fe989c18a3ae95720b17918973a6e.png)

*Figura 3 - Visão Estrutural (0.3.0) no NCL Composer*

Através das figuras acima é possível observar algumas das mudanças trazidas pela nova versão da Visão Estrutual. Além da barra de ferramentas, mencionada anteriormente, a partir das figuras é possível identificar também uma nova organização do menu contextual e a utilização de novos ícones para algumas das entidades.

Existem ainda outras novidades, então, para entender melhor as mudanças entre as versões, abaixo são detalhadas como algumas tarefas eram realizadas na versão `0.2.1` e como são realizadas agora na `0.3.0`.

- [Adicionando entidades](../../../../2016/10/20/nova-versao-da-visao-estrutural-do-ncl-composer.html#adicionando-entidades)
- [Adicionando relacionamentos](../../../../2016/10/20/nova-versao-da-visao-estrutural-do-ncl-composer.html#adicionando-relacionamentos)

### Adicionando entidades

![Adicionando Entidades com a Visão Estrutural (0.2.1) do NCL Composer](/assets/images/posts/12e6548eefdcf0389c9b37e1fdaae90a.gif)

*Figura 4 - Adicionando Entidades com a Visão Estrutural (0.2.1) no NCL Composer*

![Adicionando Entidades com a Visão Estrutural (0.3.0) no NCL Composer*](/assets/images/posts/2fa1961ffa964bb41911077d5f6d3aea.gif)

*Figura 5 - Adicionando Entidades com a Visão Estrutural (0.3.0) no NCL Composer*

A partir da barra de ferramentas, a versão `0.3.0` da Visão Estrutural possibilita a adição de novas entidades de maneira bem mais rápida. No caso da versão anterior, `0.2.1`, novas entidades só poderiam ser adicionadas por meio do menu contextual, exigindo do autor um número muito maior de interações para realizar, por exemplo, a tarefa de inserir uma nova mídia.

Além, da barra de ferramentas, a versão `0.3.0` permite que as entidades possam ser adicionadas também através de atalhos de teclado. Assim:

- Tecla `3`: ![4637a12619bcd4f81eff1834a97738a0](/assets/images/extra/icons/cpricon/0.1.0/4637a12619bcd4f81eff1834a97738a0.png) - Adiciona uma mídia na entidade selecionada.
- Tecla `4`: ![767ac29f6853ae3196040c091f60bf80](/assets/images/extra/icons/cpricon/0.1.0/767ac29f6853ae3196040c091f60bf80.png) - Adiciona um contexto na entidade selecionada.
- Tecla `5`: ![e68a8264658b5f57356083f7d336dc75](/assets/images/extra/icons/cpricon/0.1.0/e68a8264658b5f57356083f7d336dc75.png)- Adiciona um *switch* na entidade selecionada.
- Tecla `6`: ![655f1408b210b5c903ada389b3274592](/assets/images/extra/icons/cpricon/0.1.0/655f1408b210b5c903ada389b3274592.png)- Adiciona um *body* no projeto.
- Tecla `7`: ![88436df97d2ccb07d88be134690f429a](/assets/images/extra/icons/cpricon/0.1.0/88436df97d2ccb07d88be134690f429a.png)- Adiciona uma área na entidade selecionada.
- Tecla `8`: ![10c6724abbd112b4259d1370a80d7ba8](/assets/images/extra/icons/cpricon/0.1.0/10c6724abbd112b4259d1370a80d7ba8.png) - Adiciona uma propriedade na entidade selecionada.
- Tecla `9`: ![fe722af773e3379d04ffd2e1fbcd9f6d](/assets/images/extra/icons/cpricon/0.1.0/fe722af773e3379d04ffd2e1fbcd9f6d.png) - Adiciona uma porta na entidade selecionada.
- Tecla `0`: ![19bb5dbacbe287ba704b32cc2d229ab9](/assets/images/extra/icons/cpricon/0.1.0/19bb5dbacbe287ba704b32cc2d229ab9.png) - Adiciona uma porta de *switch* na entidade selecionada.

Um detalhe especial, que vale tanto para a barra de ferramentas quanto para os atalhos, é que uma ação de adição pode ser **ignorada** caso nenhuma entidade esteja selecionada ou se a entidade selecionada não permitir adicionar como um de seus filhos entidades do tipo da ação. Por exemplo, se o autor seleciona uma mídia e aperta a tecla `4` a ação será ignorada, uma vez que o autor está tentando adicionar um contexto como filho de uma mídia. A exceção a essa regra é o *body*, que só será ignorado caso o projeto já contenha um outro *body*.

Para evitar qualquer erro nesse sentido, a nova Visão Estrutural desabilita botões na barra de ferramenta e remove atalhos de teclados conforme o tipo da entidade selecionada na visão.

Mesmo na adição de novas entidades através do menu contextual, existem diferenças entre as duas versões. No caso da versão `0.2.1`, sempre que uma nova entidade é adicionada através do menu contextual, ela é posicionada automaticamente no centro (ou no espaço livre mais próximo no centro) da entidade de destino, a entidade sob a qual o menu contextual foi exibido. Já na versão `0.3.0`, a entidade adicionada é posicionada nas mesmas coordenadas do menu contextual. Isso evita que o autor perca tempo procurando em que posição da entidade de destino a recém adicionada entidade foi posicionada.

### Adicionando relacionamentos

![Adicionando Relacionamentos com a Visão Estrutural (0.2.1) no NCL Composer](/assets/images/posts/72cc6b3522ed622e18b28fa78468de87.gif)

*Figura 6 - Adicionando Relacionamentos com a Visão Estrutural (0.2.1) no NCL Composer*

![Adicionando Relacionamentos com a Visão Estrutural (0.3.0) no NCL Composer](/assets/images/posts/8d79c8a4f54e556f9d574345a86d7e33.gif)

*Figura 7 - Adicionando Relacionamentos com a Visão Estrutural (0.3.0) no NCL Composer*

A versão `0.3.0` traz novos atalhos para criar relacionamentos. Além de segurar tecla `Shift`, meio utilizado pela versão `0.2.1`, é possíver habilitar o modo de criação de *link* através da barra de ferramentas ou através da tecla `2`. Uma vez habilitado o modo de criação de *link*, o autor pode clicar na entidade de origem e arrastar o *mouse* até a entidade de destino, conforme figuras acima.

Assim que identificados as entidades de origem e destino, caso seja permitido criar um relaciomaneto entre essas entidades, uma caixa de diálogo será apresentada para finalizar o processo de criação do *link*. É justamente nessa caixa de diálogo que está mais uma novidade da versão `0.3.0`. Depois de selecionar o conector e os papeis (*role*) das entidades do relacionamento, na versão `0.3.0` o autor pode especificar desde já os valores dos parâmetros do *link* e dos *binds*. No caso da versão `0.2.1`, só é possível especificar os parâmetros do *link* e dos *binds* depois da criação do link através de uma outra caixa de diálogo. Observando alguns usuários durante o processo de autoria, frequentemente esses autores esqueciam de editar os parâmetros do *link* e dos *binds* na versão `0.2.1`.

Outro detalhe, transparente para usuário, é que a partir da versão `0.3.0` as informações dos conectores são carregados diretamente do núcleo do [NCL Composer](http://composer.telemidia.puc-rio.br/). Isso evita alguns possíveis problemas de sincronização das informações dos conectores encontrados na versão `0.2.1`.

## Conclusão

A nova versão da Visão Estrutural traz várias novidades, boa parte delas discutidas neste artigo. Para os desenvolvedores as mudanças são ainda maiores, especialmente por conta da reestruturação e refatoração do código. São mais de 6000 linhas de código a menos do que a versão anterior.

O código da nova Visão Estrutural e de todo o projeto do [NCL Composer](http://composer.telemidia.puc-rio.br/) está disponívem em: <https://github.com/telemidia/nclcomposer>.

É importante lembrar que o [NCL Composer](http://composer.telemidia.puc-rio.br/) ainda está em versão beta, então *bugs* ainda podem ser encontrados. Para reportar algum problema, entre em contato através do email [nclcomposer-dev@googlegroups.com][nclcomposer-mail] ou acesse o [redmine](http://composer.telemidia.puc-rio.br/) do [NCL Composer](http://composer.telemidia.puc-rio.br/).

Para próxima versão, novas mudanças estão planejadas. Dentre elas está a remoção do *body* da Visão Estrutural. Tanto essa quanto outras mudanças podem ser acompanhadas também pelo [redmime](http://composer.telemidia.puc-rio.br/) do [NCL Composer](http://composer.telemidia.puc-rio.br/).