package main

import "core:fmt"
import "core:os"
import "core:strings"
import "core:unicode/utf8"


main :: proc()
{
    read_file_by_lines_whole("./Inputs/d1_s1_input.txt")
}

read_file_by_lines_whole :: proc (filepath: string) {
    source, pass := os.read_entire_file(filepath, context.allocator)
    if !pass {
        return
    }
    defer delete(source, context.allocator)

    maxLineNumber: int = 999
    currentLineNumber: int
    values : [1000]int

    data := string(source)
    for line in strings.split_lines_iterator(&data) {
        isFirst : bool = true
        firstDigit : int
        secondDigit : int
        
        for codepoint, index in line {
            
            switch codepoint {
                case 48: 
                    if isFirst == true {
                        firstDigit = 0
                        secondDigit = 0
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 0
                        
                    }
                case 49:
                    if isFirst == true {
                        firstDigit = 1
                        secondDigit = 1
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 1
                        
                    }
                case 50:
                    if isFirst == true {
                        firstDigit = 2
                        secondDigit = 2
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 2
                        
                    }
                case 51:
                    if isFirst == true {
                        firstDigit = 3
                        secondDigit = 3
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 3
                        
                    }
                case 52:
                    if isFirst == true {
                        firstDigit = 4
                        secondDigit = 4
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 4
                        
                    }
                case 53:
                    if isFirst == true {
                        firstDigit = 5
                        secondDigit = 5
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 5
                        
                    }
                case 54:
                    if isFirst == true {
                        firstDigit = 6
                        secondDigit = 6
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 6
                        
                    }
                case 55:
                    if isFirst == true {
                        firstDigit = 7
                        secondDigit = 7
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 7
                        
                    }
                case 56:
                    if isFirst == true {
                        firstDigit = 8
                        secondDigit = 8
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 8
                        
                    } 
                case 57:
                    if isFirst == true {
                        firstDigit = 9
                        secondDigit = 9
                        isFirst = false
                        
                    }
                    else {
                        secondDigit = 9
                    } 

                
            }
            calibrationValue: int = firstDigit * 10 + secondDigit
            values[currentLineNumber] = calibrationValue
        }
        currentLineNumber += 1
    }

    finalResult : int

    for i:= 0; i< 1000; i+= 1{
        finalResult += values[i]
        fmt.println(values[i])
    }

    fmt.println(finalResult)
}