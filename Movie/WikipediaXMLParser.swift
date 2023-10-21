//
//  WikipediaXMLParser.swift
//  WikiExtractor
//
//  Created by Yifan Shi on 10/21/23.
//

import Foundation

class WikipediaXMLParser: NSObject, XMLParserDelegate {
    var currentElement: String = ""
    var articleTitle: String = ""
    var articleContent: String = ""
    
    // Handling start of an XML element
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String: String] = [:]) {
        currentElement = elementName
    }

    // Handling the characters inside an XML element
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        switch currentElement {
        case "title":
            articleTitle += string
        case "text":
            articleContent += string
        default:
            break
        }
    }

    // Handling the end of an XML element
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "text" {
            // For now, just print the title and a snippet of the content.
            // You can expand this to save or process the content as required.
            print("Article Title: \(articleTitle)")
            print("Content Snippet: \(String(articleContent.prefix(100)))...") // showing the first 100 characters
            // Reset for the next article
            articleTitle = ""
            articleContent = ""
        }
    }
}
