import UIKit

public struct PixelData {
    public init(a _a:UInt8, r _r:UInt8, g _g:UInt8, b _b:UInt8) {a=_a; r=_r; g=_g; b=_b}
    var a: UInt8 = 0
    var r: UInt8 = 0
    var g: UInt8 = 0
    var b: UInt8 = 0
}

public func imageFromBitmap(pixels: [PixelData], width: Int, height: Int) -> UIImage? {
    assert(width > 0  &&  height > 0  &&  pixels.count == Int(width * height))
    
    let pixelDataSize = MemoryLayout<PixelData>.size
    assert(pixelDataSize == 4)
    
    let data: Data = pixels.withUnsafeBufferPointer {
        return Data(buffer: $0)
    }
    
    let cfdata = NSData(data: data) as CFData
    guard let provider = CGDataProvider(data: cfdata) else {
        print("CGDataProvider is not supposed to be nil")
        return nil
    }
    guard let cgimage = CGImage(
        width: width,
        height: height,
        bitsPerComponent: 8,
        bitsPerPixel: 32,
        bytesPerRow: width * pixelDataSize,
        space: CGColorSpaceCreateDeviceRGB(),
        bitmapInfo: CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedFirst.rawValue),
        provider: provider,
        decode: nil,
        shouldInterpolate: true,
        intent: .defaultIntent
        )
        else {
            print("CGImage is not supposed to be nil")
            return nil
    }
    
    return UIImage(cgImage: cgimage)
}
