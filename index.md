---
layout: page

title: sobre

navigation:
 - áreas de interesse
 - habilidades
 - curriculum
 - contato
---

Olá, mundo 👋! 

Me chamo [Eduardo](mailto:me@edcaraujo.com) e sou Líder de tecnologia com experiência em **desenvolvimento de software**, **gestão de equipes** e **programação competitiva**.

Atualmente, atuo como **Head de Tecnologia** na [Carefy](https://www.carefy.com.br/), uma *healthtech* com foco na gestão de pacientes internados e auditoria em saúde. Na Carefy, lidero a equipe de desenvolvedores e engenheiros responsáveis pelo evolução e manutenção das aplicações e soluções. Também sou **Professor** na [Universidade Paulista – UNIP](https://www.unip.br/presencial/universidade/campi/ribeirao_preto.aspx), onde leciono nos cursos de Ciência da Computação e Análise e Desenvolvimento de Sistemas.

Anteriormente, trabalhei como **Coordenador de TI** na [Fundação Hospital Santa Lydia  - FHSL](http://www.hospitalsantalydia.com.br/), onde fui responsável pela gestão de TI em oito unidades hospitalares. Também trabalhei como **Pesquisador e Analista de Sistemas** no [Lab. TeleMídia](http://www.telemidia.puc-rio.br/) da [PUC-Rio](https://www.puc-rio.br/), onde contribuí na especificação do Sistema Brasileiro de TV Digital e na Recomendação ITU-T para serviços IPTV.

Recebi o título de **Mestre (Msc.)** em Informática pela PUC-Rio em 2012, mesmo ano em que iniciei o Doutorado (Ph.D.) em Informática também pela PUC-Rio. Sou apaixonado por tecnologia e sempre estou buscando novas oportunidades para aprender e crescer profissionalmente.

## áreas de interesse

- Inovação e Gestão em Saúde
- Desenvolvimento Software
- Gestão de equipes
- Programação Competitiva

## habilidades

Lista de **habilidades**, **papeis**, **tecnologias** e **ferramentas** presentes na minha rotina profissional **atualmente**. Mais detalhes e outras estão disponíveis na [lista completa](/habilidades). Além disso, talvez seja interessante verificar as [disciplinas](/ensino) que estou ensinando neste semestre.

### tech

{% assign skills = site.data.skills 
  | where_exp: "item", "item.categories contains 'tech'"
  | where_exp: "item", "item.tags contains 'daily'" 
  | sort: "title" %}

<p>
{% for skill in skills %}
<a href="{{ skill.url }}">{{ skill.title }}</a> {% if skill != skills.last %}•{% endif %}
{% endfor %}
</p>

### management

{% assign skills = site.data.skills 
  | where_exp: "item", "item.categories contains 'management'"
  | where_exp: "item", "item.tags contains 'daily'" 
  | sort: "title" %}

<p>
{% for skill in skills %}
<a href="{{ skill.url }}">{{ skill.title }}</a> {% if skill != skills.last %}•{% endif %}
{% endfor %}
</p>

## curriculum

### acadêmico

- Doutorando em Informática pela Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio *
- Mestre em Informática pela Pontifícia Universidade Católica do Rio de Janeiro - PUC-Rio
- Bacharel em Ciência da Computação pela Universidade Federal do Maranhão - UFMA

\* Trancado em 2016.

### outros

- Veja também [Curriculum Lattes](http://lattes.cnpq.br/0799632818632295) e [Curriculum Vitae](mailto:me@edcaraujo.com).

## contato

### pessoal

Ribeirão Preto - SP, Brasil.

<i class="fas fa-phone fa-lg"></i> +55 16 ●●●●●-●●●●  
<i class="fas fa-envelope fa-lg"></i> [me@edcaraujo.com](mailto:me@edcaraujo.com)  
<i class="fas fa-home fa-lg"></i> [http://edcaraujo.com/](http://edcaraujo.com/)

### profissional

**Carefy**  
R. Gen. Augusto Soares dos Santos, 100  
Parque Industrial Lagoinha  
Ribeirão Preto - SP, Brasil.  

<i class="fas fa-phone fa-lg"></i> +55 16 98165-6463  
<i class="fas fa-envelope fa-lg"></i> [eduardo.araujo@carefy.com.br](mailto:eduardo.araujo@carefy.com.br)  
<i class="fas fa-home fa-lg"></i> [https://www.carefy.com.br/](https://www.carefy.com.br/)

**Universidade Paulista**  
Av. Carlos Consoni, 10, Jardim Canadá  
CEP 14024-2701  
Ribeirão Preto - SP, Brasil.

<i class="fas fa-phone fa-lg"></i> +55 16 3602-6700  
<i class="fas fa-envelope fa-lg"></i> [eduardo.araujo@docente.unip.br](mailto:eduardo.araujo@docente.unip.br)  
<i class="fas fa-home fa-lg"></i> [https://www.unip.br/](https://www.unip.br/)
