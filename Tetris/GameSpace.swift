//
//  GameSpace.swift
//  Tetris
//
//  Copyright © 2016 Christopher Boggs. All rights reserved.
//

class GameSpace<T> {
    let cols: Int
    let rows: Int
    var array: Array<T?>
    
    init(cols: Int, rows: Int) {
        self.cols = cols
        self.rows = rows
        array = Array<T?>(count:rows * cols, repeatedValue: nil)
    }
    
    subscript(col: Int, row: Int) -> T? {
        get {
            return array[(row * cols) + col]
        }
        set(newVal) {
            array[(row * cols) + col] = newVal
        }
    }
}
