package org.func.ex5

import cask.MainRoutes

object ex5 extends cask.MainRoutes:
  override def host = "0.0.0.0"
  override def port = 8080

  //exercise 3.0
  @cask.postJson("/count-numbers")
  def countNumbers(list: List[Int]): ujson.Obj = 
    val mapped = list.map(number => (number, 1))
    val grouped = mapped.groupBy(pair => pair._1)
    val reduced = grouped.map { case (number, pairs) => 
      (number, pairs.length)
    }
    ujson.Obj(
      "input" -> list,
      "counts" -> reduced.map { case (k, v) => (k.toString, v) }
    )

  initialize()