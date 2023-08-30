
import Foundation

class PostViewModel: ObservableObject {
    @Published var auth = 0
    
    
    func login(email: String, password: String){
        //Creacion URL
        guard let url = URL(string: "https://reqres.in/api/login") else {return}
        //Parametros a enviar
        let parametros = ["email":email, "password": password]
        //Se crea el body con los parametros creados
        let body = try! JSONSerialization.data(withJSONObject: parametros)
        //Se crea el Request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        //Se crea la tarea URLSESSION no olvidar el .resume()
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let response = response {
                print(response)
            }
            
            guard let data = data else { return }
            
            do{
                let datos = try JSONDecoder().decode(PostModel.self, from: data)
                if !datos.token.isEmpty{
                    DispatchQueue.main.async {
                        self.auth = 1
                    }
                }
            }catch let error as NSError {
                print("Error al hacer post ", error.localizedDescription)
                DispatchQueue.main.async {
                    self.auth = 2
                }
            }
        }.resume()
    }
}
