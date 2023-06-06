import SwiftUI

public struct MyFrameworkView: View {
    @ObservedObject var viewModel: MyFrameworkViewModel

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    public var body: some View {
        VStack {
            Spacer()
            Text("Welcome to /\(viewModel.model.slug) livestream")
            Text("Channel ID: \(viewModel.model.channelId)")
            Spacer()
            Text(viewModel.model.text)
            Button(action: {
                viewModel.sayHello()
            }) {
                Text("Say Hello")
            }
            Spacer()
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Go Back")
            }
        }
    }
}
