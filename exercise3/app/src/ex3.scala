package org.func.ex3

import cask.MainRoutes

object ex3 extends cask.MainRoutes:
  override def host = "0.0.0.0"
  override def port = 8080

  //exercise 3.0
  @cask.postJson("/tail")
  def getTail(list: Seq[Int]): ujson.Obj = 
    val myList = LinkedList(list*)
    val result = tail(myList)
    val resultSeq = toSeq(result)
    
    ujson.Obj(
      "input" -> list,
      "result" -> resultSeq
    )

  def tail[A](lista: LinkedList[A]): LinkedList[A] = 
    lista match 
      case Nil => Nil
      case Element(_, rest) => rest

  def toSeq[A](lista: LinkedList[A]): Seq[A] = 
    lista match 
      case Nil => Seq.empty[A]
      case Element(head, tail) => 
        val restSeq = toSeq(tail)
        head +: restSeq

  initialize()