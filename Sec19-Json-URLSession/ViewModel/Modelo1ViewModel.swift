import Foundation

class Modelo1ViewModel: ObservableObject {
    
    @Published var datosModelo : [Modelo1] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            do{
                let json = try JSONDecoder().decode([Modelo1].self, from: data)
                DispatchQueue.main.async {
                    self.datosModelo = json
                }
            }catch let error as NSError {
                print("Error en el json ", error.localizedDescription)
            }
        }.resume()
    }
}
