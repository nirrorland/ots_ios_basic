import Foundation

protocol Drawable {
  func draw()
}

extension Drawable {
  func draw() {
    print("Drawing: " + "\"Extension (protocol `Drawable`)\")")
  }
}

class Text: Drawable {
  private let text: String


  func draw() {
    print("Drawing: " + "\"\(text) (class `Text`)\"")
  }

  init (a: String) {
    self.text = a
  }
}

typealias Point = (Int, Int)

class Shape: Drawable {
  func draw() {
    print("this is just a Shape")
  }
}

class Triangle: Shape {
  private let a: Point
  private let b: Point
  private let c: Point

  override func draw() {
    print("Drawing: " + "\"\(a), \(b), \(c) (class `Triangle`)\"")
  }

  init(a: Point, b: Point, c: Point) {
    self.a = a
    self.b = b
    self.c = c
  }
}

func drawAll(_ array: [Drawable]) {
  for item in array {
    item.draw()
  }
}

let t = Text(a: "This is text")
t.draw()

let s = Shape()
s.draw()

let tri: Shape = Triangle(a: (1,1), b: (2,2), c: (3,3))
tri.draw()

print("####################NEXT######################")

let arr: [Drawable] = [t, s, tri]

drawAll(arr)