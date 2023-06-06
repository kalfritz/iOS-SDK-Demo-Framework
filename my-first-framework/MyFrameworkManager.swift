import SwiftUI

public class MyFrameworkManager {
    public static func createView(slug: String, channelId: String) -> some View {
        let model = MyFrameworkModel(slug: slug, channelId: channelId)
        let viewModel = MyFrameworkViewModel(model: model)
        let view = MyFrameworkView(viewModel: viewModel)
        return view
    }
}
