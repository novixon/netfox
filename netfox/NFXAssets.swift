//
//  NFXAssets.swift
//  netfox
//
//  Copyright © 2015 kasketis. All rights reserved.
//

import Foundation
import UIKit

enum NFXImage {
    case SETTINGS
    case STATISTICS
}

class NFXAssets
{
    class func getImage(image: NFXImage) -> NSData
    {
        var base64Image: String

        switch image {
        case .SETTINGS:
            base64Image = getSettingsImageBase64()
            break
        case .STATISTICS:
            base64Image = getStatisticsImageBase64()
            break
        }
        
        if let imageData = NSData(base64EncodedString: base64Image, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters) {
            return imageData
        } else {
            return NSData()
        }
    }
    
    
    class func getSettingsImageBase64() -> String
    {
        switch UIScreen.mainScreen().scale {
        case 2.0: //44x44
            return "iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAjVBMVEUAAADsXijtXSfsXSftXijsXibsXSftXibtXSftXijtXSftXSXtXijtXijtXibtXSftXSfsXijsXSfuXSbsXijtXiftXSfuXSbtXijsXSjsXSjsXSjsXSftXSbsXSftXijtXibtXSftXSbuXSXtXSfsXifsXSftXibtXibsXSjtXSjtXSbtXyXtXibsXigoILJHAAAALnRSTlMA+wPDvSDAgdqtlhUH1GpRGOnIk/j0XS7vz6mkdR0PtJw7MguQZFl8VuzMRSaGMJ3GQwAAAi5JREFUOMulVdm2ojAQTEJYZRcQBBQVl+tS//95MwGDAQev50xeslWS7upONXlvfp4kNMkz8k1bo9A0D85XYC8/ELKh2jfYBb12R9LDPGa5ZP1gh1J0Nvb93F2WbIoFilU3CnAWnYmgm648wJ5iuQNaiU3eoy7g4rBPseRYq1gHhksuCZyTBli6WNItgAct6IW4HPbLklZgu0sBO9j0i5tgC8D4a7lAlwP4Id9Z2nf1wdXWkdQ/Xqsc/ic2fXCV2xSreewK6UKdZyjYLLjAacqdmguuO6KqnZy+YSuHuqlFkXbW5VzDbgK+Qm5WACwLQPVc2MMYY/UhpA1Sv2as9lM0w9XhAGTh7mjg1k9MGIsnQwZM6f022y2YeLW0IB7uE7LGz2Lg8wd1NwgjANQrKwL8XMvqEsqLj2RoR3m1fjqX1xwgSbFRbI+pQn9IY2VrUyRk9H3cyFLdtiKVb40SanwLNihJvJCpZoQzZrDQS4jw0z7/5qBpexQgxzZOX9Tps9SlWpt1fu6z34Jy2iuc3Ydwl8jfw70goxZ/SiT+IUXP4xSN31K0QTuf/M70S37QwRjHUTrTVJ8H3ylVdlmBgHxoJ+U7s8HgZkZkHDRMgh1wEcDdtZOvgypfsWDiwLFmqjAy4gNmEANePQjj7QH4hElhHGTDWCPKRAiMkeRmOdZSchU0eP30plLFXDekmKtok8gy0YzKBDHLeWULEcsC9FVpc2Vp+/+iOS3H9N/l+A8JizxgzuMcJQAAAABJRU5ErkJggg=="
            
        case 3.0: //66x66
            return "iVBORw0KGgoAAAANSUhEUgAAAEIAAABCCAMAAADUivDaAAAAmVBMVEUAAADsXijsXijtXSXtXSftXifsXiftXiftXiftXCfsXSftXiXsXijtXijtXSXsXifsXSjsXiftXSfuXiXsXifsXiftXSftXSXtXSfuXCbtXiftXifuXSXuXiTsXSjsXSfuXiXsXifsXSfuXSftXSftXSftXSftXSbuXSbsXSjtXSfsXifsXSfsXiftXSjtXibsXSfuXCbsXiiYR7TuAAAAMnRSTlMA8P0Mn+rzpbEFxE343DLl1rWASO2+YBiaOJF1IBTfeBGrbiaLh1UuK2ZD083HhH5aPfa4iekAAAO0SURBVFjDtZjrYppAEIUBAbmDAor3S7Qm0cT0e/+HKxrCrrC21LTnj3vzMMucnZ1B+w0i/QvWXHsML9R4fZBij+H0S+SwfZBiw/L669pMH6Q48iYaD2Fs0/9sOVg9rRsm/Ujq/TQYfrZ2GPJE5HzcZbCxX24c8qNujcT41sYoJ1R4tijRX3z1h3CoHktpT4XFhhKGf8cGnAzi6gnrQf0G1jqD9WczXYLlUNqhtuFdi07A1C2XTpdwcj/n3CMsp69XqZSjB+1dZcdE/zTW3QH5S04Jq7b+/bpHZ+QAuwvvsG3HTwuj+oMfc4FtjsaSg0ebABDbHBoYt34xwauXlx3r3DpYT1MdNjWtV3Y0GfMMPa17Z1MYIJOYw7qd6mSNp6RgLbTOWMeQNgd30O9O0YddezS5SLAjRpCopAV2x+A0tzEmqokV5N0ocpipZwaw78IwhIGmxgeYtxEjLQZJMijSW185bW8ItWRrqdubxVRYruSQcwhw1AwpnOWFRyBIPC8JgONBmipgcsfXmWSwb0M4O7jlyTvMQtB9SaaGOh73MvlNRAYU61qMBQQH2SXLxr/d+et26oEv+EJYNTweivexhcH+5ee4UtRo74Q6FwRizarpHM2UOZ+5Ijtu9qOJRgUj82bCCItlr7HPpXwTvJ90vqDZGKG3Of94XrjSu1TIbwa+tPdF9HHeeKGBrek4glxYbT+1gmuA2faBg15SmCqph+3BUCVr80rRVx18TyXeRCGmf0VRfGcjxZUinz/+Oud5SRFAdnJ2o+hvnTp52TmnDAIto4LtbUWAzv4krbdaWpb2lG6Lt9i4kogls5bA+22BB/HbdPv6VD2iPCkepH91zD6iXlNoNsXdw242D3uoTvBuQ05wCTnRJeREipCz7xL4ogQwLoHPAJLbwGc83w2/Y3lnqyUVwlkz/Ha9BBZfl8C64yXg5rD63lW0g43WCQMYqsZ9iNcd82JLWRv04r8oGXykAyALeK91xhT6ivLlpHWHm7RqlCggnotzaC7+lK49xwRRM+nY1CsHEN9JGp25JI63Vur6XuVR2VfqupBT137ABdaoMlSkrs0EemwC5iinRFxHrnNMiY3vXCYXIoFup/FDLY0h2F7cVmTCUvcI1jWNXwWwTK8MvrqYyA04TSrbPWJRTOTjascJGLmwQVXS7FxJ8E/tksadipJGaUcsTW3BVxVWP+JrxaXGz6kcL15hpSzvxsWH1jnHNaUi8yGEeA+XuuJmFQX398v+//zx4fufQH4BcieR2nY/RmgAAAAASUVORK5CYII="

        default: return ""
        }
    }
    
    class func getStatisticsImageBase64() -> String
    {
        switch UIScreen.mainScreen().scale {
        case 2.0: //44x44
            return "iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAAflBMVEUAAADsXijsXijsXijsXijtXSfsXijsXSjsXijsXijsXSbsXijtXSjsXijsXifsXijsXiftXifsXifsXCfsXifsXifsXifsXifsXSftXSfsWyjsXijsXifsXifsXijtXifsXiftXybsXSfsXijtXSftXifsWibsXijuYCfsXijgd1NoAAAAKXRSTlMANNuwVBbuh/CUA9UG+t/QvCz0D+jYy3RKOQrlxqmOgGUgv7VvVwxbHXzMYTYAAAEjSURBVDjL7ZRJcoMwEEVlEgkhMU8GzOgp+fe/YChXxQSqK27vvPBbQfdbSD1IkMSxYONb6/Nta+n4B4XWZFjgCQTCZMciCWfZEUyctzzTDH3GlgfgSMmTCuXWlREQUXILbIcz0UijiZC/AiC4/FXNgOBMXdCckI4jEPvLYLdId1Q1pgOi+dZZhDRZjlASpfO7MsXZv32OCNxbdh9gT9U5BoLqN1orlNI0HnRNNiUHvCUsj8htiJOkO/gdlauMi3sRiXabTSc0ULFnI2kvLzaiLyjn1SeLKsdzb92OoA7DmooLClMURnDxAI/ruphxua4+HDTP9qAyazMFj+VK4zhGMmwXqplXdV7URsF96Mr7tjywe6jr8ndV6P+Ru0KuNrHoVukfuacsKwHjtUEAAAAASUVORK5CYII="
            
        case 3.0: //66x66
            return "iVBORw0KGgoAAAANSUhEUgAAAEIAAABCCAMAAADUivDaAAAAjVBMVEUAAADsXijsXijsXijsXijsXSjsXSjsXifsXijsXijuXiXyYSjsXSfsXifsXifsXSfsXifsXifsXifsXSfuXijsXifsXSfsXijsXCbuXSfvXyXsXijsXifsXifsXSfuXibvXCXsXijsXSjtXSftXSfrXSjtXifsXSjrXSjsXifsXijsXSjsXSbsXSjsXihMOSZlAAAALnRSTlMAweB2/TmILZknCgZV7s2x5trIcBP4vJpAFw7z07hnJB3vknxlTErrqaifn1s1SxB9KwAAAaFJREFUWMPtl+lugkAURgVGRPalWq21dt973v/xekdtNBZnLOMP03g0IcDN4SMzc4GehQvfv+i5MYDBv1AMYWir8c2UUFpKejhzHMW458B4qfBcFN5ZcVYcUZE0wcJNkYyAqZOiQfDMiisvK+L9Id4RcrMiB4q9Pd1D82xUxAhqj+F2BrMqF4NBcVWgKZI2QwCMp5ZBXZSg5Mfod9+Nx8CrbV4EI8gn6cQXUbj7RKiAJ/PUWt1E8XOSerpd/gTI49Gs+PKBdL2TAtnn5uQbEMXGCR7cKaC63US6BsJkPZY5jBrzGnlAc799mVgfu146J3dQDizLrFwadirSDEgHw0a7rCt1jvC4WzKtWdPYF3viK1W3FIUKYTY5pF/Ew0VrVY7w4dRybhBSt671mL2kJ9g7z4qz4iBFFThQwYm8/Z7Gx4SFEEI3Q4QQOWbQhC4ZFIIicslwI//uOS5Rqq9HpK8Ul10z9Ffzoq9zdMoghpVCHJKjUwbZxvN5LJsOOaJVhg06R/THDEobth0Kwg4ZOudIfjL8zpEc6qgzMbQ4srrt8DdPC35OUBA7tAAAAABJRU5ErkJggg=="
            
        default: return ""
        }
    }
    
}