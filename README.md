**Zadanie 1 Docker**

✅ 3.0 Zaimplementuj funkcję isSorted, która sprawdza czy dana funkcja jest posortowana zgodnie z podaną funkcją porównawczą [Link do commita 1](https://github.com/Zdartyy/functional-programming/commit/a8927a21002d8be37edba43cb49fa7ef05bbb3f7)

✅ 3.5 Zaimplementuj funkcję, która zsumuje liczby po wierszach z trzech list na wejściu; wykorzystaj funkcję sprowadzi funkcję z trzema argumentami, do funkcji z dwoma [Link do commita 2](https://github.com/Zdartyy/functional-programming/commit/a61273a28e9ce6cf45776c9fc427c456f327bbd9)

✅ 4.0 Zaimplementuj funkcję setHead, która doda element na początku listy [Link do commita 3](https://github.com/Zdartyy/functional-programming/commit/c9e7cf17ef5772c64d07855c8eebe0d574433cb7)

❌ 4.5 Zaimplementuj funkcję append, która doda element we wskazanym miejscu w liście

❌ 5.0 Zaimplementuj funkcję, która policzy kwadrat liczb z dwóch list (po wierszach) za pomocą funkcji map oraz funkcji anonimowej

Kod: [Link do zadania 1](https://github.com/Zdartyy/functional-programming/blob/main/exercise1/app/src/ex1.scala)

https://github.com/user-attachments/assets/30d1b55b-776a-43ff-a0ef-164d3a62bb67


**Zadanie 2**

✅ Stwórz obraz dockerowy, który bazuje na najnowszej wersji Ubuntu LTS oraz który zawiera paczki:

- Java 8
- Python 3
- Scala (dowolna wersja)
- sbt
- vim

[Link do commita](https://github.com/Zdartyy/functional-programming/commit/6b2b1f4b586d922df4ecd284bbe06a0026099b62)  

[Link do dockerhuba](https://hub.docker.com/repository/docker/zdartyy/exercise2/general)  

Kod: [Link do zadania 2](https://github.com/Zdartyy/functional-programming/blob/main/exercise2/Dockerfile)  



https://github.com/user-attachments/assets/70fb3a46-21f6-4fed-bd32-0d7a47778034



**Zadanie 3**

✅ 3.0 Zwróć wynik funkcji tail, która usuwa pierwszy element z listy (parameter); należy rozważyć przypadek Nil jako parametr [Link do commita 1](https://github.com/Zdartyy/functional-programming/commit/2c610c01305364c4ef254ba60ef080ae901c222c)  

Kod: [Link do zadania 3](https://github.com/Zdartyy/functional-programming/tree/main/exercise3/app/src)  



https://github.com/user-attachments/assets/a54aacd0-54ff-44a6-9ce0-03a90a06ec0c


**Zadanie 4**

✅ 3.0 zwróci taki sam wynik jak zad.1 4.5 ale wykorzysta typ opcjonalny [Link do commita 1](https://github.com/Zdartyy/functional-programming/commit/735fce8906d502eb0fb93372bf651514f4840578)

❌ 3.5 zwroci wariancję z listy; do implementacji wykorzystać należy typ opcjonalny

❌ 4.0 zwróci listę (option), która jest wynikiem połączenia dwóch list (option); w przypadku gdy jedna z list jest None, funkcja powinna zwrócić None

❌ 4.5 zwróci listę za pomocą metody mojeMap[A,B,C](a: Option[A], b: Option[B])(f:(A,B)=>C):Option[C]; należy wykorzystać metodę flatMap oraz map

❌ 5.0 zwróci taki średnią (mean) z listy zwracając Either

Kod: [Link do zadania 4](https://github.com/Zdartyy/functional-programming/tree/main/exercise4)

https://github.com/user-attachments/assets/8b97d78e-0f61-4bd3-8467-70ddc0bfd0ce


**Zadanie 5**

✅ 3.0 zwróci słownik z liczbą powtarzających się liczb za pomocą funkcji mapreduce dla list z liczbami [Link do commita 1](https://github.com/Zdartyy/functional-programming/commit/6299afd3743a7949c5f0ece5b81c24f31bd686ca)

❌ 3.5 zwróci słownik z liczbami podniesionymi do sześcianu za pomocą funkcji mapreduce dla list z liczbami

❌ 4.0 zwróci słownik (student, godziny nauki), która wykorzysta funkcją mapreduce oraz groupBy dla słownika na wejściu

❌ 4.5 zwróci słownik (zdanie, wektor), która wykorzysta funkcję mapreduce oraz bagOfWords

❌ 5.0 zwróci słownik (student, średnia ocen), która wykorzysta funkcjęmapreduce oraz join; na wejściu  są dwie listy: (numer_indeksu, student), (numer_indeksu, kurs, ocena)

Kod: [Link do zadania 5](https://github.com/Zdartyy/functional-programming/blob/main/exercise5/app/src/ex5.scala)

https://github.com/user-attachments/assets/68a43b1c-439b-410d-a91e-b07468e32965


**Zadanie 6**

Kod: [Link do zadania 6](https://github.com/Zdartyy/functional-programming/blob/main/exercise6/Main.hs)

https://github.com/user-attachments/assets/dff89a97-96df-45fc-86bc-6ea5d5c61010

