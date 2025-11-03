//
//  ColorPicker.swift
//  Palette
//
//  Created by Kevin Launay on 20/10/2025.
//

// Create a SwiftUI component for selecting a color from a predefined set of colors

import SwiftUI
public struct ColorGridPicker<T: Colorable>: View {
    enum ScrollState {
        case atStart
        case atEnd
        case scrolling
        case noScroll
    }

    @State private var scrollState: ScrollState = .noScroll
    let gradient = Gradient(colors: [Color.white.opacity(0.5), Color.clear])
    let gradientWidth: CGFloat = 10

    let colors: [T]
    let rows: Int
    @Binding var selectedColor: String?

    public init(colors: [T], rows: Int = 4, selectedColor: Binding<String?>) {
        self.colors = colors
        self._selectedColor = selectedColor
        self.rows = rows
    }
    
    public var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal) {
                LazyHGrid(rows: Array(repeating: GridItem(.fixed(80), spacing: 10), count: rows), spacing: 10) {
                    ForEach(colors, id: \.hex) { color in
                        let borderColor = selectedColor == color.hex && color.color.meetsWCAG_AA(with: .white) ? Color(color.color) : Color.black
                        let lineWidth: CGFloat = selectedColor == color.hex ? 2 : 1
                        
                        VStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(color.color))
                                .frame(width: 60, height: 60)
                                .padding(2)
                                .overlay(alignment: .center) {
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(borderColor, lineWidth: lineWidth)
                                }
                                .scaleEffect(selectedColor == color.hex ? 1.1 : 1.0)
                                .onTapGesture {
                                    selectedColor = color.hex
                                }
                            Text(color.hex)
                                .font(.caption)
                                .lineLimit(1)
                        }
                        .id(color.hex)
                    }
                }
                .padding()
            }
            .onScrollGeometryChange(for: ScrollState.self) { geo in
                if geo.contentSize.width <= geo.bounds.width {
                    return .noScroll
                } else if geo.contentOffset.x <= 0 {
                    return .atStart
                } else if geo.contentOffset.x + geo.bounds.width >= geo.contentSize.width {
                    return .atEnd
                } else {
                    return .scrolling
                }
                
            } action: { oldValue, newValue in
                withAnimation {
                    scrollState = newValue
                }
                print("ScrollState is now \(newValue)")
            }
            .overlay(
                HStack {
                    if scrollState != .atStart && scrollState != .noScroll {
                        LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing)
                            .frame(width: gradientWidth)
                    }
                    Spacer()
                    if scrollState != .atEnd && scrollState != .noScroll {
                        LinearGradient(gradient: gradient, startPoint: .trailing, endPoint: .leading)
                            .frame(width: gradientWidth)
                    }
                }
            )
            .onChange(of: selectedColor) { oldValue, newValue in
                if let hex = newValue {
                    withAnimation {
                        proxy.scrollTo(hex, anchor: .center)
                    }
                }
            }
            .onAppear {
                if let hex = selectedColor {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        withAnimation {
                            proxy.scrollTo(hex, anchor: .center)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedColor: String? = nil
    ScrollView {
        ColorGridPicker(colors: TileColor.allCases, rows: 4, selectedColor: $selectedColor)
        ColorGridPicker(colors: Crayon.sortedByColorCategory(), selectedColor: $selectedColor)
        ColorGridPicker(colors: EGA.allCases, rows: 2, selectedColor: $selectedColor)
        ColorGridPicker(colors: CGA.p0, rows: 1, selectedColor: $selectedColor)
        ColorGridPicker(colors: CGA.p1, rows: 1, selectedColor: $selectedColor)
        ColorGridPicker(colors: CGA.p0hi, rows: 1, selectedColor: $selectedColor)
        ColorGridPicker(colors: CGA.p1hi, rows: 1, selectedColor: $selectedColor)
    }
}
