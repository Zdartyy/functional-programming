package org.func.ex4

import cask.MainRoutes

object ex4 extends cask.MainRoutes:
  override def host = "0.0.0.0"
  override def port = 8080

  //exercise 3.0
  @cask.postJson("/append")
  def append(list: List[Int], index: Int, element: Int): ujson.Obj = 
    val (firstPart, secondPart) = list.splitAt(index)

    val result: Option[List[Int]] = Some(firstPart ++ List(element) ++ secondPart)

    result match {
      case Some(newList) => 
        ujson.Obj(
          "originalList" -> list,
          "index" -> index,
          "element" -> element,
          "result" -> newList
        )
      case None => 
        ujson.Obj(
          "error" -> "None returned"
        )
    }

  initialize()