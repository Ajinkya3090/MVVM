//
//  Parser.swift
//  MVVM
//
//  Created by Admin on 24/12/21.
//

import Foundation

struct Parser {
    
    func parser(completionhandler : @escaping ([Contact])->()) {
        let api = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        URLSession.shared.dataTask(with: api!) {
            data, response, error in
            
            if error != nil {
                print(error?.localizedDescription ?? print("no internet"))
                return
        }
            do {
            let result = try JSONDecoder().decode(Welcome.self, from: data!)
                completionhandler(result.contacts)
                
            }catch{
                
            }
            
          
        }.resume()
  }
}
