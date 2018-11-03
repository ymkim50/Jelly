import Foundation

public enum Size {
    case fullscreen
    case halfscreen
    case custom(value: CGFloat)
}

extension Size: Equatable {
    public static func == (lhs: Size, rhs: Size) -> Bool {
        switch (lhs, rhs) {
            case (.fullscreen,.fullscreen), (.halfscreen,.halfscreen):
                return true
            case (.custom(let lhsValue), .custom(let rhsValue)):
                return lhsValue == rhsValue
            default:
                return false
        }
    }
}
