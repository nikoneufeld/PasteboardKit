#if os(macOS)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

/// A Pasteboard maneger only or strings
public struct PasteBoard {
    
    // For AppKit implementation
    #if os(macOS)
    
     public var pasteboard = NSPasteboard.general
    /// Geut the current string. Is nil when empty.w
    public var currentString: String? {
        return pasteboard.string(forType: .string)
        
    }
    @discardableResult
    public func setString(_ str: String) -> Bool {
        pasteboard.clearContents()
        return pasteboard.setData(str.data(using: .utf8)!, forType: .string)
        
    }
    #elseif canImport(UIKit)
    public var pasteboard = UIPasteboard.general
   public  var currentString: String? {
        pasteboard.string
    }
      public func setString(_ str: String) {
        pasteboard.string = str
    }
    #endif
}
