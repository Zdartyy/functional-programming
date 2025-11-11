package org.func.ex3

sealed trait LinkedList[+A]

case object Nil extends LinkedList[Nothing]

case class Element[A](head: A, tail: LinkedList[A]) extends LinkedList[A]

object LinkedList:
  def apply[A](elements: A*): LinkedList[A] = 
  
    val isEmpty = elements.isEmpty

    if isEmpty then Nil
    else 
      val first = elements.head
      val rest = elements.tail
      val restList = apply(rest*)
      Element(first, restList)