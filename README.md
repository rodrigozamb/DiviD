# DiviD

<h1> BOAS PRÁTICAS </h1>

# <h3> Comandos: </h3>

<p> git add . </p>

<p> git commit -m "nome do commit" </p>

<p> git pull origin branch </p>

<p> git push origin branch </p>

Antes de iniciar os commits no projeto GIT, crie um arquivo .gitignore que irá ignorar arquivos de logs, binários e arquivos com senhas. Você pode encontrar vários modelos na internet, como nesse repositório.

Nunca realize commit direto na Main. Essa prática poderá facilmente ocasionar em perca de código quando você atuar em conjunto com outros desenvolvedores. Utilize a criação de branchs.

Combine com o time o padrão que deverá ser utilizado para nomes de branchs e commits.

Crie um arquivo readme com versões, regras combinadas, modo de executar e testar o projeto. Você pode usar esse exemplo que eu criei, ou esse que está disponível na web.

Crie uma branch para cada tarefa. Separar as implementações em branchs, facilita a localização de bugs.

Especifique a referência única (número da tarefa, nome da tarefa) no nome da branch ou em cada commit.

Realize pequenos commits, sempre mantendo a ultima versão mais estável para o commit atual.

Seja direto nos commits, pequenas modificações com pequenos comentários. Utilize o imperativo, por exemplo: “Adicionado box-shadow no botão da home”.

Insira uma referência do tipo de tarefa que está sendo resolvida no branch ou no commit. Por tipos de tarefa entenda: bug, inovação, estudo.

Ao criar um PR, resumidamente descreva o que foi implementado. Se não houverem outras ferramentas que descrevam os testes, esse também é um ótimo espaço para descrever todos os cenários de teste.


Sempre utilize o ciclo de kanban, ou seja, aguarde code review e análise do código. Preferencialmente não aprove o seu próprio PR, sempre que possível realize o processo completo.
