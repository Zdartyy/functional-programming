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

  initialize()