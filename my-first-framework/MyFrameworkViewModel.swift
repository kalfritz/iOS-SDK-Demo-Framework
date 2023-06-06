import Combine

public class MyFrameworkViewModel: ObservableObject {
    @Published var model: MyFrameworkModel
    
    public init(model: MyFrameworkModel) {
        self.model = model
    }
    
    public func sayHello() {
        print(model.message)
    }
}
