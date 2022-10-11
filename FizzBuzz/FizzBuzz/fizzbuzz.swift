//
//  fizzbuzz.swift
//  FizzBuzz
//
//  Created by Mugi on 2022/10/11.
//

import Foundation
func FizzBuzz(i: Int) -> String{
               switch (i % 3, i % 5){
                   case (0, 0) :
                    return("FizzBuzz")
                   case (0, _) :
                   return("Fizz")
                   case (_, 0) :
                   return("Buzz")
                default:
                   return(String(i))
           }
        }
