import Foundation
class authorModel:ObservableObject {
   @Published var authors = [author]()
    init(){
        let pathString = Bundle.main.path(forResource: "dulieu", ofType: "json")
        if let path = pathString{
            let url = URL(fileURLWithPath: path)
            do{
                let data = try Data(contentsOf: url)
                let decorder = JSONDecoder()
                let authorDecode = try decorder.decode([author].self, from: data)
                for r in authorDecode{
                    r.id = UUID()
                }
                self.authors = authorDecode
                

            }
            catch{
                print(error)
            }
        }
    }
}
