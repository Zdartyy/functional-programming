package app

import cask.MainRoutes

object ex1 extends cask.MainRoutes:
  override def host = "0.0.0.0"
  override def port = 8080


  // funkcja porownuje rosnąco
  val sortOrder: (Int, Int) => Boolean = (a, b) => a <= b

  @cask.postJson("/is-sorted")
  def checkSorted(nums: List[Int]): ujson.Obj =
    val result = isSorted(nums, sortOrder)
    ujson.Obj(
      "numbers" -> nums,
      "sorted" -> result
    )

  def isSorted(lista: List[Int], porownaj: (Int, Int) => Boolean): Boolean = 
    if lista.length <= 1 then
      true
    else
      lista.sliding(2).forall { pair =>
        porownaj(pair.head, pair.last)
      }

  @cask.postJson("/sum-three")
  def sumThree(list1: List[Int], list2: List[Int], list3: List[Int]): ujson.Obj = 

    def sumTwo(pierwsza: List[Int], druga: List[Int]): List[Int] =
      pierwsza.zip(druga).map { case (x, y) => x + y }
    
    val result = sumTwo(sumTwo(list1, list2), list3)
    
    ujson.Obj(
      "lists" -> ujson.Arr(list1, list2, list3),
      "sum" -> result
    )

  initialize()