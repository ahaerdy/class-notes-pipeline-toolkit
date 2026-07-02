<!-- ESQUELETO GERADO AUTOMATICAMENTE -->
<!-- NÃO ALTERAR NOMES DE ARQUIVOS -->
<!-- A IA DEVE APENAS COMPLETAR OS BLOCOS INDICADOS -->

#### Verificando a instalação do Maven via terminal

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-09h07m30s738.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

A imagem mostra o terminal com a checagem da instalação do Maven usando o comando `mvn -v`, ao lado da página oficial do Apache Maven ("Maven in 5 Minutes") aberta no navegador. A saída do comando confirma a versão do Maven instalada, o diretório `Maven home`, a versão do Java utilizada pelo runtime e informações do sistema operacional.

```bash
mvn -v
```
```
Apache Maven 3.9.6 (bc0240f3c744dd6b6ec2920b3cd08dcc295161ae)
Maven home: /Users/junior/.sdkman/candidates/maven/current
Java version: 17.0.10, vendor: Amazon.com Inc., runtime: /Users/junior/.sdkman/candidates/java/17.0.10-amzn
Default locale: en_BR, platform encoding: UTF-8
OS name: "mac os x", version: "14.4", arch: "aarch64", family: "mac"
```



#### Criando o projeto Maven no IntelliJ

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-09h10m10s536.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Nesta etapa, a criação do projeto é feita diretamente pela interface do IntelliJ, usando a tela de **New Project**. É selecionado o *Build system* **Maven**, a **JDK 21**, e preenchidos os campos de **GroupId** (`br.com.dio`) e **ArtifactId** (`maven-project`), definindo assim as coordenadas básicas que identificam o projeto dentro do ecossistema Maven.



#### Declarando as dependências do MapStruct e do Lombok no pom.xml

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-09h13m23s207.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

O `pom.xml` já reflete a organização das versões das bibliotecas em `<properties>`, evitando repetição de números de versão ao longo do arquivo, e referenciando-as nas dependências através da sintaxe `${...}`. São declaradas as dependências do **MapStruct** (`mapstruct` e `mapstruct-processor`) e do **Lombok** (`lombok` e `lombok-mapstruct-binding`), sendo esta última responsável por integrar corretamente o Lombok ao processo de geração de código do MapStruct.

```xml
<properties>
    <maven.compiler.source>21</maven.compiler.source>
    <maven.compiler.target>21</maven.compiler.target>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <org.mapstruct.version>1.5.5.Final</org.mapstruct.version>
    <org.projectlombok.version>1.18.30</org.projectlombok.version>
    <lombok-mapstruct-binding.version>0.2.0</lombok-mapstruct-binding.version>
</properties>

<dependencies>
    <dependency>
        <groupId>org.mapstruct</groupId>
        <artifactId>mapstruct</artifactId>
        <version>${org.mapstruct.version}</version>
    </dependency>
    <dependency>
        <groupId>org.mapstruct</groupId>
        <artifactId>mapstruct-processor</artifactId>
        <version>${org.mapstruct.version}</version>
    </dependency>
    <dependency>
        <groupId>org.projectlombok</groupId>
        <artifactId>lombok-mapstruct-binding</artifactId>
        <version>${lombok-mapstruct-binding.version}</version>
    </dependency>
    <dependency>
        <groupId>org.projectlombok</groupId>
        <artifactId>lombok</artifactId>
        <version>${org.projectlombok.version}</version>
    </dependency>
    <dependency>
        <groupId>org.projectlombok</groupId>
        <artifactId>lombok-mapstruct-binding</artifactId>
        <version>${lombok-mapstruct-binding.version}</version>
    </dependency>
</dependencies>
```



#### Dependências baixadas e disponíveis no projeto

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h04m18s791.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Após o *refresh* do Maven, o painel de **External Libraries** do IntelliJ passa a exibir as bibliotecas efetivamente baixadas: `mapstruct`, `mapstruct-processor`, `lombok` e `lombok-mapstruct-binding`, além da JDK do projeto. Isso confirma que o Maven resolveu corretamente as dependências declaradas no `pom.xml` e as disponibilizou como bibliotecas Java prontas para uso no código.



#### Página oficial do Project Lombok

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h07m08s321.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

A imagem mostra a página inicial do **Project Lombok** (`projectlombok.org`), biblioteca Java que se integra ao editor e às ferramentas de build para reduzir a verbosidade do código, gerando automaticamente métodos como getters, setters, construtores, `equals`, `hashCode` e `toString` a partir de anotações.



#### Página oficial do MapStruct

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h07m10s589.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Aqui é exibida a página inicial do **MapStruct** (`mapstruct.org`), um gerador de código que simplifica o mapeamento entre diferentes tipos de objetos Java (por exemplo, entidades e DTOs). Por atuar como um *annotation processor* em tempo de compilação, o MapStruct produz mapeamentos type-safe e de alta performance, sem depender de reflection em tempo de execução.



#### Documentação de instalação do MapStruct via Maven

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h07m20s379.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

A documentação oficial do MapStruct apresenta o trecho de configuração necessário no `pom.xml` para o uso da biblioteca via Maven: a declaração da versão em `<properties>`, a dependência principal `mapstruct` e a configuração do plugin de compilação do Maven, incluindo o `mapstruct-processor` como *annotation processor path*.

```xml
...
<properties>
    <org.mapstruct.version>1.5.5.Final</org.mapstruct.version>
</properties>
...
<dependencies>
    <dependency>
        <groupId>org.mapstruct</groupId>
        <artifactId>mapstruct</artifactId>
        <version>${org.mapstruct.version}</version>
    </dependency>
</dependencies>
...
<build>
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.8.1</version>
            <configuration>
                <source>1.8</source> <!-- depending on your project -->
                <target>1.8</target> <!-- depending on your project -->
                <annotationProcessorPaths>
                    <path>
                        <groupId>org.mapstruct</groupId>
                        <artifactId>mapstruct-processor</artifactId>
                        <version>${org.mapstruct.version}</version>
                    </path>
                    <!-- other annotation processors -->
```



#### Configuração final do plugin de compilação no pom.xml

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h16m08s724.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

O `pom.xml` completo mostra a seção `<build><plugins>`, onde o **maven-compiler-plugin** é configurado apontando para a versão do Java definida em `${java.version}` e declarando, em `<annotationProcessorPaths>`, os processadores de anotação necessários: `mapstruct-processor` e `lombok`. Essa configuração é essencial para que o Lombok e o MapStruct, que dependem fortemente de anotações, funcionem corretamente durante a compilação do projeto.

```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.12.1</version>
            <configuration>
                <source>${java.version}</source>
                <target>${java.version}</target>
                <annotationProcessorPaths>
                    <path>
                        <groupId>org.mapstruct</groupId>
                        <artifactId>mapstruct-processor</artifactId>
                        <version>${org.mapstruct.version}</version>
                    </path>
                    <path>
                        <groupId>org.projectlombok</groupId>
                        <artifactId>lombok</artifactId>
                        <version>${org.projectlombok.version}</version>
                    </path>
                    <path>
                        <groupId>org.mapstruct</groupId>
                        <artifactId>mapstruct-processor</artifactId>
                        <version>${org.mapstruct.version}</version>
                    </path>
                </annotationProcessorPaths>
            </configuration>
        </plugin>
    </plugins>
</build>
```



#### Instalando o plugin do Lombok no IntelliJ

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h55m08s988.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Na tela de **Settings > Plugins** do IntelliJ, o plugin **Lombok** aparece instalado e habilitado. Esse plugin é necessário para que a IDE reconheça corretamente o código gerado automaticamente pelo Lombok (como getters e setters), permitindo autocompletar e navegação normalmente, mesmo que esses métodos não existam explicitamente no código-fonte.



#### Instalando o plugin do MapStruct no IntelliJ

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-10h56m39s346.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Ainda na tela de **Settings > Plugins**, é exibido o plugin **MapStruct Support**, também instalado e habilitado. Ele fornece suporte adicional da IDE para projetos que utilizam o MapStruct, como autocompletar de propriedades de origem e destino nas anotações `@Mapping` e `@ValueMapping`.



#### Criando a classe UserDTO com a anotação @Data

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h10m25s822.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

A classe `UserDTO` é criada com os atributos `id`, `name` e `birthdate`, e recebe a anotação `@Data` do Lombok. Essa anotação é responsável por gerar automaticamente, em tempo de compilação, os métodos de acesso e outros métodos utilitários da classe.

```java
package br.com.dio.dto;

import lombok.Data;
import java.time.LocalDate;

@Data
public class UserDTO {

    private int id;
    private String name;
    private LocalDate birthdate;

}
```



#### Testando o autocomplete dos métodos gerados pelo Lombok

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h10m45s254.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Ao instanciar um `UserDTO` na classe `Main` e digitar `dto.set`, o autocomplete do IntelliJ já exibe os métodos `setId`, `setName` e `setBirthdate`, mesmo sem esses métodos terem sido escritos manualmente no código. Isso evidencia, na prática, o efeito da anotação `@Data`: os setters (assim como os getters) são gerados automaticamente pelo Lombok durante a compilação.

```java
var dto = new UserDTO();
dto.set...
```



#### Compilando o projeto e gerando a pasta target

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h11m13s701.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Após chamar `dto.setId(2);` na classe `Main`, o projeto é compilado através da tarefa **compile** do Maven, exibida no painel lateral. O resultado no console mostra `BUILD SUCCESS`, confirmando que a compilação foi concluída sem erros e que a pasta `target`, com os arquivos `.class` gerados, foi criada.

```java
public class Main {
    public static void main(String[] args) {
        var dto = new UserDTO();
        dto.setId(2);
    }
}
```



#### Inspecionando o bytecode decompilado de UserDTO (construtor e getters)

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h13m31s746.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Abrindo o arquivo `UserDTO.class` gerado dentro de `target/classes`, o IntelliJ decompila o bytecode e mostra o código Java equivalente ao que o Lombok gerou. É possível ver o construtor sem argumentos (`public UserDTO() {}`) e os métodos `getId()` e `getName()`, criados automaticamente a partir da anotação `@Data`, sem que o desenvolvedor tenha escrito essas linhas manualmente.



#### Setters gerados e início do método equals()

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h13m36s149.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Rolando o arquivo decompilado, aparecem também os métodos `getBirthdate()`, `setId()`, `setName()` e `setBirthdate()`, além do início da implementação do método `equals(Object o)`, que compara os atributos da classe para determinar a igualdade entre duas instâncias de `UserDTO`. Todos esses métodos foram gerados automaticamente pelo Lombok.



#### Continuação do método equals() gerado pelo Lombok

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h13m42s181.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

O restante do método `equals()` decompilado mostra a lógica interna gerada pelo Lombok: primeiro é verificado se o objeto comparado é do mesmo tipo, depois se os valores de `id` são iguais, e em seguida os valores de `name` são comparados de forma segura contra `null`. Esse tipo de implementação, embora simples, é repetitivo de escrever manualmente — exatamente o tipo de verbosidade que o Lombok elimina.



#### canEqual(), hashCode() e toString() gerados pelo Lombok

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h13m45s751.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Por fim, o arquivo decompilado revela os métodos `canEqual()` (usado internamente pelo `equals()` para suportar herança com segurança), `hashCode()` (que combina os valores de `id`, `name` e `birthdate` em um único código hash) e `toString()` (que monta uma representação textual do objeto no formato `UserDTO(id=..., name=..., birthdate=...)`). Juntos, esses métodos — construtor, getters, setters, `equals`, `hashCode` e `toString` — resumem tudo o que a anotação `@Data` gera automaticamente para a classe.



#### Preenchendo os dados do UserDTO

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h15m15s014.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Na classe `Main`, o objeto `dto` tem seus atributos preenchidos utilizando os setters gerados pelo Lombok: o `id` recebe o valor `2`, o `name` recebe `"Maria"`, e o `birthdate` recebe uma data calculada a partir de `LocalDate.now().minusYears(30)`, ou seja, a data atual menos 30 anos.

```java
import br.com.dio.dto.UserDTO;
import java.time.LocalDate;

public class Main {

    public static void main(String[] args) {
        var dto = new UserDTO();
        dto.setId(2);
        dto.setName("Maria");
        dto.setBirthdate(LocalDate.now().minusYears(30));
    }

}
```



#### Executando mvn compile pelo terminal

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h29m50s932.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

O comando `mvn compile` é executado diretamente pelo terminal integrado, a partir do diretório raiz do projeto `maven-project`. A saída mostra as fases de `resources` e `compile` do ciclo de vida do Maven sendo executadas, finalizando com `BUILD SUCCESS`, o que confirma que o projeto compila corretamente com a configuração atual do `pom.xml`.

```bash
mvn compile
```
```
[INFO] --- resources:3.3.1:resources (default-resources) @ maven-project ---
[INFO] Copying 0 resource from src/main/resources to target/classes
[INFO] --- compiler:3.12.1:compile (default-compile) @ maven-project ---
[INFO] Nothing to compile - all classes are up to date.
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```



#### Recompilando o projeto após alterações no código-fonte

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h29m52s381.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Ao rodar novamente a tarefa **compile** do Maven, agora pelo painel de execução do IntelliJ, o log indica que o módulo foi recompilado por conta de mudanças no código-fonte, compilando os **3 arquivos-fonte** existentes até este ponto (`Main`, `UserDTO` e a nova classe de modelo). O resultado é novamente `BUILD SUCCESS`.

```
[INFO] --- compiler:3.12.1:compile (default-compile) @ maven-project ---
[INFO] Recompiling the module because of changed source code.
[INFO] Compiling 3 source files with javac [debug target 21] to target/classes
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
```



#### Criando UserModel com anotações individuais do Lombok

<p align="center">
  <img src="000-Midia_e_Anexos/vlcsnap-2026-07-01-12h31m58s799.jpg" alt="" width="840">
</p>

<!-- CLASSIFICACAO_AUTOMATICA -->
<!-- TIPO_DE_IMAGEM: codigo -->
<!-- POSSIVEL_LINGUAGEM: python -->
<!-- CONFIANCA: media -->

<!--
TAREFA DA IA:
- Identificar o conteúdo visual da imagem
- Localizar o trecho correspondente na transcrição
- Produzir explicação didática no contexto da aula
- Extrair e formatar código, se houver
- NÃO inventar nomes de arquivos
-->

Para demonstrar que a anotação `@Data` é, na prática, um resumo de várias anotações menores do Lombok, a classe `UserModel` é criada utilizando essas anotações de forma explícita e individual: `@Getter`, `@Setter`, `@EqualsAndHashCode`, `@NoArgsConstructor` e `@ToString`. O resultado da compilação é equivalente ao obtido anteriormente com `@Data` na classe `UserDTO`.

```java
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@ToString
public class UserModel {

    private int code;
    private String userName;
    private LocalDate birthday;

}
```




---

<!-- TRANSCRIÇÃO COMPLETA — NÃO ALTERAR -->

<!-- INÍCIO DA TRANSCRIÇÃO -->

[ 00:07:59 ] Opa, pessoal, tudo bem? Sejam bem-vindos. Eh, nessa aula aqui a gente vai estar prosseguindo e vendo as opções de formas de instalar o nosso amigo Maven. Eh, outra forma que a gente pode instalar, que foi até o que eu já fiz no meu ambiente aqui, ó, se eu rodar o nosso amigo MVN - V, ele tá pegando a versão 3.9.6. Ah, minha versão de Java tá tá um pouquinho diferente aqui no meu caso. Pro sistema operacional eu tô usando o Java 17 para porque tem alguns programas aí que não estão prontos pro Java 21, mas no nosso projeto a gente tá seguramente usando o Java 21. Então, eh, enfim, isso é só para mostrar. Se eu der aqui no print end aqui, ó, a gente tem a nossa variável Maven Home, ela já até tá dando spoilers do que a gente vai fazer, como vai configurar, é justamente o SDKman. É uma outra opção, que eu acho uma opção bem mais flexível pra gente poder fazer a instalação do nosso amigo Maven.
[ 00:30:00 ] Quem aí já tá habituado com o SDKman, que acompanhou desde o início aí do nosso, aí da nossa, do nosso, toda a nossa jornada aí desde os primeiros passos com o Java, que a gente fez a instalação do JDK pelo SDKman, já tá um pouco familiarizado. Você vai, basicamente, dar um SDK list, só que em vez de Java, você dá Maven. Aí você seleciona a sua versão, ó, 3.9.6. E você dá aqui, ó, SDK Opa! Install Maven. Ele até deu a dica aqui, ó, 3.6.9. E ele vai rodar e vai configurar todo o seu ambiente. Não vou fazer aqui porque eu já tô com o nosso ambiente devidamente instalado. Beleza? Eh, caso vocês queiram aí ver sobre criação de projeto por linha de comando, a gente tem aqui na nossa documentação do Maven, como a gente faz a criação do nosso projeto. Então, eu vou entrar aqui no meu, na minha barra, no caso, no meu, barra não, é projetos. Eu tenho aqui um diretório aqui no meu computador onde eu coloco aqui, ó, projetos/java, onde eu coloco os meus projetos.
[ 01:00:00 ] E vamos fazer o teste aqui, ó. Se a gente rodar o MVN - V, como eu tinha rodado, tá aqui. Agora vamos tentar fazer a criação do nosso projeto via linha de comando. É bem simples. A gente vem aqui, ó, MVN archetype dois pontos generate. Menos, agora a gente passa aqui o menos, nosso group ID, br.com. nosso domínio que a gente vai utilizar aqui, o nosso DIO. Eh, agora a gente vem aqui, dá um D artifact ID. A gente pode chamar, vamos seguir o mesmo exemplo que tá aqui, ó, my app. Agora a gente coloca aqui, ó, D archetype artifact ID é igual a Maven archetype quick start. Vamos seguir o que ele tá colocando aqui, ó. Ah, menos D archetype version é igual a 1.4. Menos D interactive mode é igual a false.
[ 01:30:00 ] Se a gente rodar o nosso comando aqui, ó, ele tá preparando o nosso projeto. Agora a gente pode dar um CD my app. Vamos abrir no VS Code. A gente vem aqui, dá o nosso comando code ponto. Para quem não sabe, esse comando aqui ele vai abrir o VS Code já abrindo na pasta que a gente selecionou, que eu tô, ponto é apontando justamente pro diretório onde ele tá. E tá aqui o nosso projeto, olha só. Toda a estrutura que a gente precisa tá aqui pra gente poder trabalhar. Ó, ele já tem aqui o nosso app, tem uma pasta pra gente já, com coisas aqui pra gente poder trabalhar com testes. Ele já até colocou uma, já até colocou uma dependência aqui no nosso projeto. Ah, essa target é onde ele gera as coisas de compilação, enfim. Aqui a gente tem o nosso amigo pom.xml. Ah,
[ 02:00:00 ] E se a gente for ver aqui, ó, já temos algumas coisas configuradas. Eu, a gente vai entrar em detalhes daqui a pouco aqui do, do, do pom.xml, como que ele funciona, é que a gente gerou o projeto, eu só quis mostrar pra vocês como é que a gente pode fazer para estar gerando o nosso projeto, caso a gente venha necessitar gerar via linha de comando. Então, já sabe onde você pode estar consultando. Ah, vamos fechar aqui e vamos fazer agora o nosso projeto no IntelliJ. Deixa eu dar um CD ponto ponto. Ah, RM -R. Vou deletar esse my app aqui. E agora vamos pro nosso amigo IntelliJ. A gente vem aqui, ó, dá um new project. Ah, vamos chamar de Maven project, por exemplo. Ah, no caso aqui a gente tá colocando aqui o nosso Maven project. Setamos o local onde a gente tá criando o nosso projeto. No caso, a gente pode trabalhar, se a gente for ver o Maven, ele habilita a gente trabalhar com Java, Kotlin, Groovy. HTML, obviamente, ele não vai trabalhar, mas no caso, essas linguagens que eu já publiquei, a gente consegue estar utilizando com ele. Pra você ver que o Maven, ele é bem flexível, ele não tá tão preso a questões assim de, é, preso somente ao Java. Agora a gente coloca o nosso build system, o nosso amigo Maven. A nossa JDK que a gente já setou ela. E aqui a gente tem as nossas configurações, o nosso group ID, que é o nosso package, o nosso artifact ID, que é o nome aqui do nosso projeto. Beleza?
[ 02:30:00 ] Depois de tudo devidamente configurado, você pede pra ele criar. E beleza, a gente tem aqui um projeto limpo, justamente como eu queria, pra gente poder fazer o nosso amigo aqui do zero, certo? Então, agora a gente vai começar a trabalhar com algumas dependências aqui do Maven. Eh, eu já vou até colocar umas dependências aqui pra vocês já verem aí de coisas que a gente pode, de assuntos que a gente pode estar falando futuramente, pra poder estar vindo entendê-los melhores. Vamos entrar então no projeto em si, pra vocês poderem entender exatamente do que eu tô falando e já ficarem com vontade aí de seguir pros nossas próximas aulas. E caso você não tenha as próximas aulas, corre lá na plataforma e já garante aí pra você ficar aí por dentro de tudo. Então, primeira coisa, a gente tem que vir aqui, ó, e declarar as nossas dependências. A gente vem aqui, é um pouco verboso o Maven, mas faz parte. Ah, a gente vai ter a nossa parte de dependências. Eh, enfim. Então, temos aqui o nosso bloco de dependências, onde a gente vai declarar todas as dependências do nosso projeto.
[ 03:00:00 ] A, a primeira, eu vou, a gente vai trabalhar com duas dependências aqui. A primeira dependência que a gente vai colocar é uma dependência de uma lib de mapeamento. Vocês vão entender como que ela funciona. A gente vai aqui, abre um outro dependency. Ele já até setou algumas coisas aqui pra gente. Vou colocar aqui, ó, o group ID, artifact ID, version. Justamente pra gente poder fazer a referência pra elas, ó. A gente coloca o nosso org.mapstruct. Ele já até completou pra gente aqui, ó. Só que eu vou tirar esse parent. No caso, a gente tem aqui o nosso version 1.5.5.final. Agora a gente vem aqui e colocamos também uma outra dependência. Ela vai ser bem parecida com essa, então eu vou copiar ela aqui. É também do mesmo domínio. A gente coloca aqui o traço processor. Beleza. E a gente tá repetindo muito esse version aqui, né? O Maven permite que a gente faça uma coisa bem interessante em relação a isso aqui. Se a gente vier aqui nas properties do nosso, do nosso projeto, a gente pode criar tipo como se fosse uma variável. Vamos então chamar ela de org.project.lombok.version. E aqui a gente coloca a nossa versão, ó. Copiamos aqui, ó. Colocamos. E pra gente poder utilizar ela aqui, ah, vamos, vamos dar aqui um Ctrl+G. Eu vou apagar. E pra gente referenciar, a gente coloca esse símbolo aqui, que é o dólar, abre e fecha chaves e chama aqui, ó, org.project.lombok. Até o IntelliJ sugeriu pra gente, ó. Ele faz referência aqui. A gente não precisa ficar repetindo toda vez essa versão. E se a gente precisar atualizar a nossa lib, a gente só mexe aqui e ele vai atualizar tudo pra gente. Beleza? Ah, no caso, vamos, vamos já colocar todas as dependências pra depois a gente não ter que voltar aqui no pom.
[ 04:00:00 ] E eu vou, eu vou colocar, eu coloco também algumas coisas aqui referente às libs que a gente vai estar utilizando. Próxima lib que eu vou colocar aqui, pra quem já tem aí um certo conhecimento em Java, de repente, pode, já vai, pode até conhecer. Ah, no caso, primeiro vamos declarar aqui a versão dela já. Vamos, a gente vai chamar aqui, ó, de, ah, org.project.lombok.version. 1.18.30. É a versão do Lombok que a gente vai estar utilizando. Ah, agora a gente coloca aqui, ó, org.project.lombok. A gente tem, ah, pegou aqui o do MapStruct. Vamos aproveitar que a gente vai utilizar essa versão também e já vamos colocar aqui, ó. Vou até colocar, eh, aqui também, ó, Lombok traço MapStruct traço binding.version. E vamos colocar a versão aqui. Vamos dar um Ctrl+X. E agora a gente coloca aqui, ó, esse binding aqui do Lombok, que é justamente pra poder, essa dependência é pra poder fazer o nosso amigo Lombok conseguir funcionar do jeito certo com o MapStruct. Mas ainda tô devendo explicações pra vocês de como que funciona essas libs, certo? A gente primeiro vai configurar todo o nosso projeto aqui, depois a gente vai estar entendendo melhor o funcionamento. Agora a gente vem aqui, arrancamos isso daqui daqui. Vamos copiar isso aqui, ó. E a gente coloca aqui, ó. Porque aqui são versões, são libs diferentes, então,
[ 05:00:00 ] Opa, ele colocou o Lombok aqui porque, estranho. Vamos, será que eu que eu não acabei não vendo aqui? Então, vamos mudar essa versão aqui, ó. Eh, no caso, nosso org.mapstruct.version. Ah, vamos copiar. Vamos colar. Beleza. A gente colocou as dependências. Aí pro Maven baixar as dependências, a gente pode vir aqui, ó, pra poder ele recarregar as alterações que ele fez no Maven. A gente vai ver aqui que a gente tem algumas tarefas que a gente pode fazer no Maven. A gente pode vir aqui pra fazer refresh também, ó. Ele já refresh, referenciou as nossas dependências. No de vocês pode demorar um pouco, no meu foi mais rápido porque eu já tenho essas dependências baixadas no, no, no meu computador aqui, na minha máquina já tem. E se a gente for ver aqui em dependências externas, olha só o que a gente tem aqui, ó, as nossas libs, além do da nossa JDK, a gente tem algumas outras coisas a mais aqui, que é justamente o que a gente baixou. Que são projetos aí em código Java, que se a gente for abrir aqui, ó, vai ver que a gente tem aqui código Java que a gente vai estar importando pro nosso projeto, beleza? Agora a gente vem aqui no pom. Pra gente poder trabalhar com, com esse nosso amigo aqui, a gente precisa, eh, colocar um plugin, porque esse, o Lombok e o MapStruct, eles fazem uso, muito uso de anotações, que, que é um assunto que a gente aborda mais pra frente aí no nosso curso. E pra, pra a gente conseguir fazer o nosso projeto, você configurado da forma correta, a gente precisa fazer algumas configurações. Como que eu sei disso? Ah, se a gente vier aqui, ó, por exemplo,
[ 06:00:00 ] Hum, vamos abrir aqui. Se a gente vier, por exemplo, ó, Project, eh, Lombok Project. Vamos pesquisar o Lombok. MapStruct. Eu vou, eu vou disponibilizar esses links pra vocês. E aqui a gente tem toda a documentação que a gente precisa pra estar utilizando as nossas libs. Aqui ele explica, tem aqui um get started, aqui no, vamos ver aqui na documentação, por exemplo, ele dá toda a dica que a gente precisa pra poder configurar, ó, com o Maven. Ele dá aqui todas as instruções que a gente precisa pra estar trabalhando com o nosso amigo Lombok, nosso amigo MapStruct. Aqui o Lombok também, ele tem as instruções, tem aqui sobre features que ele tem. Aqui ele mostra pra fazer o download, instalação, no caso, que além de baixar o seu projeto na, com, se incluir as suas dependências no seu projeto, você vai precisar fazer algumas configurações. E aí ele dá todas as instruções que você precisa aqui. Eu vou entrar em mais detalhes sobre isso assim que a gente configurar, beleza? Ah, pra gente não perder tempo aqui, porque o Maven, ele é bem verboso, eu vou copiar da minha colinha aqui, o, as próximas configurações que a gente teria que estar fazendo, só pra gente não ficar perdendo tempo digitando, mas eu mostro pra vocês aqui, ó. Vou recarregar. E agora, enquanto ele recarrega pra gente, eu vou mostrar o que que eu fiz. Essa seção aqui é referente ao build do projeto, e eu coloquei alguns plugins. Isso aqui é um plugin do Maven pra ele poder trabalhar com compilação, pra ele compilar o nosso projeto, preparar ele direitinho. E aqui a gente tem o nosso, algumas coisas. Por exemplo, esse Java version aqui não está declarado nas nossas dependências, pelo que eu vi. Então, a gente precisa vir aqui e colocar, ó. Opa! Java version 21. Tá aqui. Só pra gente não perder a referência. Aí, no caso aqui, a gente tem esse plugin pra fazer compilação. E aqui nesse plugin, a gente fez algumas configurações, como, aqui a gente tá apontando a versão do Java que a gente tá utilizando. E aqui a gente tem uma, uma seção de annotation processor paths, aonde a gente faz referência às nossas libs.
[ 07:00:00 ] E no caso aqui, a gente tem que utilizar com o MapStruct e com o Lombok e com o binding do Lombok e MapStruct. Isso aqui vai ser importante pra gente. A gente vai entender por que que a gente tá fazendo essa questão de annotation processors e apontando pras nossas dependências. Mas se você, mas isso é um processo que vai variar de dependência pra dependência. O Lombok e o MapStruct, você tem que fazer isso aqui pra eles poderem funcionar corretamente no seu projeto. Mas existem algumas dependências que, basicamente, você acrescenta elas aqui e você já consegue utilizar o seu código. Beleza? Bom, agora a gente viu aqui sobre o nosso amigo. Agora a gente vai ver aqui, já vimos aqui sobre o nosso amigo Maven. Agora a gente vai começar a brincar um pouquinho com usando essas dependências nossas, beleza? Então, vamos vir aqui, ó, na nossa, nosso package do Java, e a gente vai, vamos criar aqui dentro do Java, vamos criar algumas coisinhas, olha só. Eh, não sei por que que ele não criou esse package aqui pra gente. Era pra ele ter criado, mas a gente resolve. Eh, pra gente não ter que ficar clicando no botão direito lá, vamos dar aqui um SRC main Java. Beleza, tô aqui dentro do diretório. Você pode vir aqui perfeitamente, clicar em botão direito e criar os packages que eu vou criar aqui, mas eu vou fazer desse jeito só pra gente não ficar direto ali, porque eu vou criar alguns packages já, já deixar algumas coisas prontas. Vou dar aqui um, opa! MKDIR DTO. MKDIR mapper. E MKDIR model. Beleza? Se eu vier aqui, a gente vai ver que ele atualizou, tá criado aqui os nossos packages. Então, vamos lá. A gente vai criar algumas classes aqui só pra poder demonstrar pra que que serve o nosso, o nosso amigo, primeiro a gente vai ver como, como que funciona o nosso amigo Lombok.
[ 08:00:00 ] Ah, a gente vem aqui, ó, vamos criar uma classe chamada User DTO. E agora, a gente vem aqui, private int ID, private String name e private Local Local Local Date, ah, birthday. Ele provavelmente tá pedindo pra gente fazer a importação aqui. Ué, por que que ele não tá achando o nosso amigo aqui? Local. Era pra ele tá achando o nosso Local Date aqui, estranho. Vamos resolver isso de forma manual, então. Import java.time.Local Date. Ponto e vírgula. Estranho. Talvez seja o project structure. Vamos dar uma olhadinha aqui. Ele tá usando o Java 21. Tá usando o da forma correta. Ah, estranho. Vamos fazer o seguinte. Ah, bom, vamos dar um invalidate caches aqui, que às vezes pode ser cache do IntelliJ, ó. Invalidate caches. Invalidate caches. Vamos ver se ele vai resolver aqui o nosso problema do nosso projeto. Resolveu o problema. Era só, bom, ele ainda tá indexando. Vamos esperar pra eu não falar cedo demais. Tá indexando aqui as configurações do nosso projeto. Já que a gente validou o cache, então ele vai ter que reprocessar. É, era só cache mesmo. Resolveu o nosso problema aqui do Local Date que não tava reconhecendo. Até aqui vocês já conhecem. Ah, eu tava, eu tava até esquecendo, pessoal, até peço desculpas. O Lombok e o MapStruct, pra eles poderem funcionar de forma correta, você tem que fazer umas, umas configurações na sua IDE, no seu editor de textos.
[ 09:00:00 ] Pra, ah, vamos primeiro focar no Lombok. Vamos vir aqui, ó, no nosso IntelliJ settings. Vamos aqui procurar plugins. Pro, pro Lombok funcionar no IntelliJ, você tem que instalar esse plugin aqui. Pra ele poder conseguir trabalhar da forma correta. Você precisa fazer a instalação desse plugin pro Lombok. E pro MapStruct, você também tem essa opção aqui de, de você tá trabalhando, pra você tá trabalhando. Já vou aproveitar e mostrar pra vocês, né? Ah, beleza? Depois que vocês fizerem essa, essa, a instalação dessas extensões, vocês vão ver que isso aqui vai facilitar bastante a vida na utilização do Lombok e do MapStruct. Pro VS Code, você tem plugin pro Lombok, pro MapStruct, eu, pelo menos, não achei. Pra, pro Eclipse, o Lombok, ele segue um processo de configuração um pouquinho diferente, que você pode tá dando uma olhada lá na documentação do Lombok. É um pouquinho diferente, porque ele não tem um plugin do Eclipse, mas também tem como você configurar. Aí você consulta lá a documentação, ou melhor, eu até posso mostrar aqui, ele, ele não é nem complicado. Você vem aqui, ó, Eclipse, ele manda você abrir o seu, o seu jar, o seu jar do Lombok de forma executável. Ah, parece que eles colocaram um plugin do Lombok. Eu não sabia. Na época que eu mexia com o Eclipse, eles só tinham essa forma aqui de você rodar o seu, o seu jar do Lombok, mas parece que agora eles têm um plugin. Então, tá aqui pra vocês consultarem e ver. É bem simples, ó. Procura lá nos softwares, Lombok, faz a instalação e fechou. Beleza?
[ 10:00:00 ] Aí vocês vão ter feito as configurações que vocês precisam pro Lombok funcionar. Tá. Mas o que que é o Lombok? Eu já vou dar um gostinho pra vocês do que que é o Lombok exatamente agora, ó. Eu vou agora colocar uma, uma anotação, ó. Ele até deu a dica aqui pra mim, ó, @data. E olha só. Isso aqui vem do nosso Lombok. Se a gente vier aqui nas nossas libs, olha só, Project Lombok. A gente vai aqui ver dentro de Lombok, ele tem uma anotação aqui, ó, chamada data. Tá. E o que que essa anotação data ela faz? Vamos descobrir agora aqui, ó. Vamos entender o que que ela fez pra gente. Eu vou criar uma classe aqui, ó. Vamos fazer aqui a nossa main. Agora a gente vem aqui, eh, PSVM. Vamos criar o nosso método main. Vamos instanciar aqui o nosso, nosso amigo User DTO. Var DTO é igual a new User DTO. Beleza. A gente vem aqui, ó, DTO. E olha só o que ele fez já. Começamos, estamos começando a ver uma coisa diferente aqui, né? Set ID. E a gente não definiu o set ID pra ele. Foi justamente isso que essa anotação data ela fez. Esse, o Lombok, ele ajuda a gente a enxugar muita verbosidade de algumas coisas no Java. Só que você tem que saber como você vai estar utilizando, tem que utilizar com cuidado o Lombok. Porque às vezes você pode acabar fazendo coisas aí que podem acabar gerando problemas no seu projeto. Então, tenha um bom entendimento da sua lib quando você for estar utilizando. Procura sempre entender o que você tá fazendo. Se a gente, vamos ver se eu acho aqui, ó. Vamos lá. Deixa eu dar aqui um, vou dar um comando aqui. Ah, vamos rodar o compile, ó, compile. Que também a gente poderia vir dar um MVN compile. Ele gerou aqui pra gente a nossa pasta target. Aqui dentro de classes, a gente tem aqui a nossa classe de User DTO. Que isso aqui é o gerado pelo Java pra poder ele compilar e rodar o nosso projeto. E olha só o que que ele fez na nossa classe User DTO. Ele criou um construtor sem argumentos, criou os get sets, criou um equals, criou um hash code e criou um toString. Ele gerou tudo isso aqui pra gente só com aquela anotação @data.
[ 11:00:00 ] Legal, né? Já ajuda a gente até, ah, pra economizar linhas de código que a gente escreveria aqui e ficar uma coisa mais clean pra gente tá trabalhando. Beleza? Vamos então aqui só fazer mais alguns sets, ó. DTO.set name. Vamos chamar aqui de Maria. DTO.set birthday. Local Date.now. Vamos dar aqui um minus years. Vamos 30 anos aqui. Beleza. Vamos criar aqui um agora pra gente poder entender o nosso amigo, a gente entender o nosso amigo MapStruct. Só que pra ele a gente vai ter que criar já mais umas coisinhas, ó. A gente vai vir aqui e vai criar o nosso User Model. Beleza. Agora pro nosso User Model, a gente vai fazer uma estrutura mais ou menos parecida com essa aqui, só que a gente vai fazer umas coisas diferentes. Olha só. Private, foi long que eu trabalhei aqui. Não, foi int. Então, int code, private String username, private Local Date birthday. Ah, não é, não é nascimento, é birth date. Não é date, isso aqui é aniversário. Então, aqui também. Ele vai pedir pra gente arrumar aqui agora, ó. A gente tá conseguindo trabalhar com esse autocomplete aqui justamente por conta do, do plugin do Lombok que a gente fez a instalação no IntelliJ. Essa é a importância de fazer a instalação daquele plugin. Porque se você, sem aquele plugin, o IntelliJ não consegue reconhecer os get sets gerado automaticamente pelo Lombok. Aí o plugin auxilia nesse ponto a gente. Beleza? Então, vamos aqui agora colocar algumas outras coisas. Eu vou fazer o seguinte, eu vou colocar aqui agora, aquela anotação data, ela é como se fosse um, um resumo de algumas anotações que o Lombok tem, que seriam essas, ó, @, no caso, @getter, @setter, @equals and hash code, e também no args constructor e nosso toString. Aquele data é um resumão de tudo isso aqui. Se a gente vier aqui e compilar, ó, ou a gente pode vir aqui e fazer também por linha de comando, MVN compile. Pra compilar o nosso projeto. Ele deu um erro. Por que que ele deu erro? Ah, tá, já sei por que que ele deu erro. É porque o, por causa do diretório onde eu tô. Então, eu vou ter que voltar alguns diretórios aqui. CD ponto ponto. Ah, vamos voltar aqui. Mais um. E é isso aí. Então, acho que agora vai funcionar o nosso MVN compile.
[ 12:00:00 ] Melhor, vamos fechar o terminal e abrir ele de novo, que daí aqui no IntelliJ ele vai abrir onde ele tem que abrir pra gente. MVN compile. Ele tá dando erro aqui por algum motivo. Que estranho. Ah, pom.xml. Resources file. Valid target release. Estranho. Aqui o compile aqui tá funcionando certo, ó. Aqui ele funcionou de boa. É, beleza. A gente rodou. Agora se a gente for aqui procurar a nossa classe model, a gente vai ver que ela tá aqui, ó. A gente tem nossos get sets, temos nosso equals, nosso amigo aqui, ó, hash code, temos nosso construtor e nosso toString. Só pra mostrar que era um resumão justamente daquilo lá. Você também tem outras anotações aí que vai aí de você explorar o Lombok e entender como ele funciona. Não vamos, eh, ficar preso ao Lombok, que o objetivo aqui era justamente mostrar, eh, só como que o nosso amigo Lombok funciona, beleza? Ah, vamos quebrar um pouco essa nossa aula. Na próxima aula, a gente continua a configuração pra gente poder tá entendendo como que funciona o nosso amigo MapStruct. Beleza? Que daí a gente já vai ver aí as facilidades que o Maven proporcionou pra gente. Então, pessoal, pra não ficar longa a aula, me segue aí até a próxima aula. Valeu aí e tamo junto.

<!-- FIM DA TRANSCRIÇÃO -->
