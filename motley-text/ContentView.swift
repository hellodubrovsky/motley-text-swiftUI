import SwiftUI

struct ContentView: View {
    
    @State private var width: CGFloat = 300
    private let range: ClosedRange<CGFloat> = 100...300

    var body: some View {
        VStack {
            Text("Марафон ")
                .fontWeight(.regular)
                .foregroundColor(.gray) +
            Text("по SwiftUI ")
                .fontWeight(.regular) +
            Text("«Отцовский пинок»")
                .bold()
                .font(.title)
                .foregroundColor(.blue)
        }
        .frame(width: width, height: 200)
        .multilineTextAlignment(.leading)
        .border(.red)

        Slider(value: $width, in: range)
            .padding()
    }
}

#Preview {
    ContentView()
}
