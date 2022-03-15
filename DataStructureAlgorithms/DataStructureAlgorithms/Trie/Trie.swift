//
//  Trie.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 15/03/2022.
//

import Foundation

class Trie<CollectionType: Collection> where CollectionType.Element: Hashable {
    public typealias Node = TrieNode<CollectionType.Element>
    public let root = Node(key: nil, parent: nil)
    
    public init() {
        
    }
}
