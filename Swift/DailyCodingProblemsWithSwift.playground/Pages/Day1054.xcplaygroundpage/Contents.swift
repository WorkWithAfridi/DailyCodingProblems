// This problem was asked by Microsoft.
//
// Implement the singleton pattern with a twist. First, instead of storing one instance, store two instances. And in every even call of getInstance(), return the first instance and in every odd call of getInstance(), return the second instance.

import SwiftUI

var greeting = "Hello, playground"

class MySingletonClass{
    private var apiUrl: String
    private init(apiUrl: String) {
        self.apiUrl = apiUrl
    }
    private static let _instanceOne = MySingletonClass(apiUrl: "apiEndPoint-One")
    private static let _instanceTwo = MySingletonClass(apiUrl: "apiEndPoint-Two")
    private static var patternCount: Int = -1
    
    static func getInstance() -> MySingletonClass {
        patternCount+=1
        if patternCount%2==0 {
            return MySingletonClass._instanceOne
        } else {
            return MySingletonClass._instanceTwo
        }
    }
    
    func getApiUrl() -> String {
        return apiUrl
    }
}


var singletonOne = MySingletonClass.getInstance()
var singletonOneUrl = singletonOne.getApiUrl()
print(singletonOneUrl)

var singletonTwo = MySingletonClass.getInstance()
var singletonTwoUrl = singletonTwo.getApiUrl()
print(singletonTwoUrl)
