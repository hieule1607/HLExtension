//
//  String+Extension.swift
//  HLExtension
//
//  Created by Hieu Lam on 10/26/18.
//

public extension String {
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
    
    func convertStringToDictionary() -> [String : Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    func toBool() -> Bool? {
        switch self {
        case "True", "true", "yes", "1", "Enable", "enable":
            return true
        case "False", "false", "no", "0", "Disable", "disable":
            return false
        default:
            return nil
        }
    }
    
    // Validate Email
    public var isEmail: Bool {
        do {
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
}
