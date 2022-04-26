//
//  main.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 21/12/2021.
//

import Foundation

//var queue = QueueArray<String>()
//
//queue.enqueue("Hello")
//queue.enqueue("From")
//queue.enqueue("The")
//queue.enqueue("Other")
//queue.enqueue("Side")
//queue.enqueue("Adele")
//
//print("Queue is \(queue)")
//
//var queue = QueueLinkedList<String>()
//queue.enqueue("Ray")
//queue.enqueue("Brian")
//queue.enqueue("Eric")
//print("Queue is \(queue)")
//queue.dequeue()
//print(queue)
//print("Peek \(queue.peek)")

// MARK: Start of TreeNode
//func makeTree() -> TreeNode<String> {
//    let tree = TreeNode("Beverages")
//    let hot = TreeNode("hot")
//    let cold = TreeNode("cold")
//    let tea = TreeNode("tea")
//    let coffee = TreeNode("coffee")
//    let chocolate = TreeNode("cocoa")
//    let blackTea = TreeNode("black")
//    let greenTea = TreeNode("green")
//    let chaiTea = TreeNode("chai")
//    let soda = TreeNode("soda")
//    let milk = TreeNode("milk")
//    let gingerAle = TreeNode("ginger ale")
//    let bitterLemon = TreeNode("bitter lemon")
//    tree.add(hot)
//    tree.add(cold)
//    hot.add(tea)
//    hot.add(coffee)
//    hot.add(chocolate)
//    cold.add(soda)
//    cold.add(milk)
//    tea.add(blackTea)
//    tea.add(greenTea)
//    tea.add(chaiTea)
//    soda.add(gingerAle)
//    soda.add(bitterLemon)
//    return tree
//}
//let tree = makeTree()
//tree.forEachLevelOrder(visit: { print($0.value)})
// MARK: End of TreeNode


// MARK: Start of Binary Tree
//var tree: BinaryTreeNode<Int> = {
//    let zero = BinaryTreeNode(value: 0)
//    let one = BinaryTreeNode(value: 1)
//    let five = BinaryTreeNode(value: 5)
//    let seven = BinaryTreeNode(value: 7)
//    let eight = BinaryTreeNode(value: 8)
//    let nine = BinaryTreeNode(value: 9)
//    seven.leftChild = one
//    one.leftChild = zero
//    one.rightChild = five
//    seven.rightChild = nine
//    nine.leftChild = eight
//    return seven
//}()
//print(tree)
//tree.inOrderTraversal {
//    print($0)
//}
// MARK: End of Binary Tree


// MARK: Start of Binary Search Tree
//var bst =  BinarySearchTree<Int>()
//for i in 0..<5 {
//    bst.insert(i)
//}
//print(bst)
// MARK: End of Binary Search Tree


//let countryList = [
//    "Afghanistan",
//    "Albania",
//    "Algeria",
//    "American Samoa",
//    "Andorra",
//    "Angola",
//    "Anguilla",
//    "Antarctica",
//    "Antigua and Barbuda",
//    "Argentina",
//    "Armenia",
//    "Aruba",
//    "Australia",
//    "Austria",
//    "Azerbaijan",
//    "Bahamas (the)",
//    "Bahrain",
//    "Bangladesh",
//    "Barbados",
//    "Belarus",
//    "Belgium",
//    "Belize",
//    "Benin",
//    "Bermuda",
//    "Bhutan",
//    "Bolivia (Plurinational State of)",
//    "Bonaire, Sint Eustatius and Saba",
//    "Bosnia and Herzegovina",
//    "Botswana",
//    "Bouvet Island",
//    "Brazil",
//    "British Indian Ocean Territory (the)",
//    "Brunei Darussalam",
//    "Bulgaria",
//    "Burkina Faso",
//    "Burundi",
//    "Cabo Verde",
//    "Cambodia",
//    "Cameroon",
//    "Canada",
//    "Cayman Islands (the)",
//    "Central African Republic (the)",
//    "Chad",
//    "Chile",
//    "China",
//    "Christmas Island",
//    "Cocos (Keeling) Islands (the)",
//    "Colombia",
//    "Comoros (the)",
//    "Congo (the Democratic Republic of the)",
//    "Congo (the)",
//    "Cook Islands (the)",
//    "Costa Rica",
//    "Croatia",
//    "Cuba",
//    "Curaçao",
//    "Cyprus",
//    "Czechia",
//    "Côte d'Ivoire",
//    "Denmark",
//    "Djibouti",
//    "Dominica",
//    "Dominican Republic (the)",
//    "Ecuador",
//    "Egypt",
//    "El Salvador",
//    "Equatorial Guinea",
//    "Eritrea",
//    "Estonia",
//    "Eswatini",
//    "Ethiopia",
//    "Falkland Islands (the) [Malvinas]",
//    "Faroe Islands (the)",
//    "Fiji",
//    "Finland",
//    "France",
//    "French Guiana",
//    "French Polynesia",
//    "French Southern Territories (the)",
//    "Gabon",
//    "Gambia (the)",
//    "Georgia",
//    "Germany",
//    "Ghana",
//    "Gibraltar",
//    "Greece",
//    "Greenland",
//    "Grenada",
//    "Guadeloupe",
//    "Guam",
//    "Guatemala",
//    "Guernsey",
//    "Guinea",
//    "Guinea-Bissau",
//    "Guyana",
//    "Haiti",
//    "Heard Island and McDonald Islands",
//    "Holy See (the)",
//    "Honduras",
//    "Hong Kong",
//    "Hungary",
//    "Iceland",
//    "India",
//    "Indonesia",
//    "Iran (Islamic Republic of)",
//    "Iraq",
//    "Ireland",
//    "Isle of Man",
//    "Israel",
//    "Italy",
//    "Jamaica",
//    "Japan",
//    "Jersey",
//    "Jordan",
//    "Kazakhstan",
//    "Kenya",
//    "Kiribati",
//    "Korea (the Democratic People's Republic of)",
//    "Korea (the Republic of)",
//    "Kuwait",
//    "Kyrgyzstan",
//    "Lao People's Democratic Republic (the)",
//    "Latvia",
//    "Lebanon",
//    "Lesotho",
//    "Liberia",
//    "Libya",
//    "Liechtenstein",
//    "Lithuania",
//    "Luxembourg",
//    "Macao",
//    "Madagascar",
//    "Malawi",
//    "Malaysia",
//    "Maldives",
//    "Mali",
//    "Malta",
//    "Marshall Islands (the)",
//    "Martinique",
//    "Mauritania",
//    "Mauritius",
//    "Mayotte",
//    "Mexico",
//    "Micronesia (Federated States of)",
//    "Moldova (the Republic of)",
//    "Monaco",
//    "Mongolia",
//    "Montenegro",
//    "Montserrat",
//    "Morocco",
//    "Mozambique",
//    "Myanmar",
//    "Namibia",
//    "Nauru",
//    "Nepal",
//    "Netherlands (the)",
//    "New Caledonia",
//    "New Zealand",
//    "Nicaragua",
//    "Niger (the)",
//    "Nigeria",
//    "Niue",
//    "Norfolk Island",
//    "Northern Mariana Islands (the)",
//    "Norway",
//    "Oman",
//    "Pakistan",
//    "Palau",
//    "Palestine, State of",
//    "Panama",
//    "Papua New Guinea",
//    "Paraguay",
//    "Peru",
//    "Philippines (the)",
//    "Pitcairn",
//    "Poland",
//    "Portugal",
//    "Puerto Rico",
//    "Qatar",
//    "Republic of North Macedonia",
//    "Romania",
//    "Russian Federation (the)",
//    "Rwanda",
//    "Réunion",
//    "Saint Barthélemy",
//    "Saint Helena, Ascension and Tristan da Cunha",
//    "Saint Kitts and Nevis",
//    "Saint Lucia",
//    "Saint Martin (French part)",
//    "Saint Pierre and Miquelon",
//    "Saint Vincent and the Grenadines",
//    "Samoa",
//    "San Marino",
//    "Sao Tome and Principe",
//    "Saudi Arabia",
//    "Senegal",
//    "Serbia",
//    "Seychelles",
//    "Sierra Leone",
//    "Singapore",
//    "Sint Maarten (Dutch part)",
//    "Slovakia",
//    "Slovenia",
//    "Solomon Islands",
//    "Somalia",
//    "South Africa",
//    "South Georgia and the South Sandwich Islands",
//    "South Sudan",
//    "Spain",
//    "Sri Lanka",
//    "Sudan (the)",
//    "Suriname",
//    "Svalbard and Jan Mayen",
//    "Sweden",
//    "Switzerland",
//    "Syrian Arab Republic",
//    "Taiwan",
//    "Tajikistan",
//    "Tanzania, United Republic of",
//    "Thailand",
//    "Timor-Leste",
//    "Togo",
//    "Tokelau",
//    "Tonga",
//    "Trinidad and Tobago",
//    "Tunisia",
//    "Turkey",
//    "Turkmenistan",
//    "Turks and Caicos Islands (the)",
//    "Tuvalu",
//    "Uganda",
//    "Ukraine",
//    "United Arab Emirates (the)",
//    "United Kingdom of Great Britain and Northern Ireland (the)",
//    "United States Minor Outlying Islands (the)",
//    "United States of America (the)",
//    "Uruguay",
//    "Uzbekistan",
//    "Vanuatu",
//    "Venezuela (Bolivarian Republic of)",
//    "Viet Nam",
//    "Virgin Islands (British)",
//    "Virgin Islands (U.S.)",
//    "Wallis and Futuna",
//    "Western Sahara",
//    "Yemen",
//    "Zambia",
//    "Zimbabwe",
//    "Åland Islands",
//    "Alabama","Alaska","American Samoa","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","District of Columbia","Federated States of Micronesia","Florida","Georgia","Guam","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Marshall Islands","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Northern Mariana Islands","Ohio","Oklahoma","Oregon","Palau","Pennsylvania","Puerto Rico","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virgin Island","Virginia","Washington","West Virginia","Wisconsin","Wyoming","Aberdeen", "Abilene", "Akron", "Albany", "Albuquerque", "Alexandria", "Allentown", "Amarillo", "Anaheim", "Anchorage", "Ann Arbor", "Antioch", "Apple Valley", "Appleton", "Arlington", "Arvada", "Asheville", "Athens", "Atlanta", "Atlantic City", "Augusta", "Aurora", "Austin", "Bakersfield", "Baltimore", "Barnstable", "Baton Rouge", "Beaumont", "Bel Air", "Bellevue", "Berkeley", "Bethlehem", "Billings", "Birmingham", "Bloomington", "Boise", "Boise City", "Bonita Springs", "Boston", "Boulder", "Bradenton", "Bremerton", "Bridgeport", "Brighton", "Brownsville", "Bryan", "Buffalo", "Burbank", "Burlington", "Cambridge", "Canton", "Cape Coral", "Carrollton", "Cary", "Cathedral City", "Cedar Rapids", "Champaign", "Chandler", "Charleston", "Charlotte", "Chattanooga", "Chesapeake", "Chicago", "Chula Vista", "Cincinnati", "Clarke County", "Clarksville", "Clearwater", "Cleveland", "College Station", "Colorado Springs", "Columbia", "Columbus", "Concord", "Coral Springs", "Corona", "Corpus Christi", "Costa Mesa", "Dallas", "Daly City", "Danbury", "Davenport", "Davidson County", "Dayton", "Daytona Beach", "Deltona", "Denton", "Denver", "Des Moines", "Detroit", "Downey", "Duluth", "Durham", "El Monte", "El Paso", "Elizabeth", "Elk Grove", "Elkhart", "Erie", "Escondido", "Eugene", "Evansville", "Fairfield", "Fargo", "Fayetteville", "Fitchburg", "Flint", "Fontana", "Fort Collins", "Fort Lauderdale", "Fort Smith", "Fort Walton Beach", "Fort Wayne", "Fort Worth", "Frederick", "Fremont", "Fresno", "Fullerton", "Gainesville", "Garden Grove", "Garland", "Gastonia", "Gilbert", "Glendale", "Grand Prairie", "Grand Rapids", "Grayslake", "Green Bay", "GreenBay", "Greensboro", "Greenville", "Gulfport-Biloxi", "Hagerstown", "Hampton", "Harlingen", "Harrisburg", "Hartford", "Havre de Grace", "Hayward", "Hemet", "Henderson", "Hesperia", "Hialeah", "Hickory", "High Point", "Hollywood", "Honolulu", "Houma", "Houston", "Howell", "Huntington", "Huntington Beach", "Huntsville", "Independence", "Indianapolis", "Inglewood", "Irvine", "Irving", "Jackson", "Jacksonville", "Jefferson", "Jersey City", "Johnson City", "Joliet", "Kailua", "Kalamazoo", "Kaneohe", "Kansas City", "Kennewick", "Kenosha", "Killeen", "Kissimmee", "Knoxville", "Lacey", "Lafayette", "Lake Charles", "Lakeland", "Lakewood", "Lancaster", "Lansing", "Laredo", "Las Cruces", "Las Vegas", "Layton", "Leominster", "Lewisville", "Lexington", "Lincoln", "Little Rock", "Long Beach", "Lorain", "Los Angeles", "Louisville", "Lowell", "Lubbock", "Macon", "Madison", "Manchester", "Marina", "Marysville", "McAllen", "McHenry", "Medford", "Melbourne", "Memphis", "Merced", "Mesa", "Mesquite", "Miami", "Milwaukee", "Minneapolis", "Miramar", "Mission Viejo", "Mobile", "Modesto", "Monroe", "Monterey", "Montgomery", "Moreno Valley", "Murfreesboro", "Murrieta", "Muskegon", "Myrtle Beach", "Naperville", "Naples", "Nashua", "Nashville", "New Bedford", "New Haven", "New London", "New Orleans", "New York", "New York City", "Newark", "Newburgh", "Newport News", "Norfolk", "Normal", "Norman", "North Charleston", "North Las Vegas", "North Port", "Norwalk", "Norwich", "Oakland", "Ocala", "Oceanside", "Odessa", "Ogden", "Oklahoma City", "Olathe", "Olympia", "Omaha", "Ontario", "Orange", "Orem", "Orlando", "Overland Park", "Oxnard", "Palm Bay", "Palm Springs", "Palmdale", "Panama City", "Pasadena", "Paterson", "Pembroke Pines", "Pensacola", "Peoria", "Philadelphia", "Phoenix", "Pittsburgh", "Plano", "Pomona", "Pompano Beach", "Port Arthur", "Port Orange", "Port Saint Lucie", "Port St. Lucie", "Portland", "Portsmouth", "Poughkeepsie", "Providence", "Provo", "Pueblo", "Punta Gorda", "Racine", "Raleigh", "Rancho Cucamonga", "Reading", "Redding", "Reno", "Richland", "Richmond", "Richmond County", "Riverside", "Roanoke", "Rochester", "Rockford", "Roseville", "Round Lake Beach", "Sacramento", "Saginaw", "Saint Louis", "Saint Paul", "Saint Petersburg", "Salem", "Salinas", "Salt Lake City", "San Antonio", "San Bernardino", "San Buenaventura", "San Diego", "San Francisco", "San Jose", "Santa Ana", "Santa Barbara", "Santa Clara", "Santa Clarita", "Santa Cruz", "Santa Maria", "Santa Rosa", "Sarasota", "Savannah", "Scottsdale", "Scranton", "Seaside", "Seattle", "Sebastian", "Shreveport", "Simi Valley", "Sioux City", "Sioux Falls", "South Bend", "South Lyon", "Spartanburg", "Spokane", "Springdale", "Springfield", "St. Louis", "St. Paul", "St. Petersburg", "Stamford", "Sterling Heights", "Stockton", "Sunnyvale", "Syracuse", "Tacoma", "Tallahassee", "Tampa", "Temecula", "Tempe", "Thornton", "Thousand Oaks", "Toledo", "Topeka", "Torrance", "Trenton", "Tucson", "Tulsa", "Tuscaloosa", "Tyler", "Utica", "Vallejo", "Vancouver", "Vero Beach", "Victorville", "Virginia Beach", "Visalia", "Waco", "Warren", "Washington", "Waterbury", "Waterloo", "West Covina", "West Valley City", "Westminster", "Wichita", "Wilmington", "Winston", "Winter Haven", "Worcester", "Yakima", "Yonkers", "York", "Youngstown"
//];
//
//func searchArray() {
//    if countryList.contains(where: {$0.elementsEqual("Youngstown")}) {
//        print("Is found")
//    } else {
//        print("Not found")
//    }
//}
//
//var trie = Trie<String>()
//func loadTrie() {
//    for country in countryList {
//        trie.insert(country)
//    }
//}
//
//
//func searchTrie(trie: Trie<String>, search: String) {
//    print(trie.contains(search) ? "Found in Trie" : "Not Found in Trie")
//}
//// MARK: Start of Trie Nodes
////var trie = Trie<String>()
////trie.insert("TEACHINGS")
////trie.insert("TEACUPS")
////trie.insert("TERRAIN")
////trie.insert("TEA")
////trie.insert("TERRA")
//
//
//searchArray()
//loadTrie()
//searchTrie(trie: trie, search: "Youngstown")
////print(trie)
//
//trie.root.levelTraverse(visit: { print($0.key)})

// MARK: End of Trie Nodes



// MARK: Start of Heap
//var heap = Heap(sort: >, elements: [1,12,3,4,1,6,8,7])
//print("Index at \(heap.index(of: 6, startingAt: 0)!)")
//while !heap.isEmpty {
//    print(heap.remove()!)
//}
// MARK: End of Heap


// MARK: Start of SelectionSort
//var array = [4,9,10,3]
//insertionSort(&array)
//print(array)
// MARK: End of SelectionSort

// SWAP
// I saw this somewhere and it actually works
//var a = 20
//var b = 30
//(a, b) = (b, a)
//print(b)

var arr = [23,1000,4,9,3,10,2, 78989, 3100013,1,5,64,-1,-9, -23, -99]

//var arr = [88,410,1772,20]

// Bubble Sort
//bubbleSort(&arr)
// Selection Sort
//selectionSort(&arr)
// Insertion Sort
//eInsertionSort(&arr)
//print(arr)
// Merge Sort
//print("Merge sort Result \n\(mergeSort(arr))")
// End of Merge Sort

// Start of Radix Sort
radixSort(array: &arr)
print("Arr is \(arr)")
// End of Radix Sort
