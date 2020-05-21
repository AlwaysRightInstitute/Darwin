import struct Foundation.URL
import struct Foundation.DateComponents

public struct Darwin {
  
  public let firstName   = "Charles"
  public let middleName  = "Robert"
  public let lastName    = "Darwin"
  
  public let birthday    = DateComponents(year: 1809, month: 2, day: 12)
  public let dayOfDeath  = DateComponents(year: 1882, month: 4, day: 19)
  
  public let signatureURL = 
    URL(string: "https://de.wikipedia.org/wiki/Datei:Charles_Darwin_Signature.svg")!
}

public let darwin = Darwin()
