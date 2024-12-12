; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [333 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [999 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 291
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 266
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x02123411c4e01926, ; 4: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 255
	i64 u0x0284512fad379f7e, ; 5: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 6: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 7: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 8: lib_Xamarin.AndroidX.AppCompat.dll.so => 209
	i64 u0x03621c804933a890, ; 9: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 10: SQLitePCLRaw.provider.e_sqlite3.dll => 199
	i64 u0x0399610510a38a38, ; 11: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 12: ru/Microsoft.Maui.Controls.resources => 319
	i64 u0x044440a55165631e, ; 13: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 297
	i64 u0x046eb1581a80c6b0, ; 14: vi/Microsoft.Maui.Controls.resources => 325
	i64 u0x047408741db2431a, ; 15: Xamarin.AndroidX.DynamicAnimation => 229
	i64 u0x0514f1a3ae77a228, ; 16: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 287
	i64 u0x0517ef04e06e9f76, ; 17: System.Net.Primitives => 71
	i64 u0x051a3be159e4ef99, ; 18: Xamarin.GooglePlayServices.Tasks => 284
	i64 u0x0565d18c6da3de38, ; 19: Xamarin.AndroidX.RecyclerView => 259
	i64 u0x057bf9fa9fb09f7c, ; 20: Microsoft.Data.Sqlite.dll => 175
	i64 u0x0581db89237110e9, ; 21: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 22: Microsoft.Maui.dll => 188
	i64 u0x05a1c25e78e22d87, ; 23: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x05ef98b6a1db882c, ; 24: lib_Microsoft.Data.Sqlite.dll.so => 175
	i64 u0x06076b5d2b581f08, ; 25: zh-HK/Microsoft.Maui.Controls.resources => 326
	i64 u0x06388ffe9f6c161a, ; 26: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 27: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 28: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 234
	i64 u0x0680a433c781bb3d, ; 29: Xamarin.AndroidX.Collection.Jvm => 216
	i64 u0x069fff96ec92a91d, ; 30: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 31: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 231
	i64 u0x0739448d84d3b016, ; 32: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 269
	i64 u0x07469f2eecce9e85, ; 33: mscorlib.dll => 167
	i64 u0x07c57877c7ba78ad, ; 34: ru/Microsoft.Maui.Controls.resources.dll => 319
	i64 u0x07dcdc7460a0c5e4, ; 35: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 36: lib_Microsoft.Extensions.Logging.Debug.dll.so => 182
	i64 u0x088610fc2509f69e, ; 37: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 270
	i64 u0x08a7c865576bbde7, ; 38: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 39: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 226
	i64 u0x08f3c9788ee2153c, ; 40: Xamarin.AndroidX.DrawerLayout => 228
	i64 u0x09138715c92dba90, ; 41: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 42: lib_Microsoft.Extensions.Options.dll.so => 183
	i64 u0x092266563089ae3e, ; 43: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x098b50f911ccea8d, ; 44: lib_Xamarin.GooglePlayServices.Basement.dll.so => 282
	i64 u0x09d144a7e214d457, ; 45: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 46: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 47: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 48: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 49: sk/Microsoft.Maui.Controls.resources => 320
	i64 u0x0b6aff547b84fbe9, ; 50: Xamarin.KotlinX.Serialization.Core.Jvm => 294
	i64 u0x0be2e1f8ce4064ed, ; 51: Xamarin.AndroidX.ViewPager => 272
	i64 u0x0c3ca6cc978e2aae, ; 52: pt-BR/Microsoft.Maui.Controls.resources => 316
	i64 u0x0c3dd9438f54f672, ; 53: lib_Xamarin.GooglePlayServices.Maps.dll.so => 283
	i64 u0x0c59ad9fbbd43abe, ; 54: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 55: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 203
	i64 u0x0c74af560004e816, ; 56: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 57: lib_Microsoft.Maui.Essentials.dll.so => 189
	i64 u0x0c83c82812e96127, ; 58: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 59: Xamarin.AndroidX.Security.SecurityCrypto => 263
	i64 u0x0d13cd7cce4284e4, ; 60: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 61: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 262
	i64 u0x0e04e702012f8463, ; 62: Xamarin.AndroidX.Emoji2 => 230
	i64 u0x0e14e73a54dda68e, ; 63: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0ec01b05613190b9, ; 64: SkiaSharp.Views.Android.dll => 193
	i64 u0x0f37dd7a62ae99af, ; 65: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 217
	i64 u0x0f5e7abaa7cf470a, ; 66: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 67: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 68: Xamarin.AndroidX.CustomView => 225
	i64 u0x1065c4cb554c3d75, ; 69: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 70: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 71: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 72: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 73: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 74: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 245
	i64 u0x11fbe62d469cc1c8, ; 75: Microsoft.VisualStudio.DesignTools.TapContract.dll => 331
	i64 u0x12128b3f59302d47, ; 76: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 77: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 78: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 79: Xamarin.AndroidX.RecyclerView.dll => 259
	i64 u0x12d3b63863d4ab0b, ; 80: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x134eab1061c395ee, ; 81: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 82: Xamarin.AndroidX.Browser => 213
	i64 u0x13a01de0cbc3f06c, ; 83: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 303
	i64 u0x13beedefb0e28a45, ; 84: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 85: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 86: he/Microsoft.Maui.Controls.resources => 304
	i64 u0x143d8ea60a6a4011, ; 87: Microsoft.Extensions.DependencyInjection.Abstractions => 179
	i64 u0x1497051b917530bd, ; 88: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b78ce3adce0011, ; 89: Microsoft.VisualStudio.DesignTools.TapContract => 331
	i64 u0x14e68447938213b7, ; 90: Xamarin.AndroidX.Collection.Ktx.dll => 217
	i64 u0x152a448bd1e745a7, ; 91: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 92: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 93: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 94: System.Resources.Writer.dll => 101
	i64 u0x16bf2a22df043a09, ; 95: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 96: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 97: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 98: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 99: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 100: Xamarin.KotlinX.Coroutines.Core => 291
	i64 u0x1752c12f1e1fc00c, ; 101: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 102: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 307
	i64 u0x17f9358913beb16a, ; 103: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 104: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 105: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 294
	i64 u0x18a9befae51bb361, ; 106: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 107: nb/Microsoft.Maui.Controls.resources.dll => 313
	i64 u0x193d7a04b7eda8bc, ; 108: lib_Xamarin.AndroidX.Print.dll.so => 257
	i64 u0x19777fba3c41b398, ; 109: Xamarin.AndroidX.Startup.StartupRuntime.dll => 265
	i64 u0x19a4c090f14ebb66, ; 110: System.Security.Claims => 119
	i64 u0x1a91866a319e9259, ; 111: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 112: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 113: lib-th-Microsoft.Maui.Controls.resources.dll.so => 322
	i64 u0x1aea8f1c3b282172, ; 114: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4b7a1d0d265fa2, ; 115: Xamarin.Android.Glide.DiskLruCache => 202
	i64 u0x1bbdb16cfa73e785, ; 116: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 246
	i64 u0x1bc766e07b2b4241, ; 117: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 260
	i64 u0x1c753b5ff15bce1b, ; 118: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 119: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 120: System.Globalization.Calendars.dll => 40
	i64 u0x1da4110562816681, ; 121: Xamarin.AndroidX.Security.SecurityCrypto.dll => 263
	i64 u0x1db6820994506bf5, ; 122: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 123: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 124: Xamarin.AndroidX.Navigation.UI => 256
	i64 u0x1e71143913d56c10, ; 125: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 311
	i64 u0x1e7c31185e2fb266, ; 126: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 127: Microsoft.Extensions.Options.dll => 183
	i64 u0x1f055d15d807e1b2, ; 128: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 129: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 130: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 131: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 267
	i64 u0x20237ea48006d7a8, ; 132: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 133: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 134: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 135: System.Globalization => 42
	i64 u0x21419508838f7547, ; 136: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 137: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 138: Xamarin.AndroidX.Annotation.Experimental.dll => 207
	i64 u0x219ea1b751a4dee4, ; 139: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 140: System.Reflection.Emit.ILGeneration => 91
	i64 u0x220fd4f2e7c48170, ; 141: th/Microsoft.Maui.Controls.resources => 322
	i64 u0x224538d85ed15a82, ; 142: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 143: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 144: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 330
	i64 u0x2347c268e3e4e536, ; 145: Xamarin.GooglePlayServices.Basement.dll => 282
	i64 u0x237be844f1f812c7, ; 146: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 147: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 148: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 149: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 150: Xamarin.AndroidX.Core.dll => 222
	i64 u0x247619fe4413f8bf, ; 151: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24de8d301281575e, ; 152: Xamarin.Android.Glide => 200
	i64 u0x252073cc3caa62c2, ; 153: fr/Microsoft.Maui.Controls.resources.dll => 303
	i64 u0x256b8d41255f01b1, ; 154: Xamarin.Google.Crypto.Tink.Android => 278
	i64 u0x25a0a7eff76ea08e, ; 155: SQLitePCLRaw.batteries_v2.dll => 196
	i64 u0x2662c629b96b0b30, ; 156: lib_Xamarin.Kotlin.StdLib.dll.so => 286
	i64 u0x268c1439f13bcc29, ; 157: lib_Microsoft.Extensions.Primitives.dll.so => 184
	i64 u0x26a670e154a9c54b, ; 158: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 159: System.IO.dll => 58
	i64 u0x273f3515de5faf0d, ; 160: id/Microsoft.Maui.Controls.resources.dll => 308
	i64 u0x2742545f9094896d, ; 161: hr/Microsoft.Maui.Controls.resources => 306
	i64 u0x2759af78ab94d39b, ; 162: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 163: Xamarin.Google.Crypto.Tink.Android.dll => 278
	i64 u0x27b410442fad6cf1, ; 164: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 165: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 166: System.Net.Primitives.dll => 71
	i64 u0x286835e259162700, ; 167: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 258
	i64 u0x2927d345f3daec35, ; 168: SkiaSharp.dll => 192
	i64 u0x2949f3617a02c6b2, ; 169: Xamarin.AndroidX.ExifInterface => 232
	i64 u0x29f947844fb7fc11, ; 170: Microsoft.Maui.Controls.HotReload.Forms => 329
	i64 u0x2a128783efe70ba0, ; 171: uk/Microsoft.Maui.Controls.resources.dll => 324
	i64 u0x2a3b095612184159, ; 172: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 173: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 174: fi/Microsoft.Maui.Controls.resources => 302
	i64 u0x2ad5d6b13b7a3e04, ; 175: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 176: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 177: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 178: zh-Hant/Microsoft.Maui.Controls.resources.dll => 328
	i64 u0x2b6989d78cba9a15, ; 179: Xamarin.AndroidX.Concurrent.Futures.dll => 218
	i64 u0x2c8bd14bb93a7d82, ; 180: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 315
	i64 u0x2cbd9262ca785540, ; 181: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 182: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 183: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2ce03196fe1170d2, ; 184: Microsoft.Maui.Controls.Maps.dll => 186
	i64 u0x2d169d318a968379, ; 185: System.Threading.dll => 149
	i64 u0x2d47774b7d993f59, ; 186: sv/Microsoft.Maui.Controls.resources.dll => 321
	i64 u0x2d5ffcae1ad0aaca, ; 187: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 188: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 189: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 190: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 191: el/Microsoft.Maui.Controls.resources.dll => 300
	i64 u0x2f02f94df3200fe5, ; 192: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 193: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 194: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 195: lib_System.Xml.dll.so => 164
	i64 u0x309ee9eeec09a71e, ; 196: lib_Xamarin.AndroidX.Fragment.dll.so => 233
	i64 u0x30bde19041cd89dd, ; 197: lib_Microsoft.Maui.Maps.dll.so => 191
	i64 u0x30c6dda129408828, ; 198: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 199: _Microsoft.Android.Resource.Designer.dll => 332
	i64 u0x312c8ed623cbfc8d, ; 200: Xamarin.AndroidX.Window.dll => 274
	i64 u0x31496b779ed0663d, ; 201: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x32243413e774362a, ; 202: Xamarin.AndroidX.CardView.dll => 214
	i64 u0x3235427f8d12dae1, ; 203: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x326256f7722d4fe5, ; 204: SkiaSharp.Views.Maui.Controls.dll => 194
	i64 u0x329753a17a517811, ; 205: fr/Microsoft.Maui.Controls.resources => 303
	i64 u0x32aa989ff07a84ff, ; 206: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 207: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 208: lib-es-Microsoft.Maui.Controls.resources.dll.so => 301
	i64 u0x341abc357fbb4ebf, ; 209: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 210: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34dfd74fe2afcf37, ; 211: Microsoft.Maui => 188
	i64 u0x34e292762d9615df, ; 212: cs/Microsoft.Maui.Controls.resources.dll => 297
	i64 u0x3508234247f48404, ; 213: Microsoft.Maui.Controls => 185
	i64 u0x353590da528c9d22, ; 214: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 215: lib_Xamarin.AndroidX.ViewPager2.dll.so => 273
	i64 u0x355282fc1c909694, ; 216: Microsoft.Extensions.Configuration => 176
	i64 u0x3552fc5d578f0fbf, ; 217: Xamarin.AndroidX.Arch.Core.Common => 211
	i64 u0x355c649948d55d97, ; 218: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x35ea9d1c6834bc8c, ; 219: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 249
	i64 u0x3628ab68db23a01a, ; 220: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 221: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 222: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 223: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 224: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 225: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 226: lib_Xamarin.Jetbrains.Annotations.dll.so => 285
	i64 u0x37bc29f3183003b6, ; 227: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 228: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 229: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 230: Xamarin.AndroidX.CustomView.dll => 225
	i64 u0x38869c811d74050e, ; 231: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 232: lib_Xamarin.AndroidX.ViewPager.dll.so => 272
	i64 u0x395e37c3334cf82a, ; 233: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 296
	i64 u0x3ab5859054645f72, ; 234: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 235: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 260
	i64 u0x3ae44ac43a1fbdbb, ; 236: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 237: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c3aafb6b3a00bf6, ; 238: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 239: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 240: Xamarin.Kotlin.StdLib => 286
	i64 u0x3c7e5ed3d5db71bb, ; 241: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 242: Xamarin.AndroidX.Browser.dll => 213
	i64 u0x3d1c50cc001a991e, ; 243: Xamarin.Google.Guava.ListenableFuture.dll => 280
	i64 u0x3d2b1913edfc08d7, ; 244: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 245: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 246: Xamarin.AndroidX.Fragment.Ktx.dll => 234
	i64 u0x3d9c2a242b040a50, ; 247: lib_Xamarin.AndroidX.Core.dll.so => 222
	i64 u0x3da7781d6333a8fe, ; 248: SQLitePCLRaw.batteries_v2 => 196
	i64 u0x3dbb6b9f5ab90fa7, ; 249: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 229
	i64 u0x3e5441657549b213, ; 250: Xamarin.AndroidX.ResourceInspection.Annotation => 260
	i64 u0x3e57d4d195c53c2e, ; 251: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 252: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 253: Xamarin.AndroidX.SlidingPaneLayout.dll => 264
	i64 u0x3f510adf788828dd, ; 254: System.Threading.Tasks.Extensions => 143
	i64 u0x407740ff2e914d86, ; 255: Xamarin.AndroidX.Print.dll => 257
	i64 u0x407a10bb4bf95829, ; 256: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 253
	i64 u0x40c6d9cbfdb8b9f7, ; 257: SkiaSharp.Views.Maui.Core.dll => 195
	i64 u0x40c98b6bd77346d4, ; 258: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 259: mscorlib => 167
	i64 u0x41cab042be111c34, ; 260: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 210
	i64 u0x423a9ecc4d905a88, ; 261: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 262: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 263: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 264: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 265: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 266: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 267: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 268: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 205
	i64 u0x437d06c381ed575a, ; 269: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 270: pl/Microsoft.Maui.Controls.resources.dll => 315
	i64 u0x43e8ca5bc927ff37, ; 271: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 231
	i64 u0x448bd33429269b19, ; 272: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 273: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 274: Xamarin.Kotlin.StdLib.dll => 286
	i64 u0x4545802489b736b9, ; 275: Xamarin.AndroidX.Fragment.Ktx => 234
	i64 u0x454b4d1e66bb783c, ; 276: Xamarin.AndroidX.Lifecycle.Process => 242
	i64 u0x45c40276a42e283e, ; 277: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 278: System.AppContext.dll => 6
	i64 u0x46a4213bc97fe5ae, ; 279: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 319
	i64 u0x47358bd471172e1d, ; 280: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47daf4e1afbada10, ; 281: pt/Microsoft.Maui.Controls.resources => 317
	i64 u0x480c0a47dd42dd81, ; 282: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 283: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 236
	i64 u0x49e952f19a4e2022, ; 284: System.ObjectModel => 85
	i64 u0x49f9e6948a8131e4, ; 285: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 271
	i64 u0x4a5667b2462a664b, ; 286: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 256
	i64 u0x4a7a18981dbd56bc, ; 287: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 288: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 241
	i64 u0x4b07a0ed0ab33ff4, ; 289: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 290: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 291: System.Text.Json => 138
	i64 u0x4bf547f87e5016a8, ; 292: lib_SkiaSharp.Views.Android.dll.so => 193
	i64 u0x4c7755cf07ad2d5f, ; 293: System.Net.Http.Json.dll => 64
	i64 u0x4c9caee94c082049, ; 294: Xamarin.GooglePlayServices.Maps => 283
	i64 u0x4cc5f15266470798, ; 295: lib_Xamarin.AndroidX.Loader.dll.so => 251
	i64 u0x4cf6f67dc77aacd2, ; 296: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 297: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 298: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 299: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 300: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 301: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 211
	i64 u0x4d7793536e79c309, ; 302: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 303: System.Runtime.Loader.dll => 110
	i64 u0x4dcf44c3c9b076a2, ; 304: it/Microsoft.Maui.Controls.resources.dll => 309
	i64 u0x4dd9247f1d2c3235, ; 305: Xamarin.AndroidX.Loader.dll => 251
	i64 u0x4e2aeee78e2c4a87, ; 306: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 258
	i64 u0x4e32f00cb0937401, ; 307: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 308: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 309: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 310: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 311: ca/Microsoft.Maui.Controls.resources => 296
	i64 u0x4fd5f3ee53d0a4f0, ; 312: SQLitePCLRaw.lib.e_sqlite3.android => 198
	i64 u0x5037f0be3c28c7a3, ; 313: lib_Microsoft.Maui.Controls.dll.so => 185
	i64 u0x50c3a29b21050d45, ; 314: System.Linq.Parallel.dll => 60
	i64 u0x5131bbe80989093f, ; 315: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 248
	i64 u0x516324a5050a7e3c, ; 316: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 317: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 318: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 319: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 320: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 245
	i64 u0x526ce79eb8e90527, ; 321: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 322: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 323: Xamarin.AndroidX.Core => 222
	i64 u0x52ff996554dbf352, ; 324: Microsoft.Maui.Graphics => 190
	i64 u0x535f7e40e8fef8af, ; 325: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 320
	i64 u0x53978aac584c666e, ; 326: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 327: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 328: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 329: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 326
	i64 u0x53e450ebd586f842, ; 330: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 252
	i64 u0x5435e6f049e9bc37, ; 331: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 332: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 333: Xamarin.AndroidX.Lifecycle.Common.dll => 237
	i64 u0x556e8b63b660ab8b, ; 334: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 238
	i64 u0x5588627c9a108ec9, ; 335: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 336: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 337: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x561449e1215a61e4, ; 338: lib_SkiaSharp.Views.Maui.Core.dll.so => 195
	i64 u0x56442b99bc64bb47, ; 339: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a8b26e1aeae27b, ; 340: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 341: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 342: System.Private.Uri => 87
	i64 u0x576499c9f52fea31, ; 343: Xamarin.AndroidX.Annotation => 206
	i64 u0x578cd35c91d7b347, ; 344: lib_SQLitePCLRaw.core.dll.so => 197
	i64 u0x579a06fed6eec900, ; 345: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 346: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 347: System.Threading.Timer => 148
	i64 u0x58601b2dda4a27b9, ; 348: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 310
	i64 u0x58688d9af496b168, ; 349: Microsoft.Extensions.DependencyInjection.dll => 178
	i64 u0x588c167a79db6bfb, ; 350: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 279
	i64 u0x5906028ae5151104, ; 351: Xamarin.AndroidX.Activity.Ktx => 205
	i64 u0x595a356d23e8da9a, ; 352: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 353: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 207
	i64 u0x5a745f5101a75527, ; 354: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 355: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 221
	i64 u0x5a8f6699f4a1caa9, ; 356: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 357: Xamarin.AndroidX.Legacy.Support.Core.Utils => 236
	i64 u0x5ae9cd33b15841bf, ; 358: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 359: System.Private.DataContractSerialization => 86
	i64 u0x5b5ba1327561f926, ; 360: lib_SkiaSharp.Views.Maui.Controls.dll.so => 194
	i64 u0x5b5f0e240a06a2a2, ; 361: da/Microsoft.Maui.Controls.resources.dll => 298
	i64 u0x5b755276902c8414, ; 362: Xamarin.GooglePlayServices.Base => 281
	i64 u0x5b8109e8e14c5e3e, ; 363: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 364: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 241
	i64 u0x5bdf16b09da116ab, ; 365: Xamarin.AndroidX.Collection => 215
	i64 u0x5c019d5266093159, ; 366: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 246
	i64 u0x5c30a4a35f9cc8c4, ; 367: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 368: lib_Microsoft.Extensions.Logging.dll.so => 180
	i64 u0x5c53c29f5073b0c9, ; 369: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 370: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 371: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 372: lib_Xamarin.AndroidX.Emoji2.dll.so => 230
	i64 u0x5d6ca10d35e9485b, ; 373: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 218
	i64 u0x5d7ec76c1c703055, ; 374: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 375: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 376: Xamarin.AndroidX.Collection.Jvm.dll => 216
	i64 u0x5e467bc8f09ad026, ; 377: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 378: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 379: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 380: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 381: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 382: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 383: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 384: System.Data.Common => 22
	i64 u0x5f7399e166075632, ; 385: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 198
	i64 u0x5f9a2d823f664957, ; 386: lib-el-Microsoft.Maui.Controls.resources.dll.so => 300
	i64 u0x5fa6da9c3cd8142a, ; 387: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 293
	i64 u0x5fac98e0b37a5b9d, ; 388: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 389: lib_Microsoft.Extensions.DependencyInjection.dll.so => 178
	i64 u0x60cd4e33d7e60134, ; 390: Xamarin.KotlinX.Coroutines.Core.Jvm => 292
	i64 u0x60f62d786afcf130, ; 391: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 392: System.IO => 58
	i64 u0x61be8d1299194243, ; 393: Microsoft.Maui.Controls.Xaml => 187
	i64 u0x61d2cba29557038f, ; 394: de/Microsoft.Maui.Controls.resources => 299
	i64 u0x61d88f399afb2f45, ; 395: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 396: System.Private.CoreLib => 173
	i64 u0x63d5e3aa4ef9b931, ; 397: Xamarin.KotlinX.Coroutines.Android.dll => 290
	i64 u0x63f1f6883c1e23c2, ; 398: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 399: Xamarin.Google.Android.Material.dll => 276
	i64 u0x640e3b14dbd325c2, ; 400: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 401: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 402: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6565fba2cd8f235b, ; 403: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 249
	i64 u0x65ecac39144dd3cc, ; 404: Microsoft.Maui.Controls.dll => 185
	i64 u0x65ece51227bfa724, ; 405: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 406: Xamarin.AndroidX.Annotation.Jvm.dll => 208
	i64 u0x6679b2337ee6b22a, ; 407: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 408: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 409: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 248
	i64 u0x66d13304ce1a3efa, ; 410: Xamarin.AndroidX.CursorAdapter => 224
	i64 u0x674303f65d8fad6f, ; 411: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 412: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 220
	i64 u0x67c0802770244408, ; 413: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 414: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 415: lib-da-Microsoft.Maui.Controls.resources.dll.so => 298
	i64 u0x6872ec7a2e36b1ac, ; 416: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 417: Xamarin.KotlinX.AtomicFU.dll => 288
	i64 u0x68fbbbe2eb455198, ; 418: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 419: he/Microsoft.Maui.Controls.resources.dll => 304
	i64 u0x699dffb2427a2d71, ; 420: SQLitePCLRaw.lib.e_sqlite3.android.dll => 198
	i64 u0x69a3e26c76f6eec4, ; 421: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 275
	i64 u0x6a4d7577b2317255, ; 422: System.Runtime.InteropServices.dll => 108
	i64 u0x6ace3b74b15ee4a4, ; 423: nb/Microsoft.Maui.Controls.resources => 313
	i64 u0x6afcedb171067e2b, ; 424: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 425: Xamarin.Jetbrains.Annotations => 285
	i64 u0x6ce874bff138ce2b, ; 426: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 247
	i64 u0x6d12bfaa99c72b1f, ; 427: lib_Microsoft.Maui.Graphics.dll.so => 190
	i64 u0x6d70755158ca866e, ; 428: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 429: Microsoft.Extensions.Primitives => 184
	i64 u0x6d7eeca99577fc8b, ; 430: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 431: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 432: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 224
	i64 u0x6d9bea6b3e895cf7, ; 433: Microsoft.Extensions.Primitives.dll => 184
	i64 u0x6dd9bf4083de3f6a, ; 434: Xamarin.AndroidX.DocumentFile.dll => 227
	i64 u0x6e25a02c3833319a, ; 435: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 254
	i64 u0x6e79c6bd8627412a, ; 436: Xamarin.AndroidX.SavedState.SavedState.Ktx => 262
	i64 u0x6e838d9a2a6f6c9e, ; 437: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 438: lib_System.Core.dll.so => 21
	i64 u0x6fd2265da78b93a4, ; 439: lib_Microsoft.Maui.dll.so => 188
	i64 u0x6fdfc7de82c33008, ; 440: cs/Microsoft.Maui.Controls.resources => 297
	i64 u0x6ffc4967cc47ba57, ; 441: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 442: System.IO.FileSystem.dll => 51
	i64 u0x70c1154d9ce7bd51, ; 443: Xamarin.Kotlin.StdLib.Common.dll => 287
	i64 u0x70e99f48c05cb921, ; 444: tr/Microsoft.Maui.Controls.resources.dll => 323
	i64 u0x70fd3deda22442d2, ; 445: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 313
	i64 u0x71485e7ffdb4b958, ; 446: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 447: lib_Xamarin.Android.Glide.Annotations.dll.so => 201
	i64 u0x71a495ea3761dde8, ; 448: lib-it-Microsoft.Maui.Controls.resources.dll.so => 309
	i64 u0x71ad672adbe48f35, ; 449: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 450: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 451: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 306
	i64 u0x72e0300099accce1, ; 452: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 453: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 454: Xamarin.Google.ErrorProne.Annotations.dll => 279
	i64 u0x734b76fdc0dc05bb, ; 455: lib_GoogleGson.dll.so => 174
	i64 u0x73a6be34e822f9d1, ; 456: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 457: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 458: WindowsBase.dll => 166
	i64 u0x755a91767330b3d4, ; 459: lib_Microsoft.Extensions.Configuration.dll.so => 176
	i64 u0x75c326eb821b85c4, ; 460: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 461: lib_Xamarin.AndroidX.SavedState.dll.so => 261
	i64 u0x76ca07b878f44da0, ; 462: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 463: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 208
	i64 u0x778a805e625329ef, ; 464: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 465: Xamarin.KotlinX.AtomicFU.Jvm => 289
	i64 u0x77f8a4acc2fdc449, ; 466: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 467: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 312
	i64 u0x782c5d8eb99ff201, ; 468: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 469: th/Microsoft.Maui.Controls.resources.dll => 322
	i64 u0x78a45e51311409b6, ; 470: Xamarin.AndroidX.Fragment.dll => 233
	i64 u0x78ed4ab8f9d800a1, ; 471: Xamarin.AndroidX.Lifecycle.ViewModel => 247
	i64 u0x79d8c7c521221403, ; 472: LocationTracker.dll => 0
	i64 u0x7a39601d6f0bb831, ; 473: lib_Xamarin.KotlinX.AtomicFU.dll.so => 288
	i64 u0x7a7e7eddf79c5d26, ; 474: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 247
	i64 u0x7a9a57d43b0845fa, ; 475: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 476: Xamarin.AndroidX.Collection.dll => 215
	i64 u0x7adb8da2ac89b647, ; 477: fi/Microsoft.Maui.Controls.resources.dll => 302
	i64 u0x7b13d9eaa944ade8, ; 478: Xamarin.AndroidX.DynamicAnimation.dll => 229
	i64 u0x7b150145c0a9058c, ; 479: Microsoft.Data.Sqlite => 175
	i64 u0x7bef86a4335c4870, ; 480: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 481: sk/Microsoft.Maui.Controls.resources.dll => 320
	i64 u0x7c2a0bd1e0f988fc, ; 482: lib-de-Microsoft.Maui.Controls.resources.dll.so => 299
	i64 u0x7c41d387501568ba, ; 483: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 484: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 219
	i64 u0x7cb95ad2a929d044, ; 485: Xamarin.GooglePlayServices.Basement => 282
	i64 u0x7cd2ec8eaf5241cd, ; 486: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 487: Xamarin.Jetbrains.Annotations.dll => 285
	i64 u0x7d649b75d580bb42, ; 488: ms/Microsoft.Maui.Controls.resources.dll => 312
	i64 u0x7d8ee2bdc8e3aad1, ; 489: System.Numerics.Vectors => 83
	i64 u0x7df5df8db8eaa6ac, ; 490: Microsoft.Extensions.Logging.Debug => 182
	i64 u0x7dfc3d6d9d8d7b70, ; 491: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 492: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 493: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4465b3f78ad8d0, ; 494: Xamarin.KotlinX.Serialization.Core.dll => 293
	i64 u0x7e571cad5915e6c3, ; 495: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 242
	i64 u0x7e6b1ca712437d7d, ; 496: Xamarin.AndroidX.Emoji2.ViewsHelper => 231
	i64 u0x7e946809d6008ef2, ; 497: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 498: lib_Xamarin.Android.Glide.dll.so => 200
	i64 u0x7eb4f0dc47488736, ; 499: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 284
	i64 u0x7ecc13347c8fd849, ; 500: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 501: Xamarin.AndroidX.ViewPager.dll => 272
	i64 u0x7f9351cd44b1273f, ; 502: Microsoft.Extensions.Configuration.Abstractions => 177
	i64 u0x7fbd557c99b3ce6f, ; 503: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 240
	i64 u0x8076a9a44a2ca331, ; 504: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 505: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 330
	i64 u0x80da183a87731838, ; 506: System.Reflection.Metadata => 95
	i64 u0x80fa55b6d1b0be99, ; 507: SQLitePCLRaw.provider.e_sqlite3 => 199
	i64 u0x812c069d5cdecc17, ; 508: System.dll => 165
	i64 u0x81381be520a60adb, ; 509: Xamarin.AndroidX.Interpolator.dll => 235
	i64 u0x81657cec2b31e8aa, ; 510: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 511: zh-Hant/Microsoft.Maui.Controls.resources => 328
	i64 u0x8277f2be6b5ce05f, ; 512: Xamarin.AndroidX.AppCompat => 209
	i64 u0x828f06563b30bc50, ; 513: lib_Xamarin.AndroidX.CardView.dll.so => 214
	i64 u0x82920a8d9194a019, ; 514: Xamarin.KotlinX.AtomicFU.Jvm.dll => 289
	i64 u0x82b399cb01b531c4, ; 515: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 516: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 517: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 518: uk/Microsoft.Maui.Controls.resources => 324
	i64 u0x83c14ba66c8e2b8c, ; 519: zh-Hans/Microsoft.Maui.Controls.resources => 327
	i64 u0x846ce984efea52c7, ; 520: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 521: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 522: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84f9060cc4a93c8f, ; 523: lib_SkiaSharp.dll.so => 192
	i64 u0x850c5ba0b57ce8e7, ; 524: lib_Xamarin.AndroidX.Collection.dll.so => 215
	i64 u0x851d02edd334b044, ; 525: Xamarin.AndroidX.VectorDrawable => 269
	i64 u0x85c919db62150978, ; 526: Xamarin.AndroidX.Transition.dll => 268
	i64 u0x8662aaeb94fef37f, ; 527: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 528: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 328
	i64 u0x86b3e00c36b84509, ; 529: Microsoft.Extensions.Configuration.dll => 176
	i64 u0x86b62cb077ec4fd7, ; 530: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 531: Xamarin.AndroidX.Annotation.Experimental => 207
	i64 u0x872a5b14c18d328c, ; 532: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 533: Xamarin.Android.Glide.Annotations.dll => 201
	i64 u0x87c69b87d9283884, ; 534: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 535: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 536: Microsoft.Maui.Essentials => 189
	i64 u0x88926583efe7ee86, ; 537: Xamarin.AndroidX.Activity.Ktx.dll => 205
	i64 u0x88ba6bc4f7762b03, ; 538: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 539: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 292
	i64 u0x8930322c7bd8f768, ; 540: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 541: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 542: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 543: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 544: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8ad229ea26432ee2, ; 545: Xamarin.AndroidX.Loader => 251
	i64 u0x8b4ff5d0fdd5faa1, ; 546: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 547: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 548: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 549: lib-he-Microsoft.Maui.Controls.resources.dll.so => 304
	i64 u0x8cb8f612b633affb, ; 550: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 262
	i64 u0x8cdfdb4ce85fb925, ; 551: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 552: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 553: Xamarin.AndroidX.CursorAdapter.dll => 224
	i64 u0x8d52f7ea2796c531, ; 554: Xamarin.AndroidX.Emoji2.dll => 230
	i64 u0x8d7b8ab4b3310ead, ; 555: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 556: System.Collections.Concurrent => 8
	i64 u0x8ed807bfe9858dfc, ; 557: Xamarin.AndroidX.Navigation.Common => 253
	i64 u0x8ee08b8194a30f48, ; 558: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 305
	i64 u0x8ef7601039857a44, ; 559: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 318
	i64 u0x8ef9414937d93a0a, ; 560: SQLitePCLRaw.core.dll => 197
	i64 u0x8efbc0801a122264, ; 561: Xamarin.GooglePlayServices.Tasks.dll => 284
	i64 u0x8f32c6f611f6ffab, ; 562: pt/Microsoft.Maui.Controls.resources.dll => 317
	i64 u0x8f44b45eb046bbd1, ; 563: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 564: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 316
	i64 u0x8fbf5b0114c6dcef, ; 565: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 566: Xamarin.KotlinX.Serialization.Core => 293
	i64 u0x8fd27d934d7b3a55, ; 567: SQLitePCLRaw.core => 197
	i64 u0x90263f8448b8f572, ; 568: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 569: _Microsoft.Android.Resource.Designer => 332
	i64 u0x90393bd4865292f3, ; 570: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 571: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 572: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 248
	i64 u0x907b636704ad79ef, ; 573: lib_Microsoft.Maui.Controls.Xaml.dll.so => 187
	i64 u0x90e9efbfd68593e0, ; 574: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 239
	i64 u0x91418dc638b29e68, ; 575: lib_Xamarin.AndroidX.CustomView.dll.so => 225
	i64 u0x9157bd523cd7ed36, ; 576: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 577: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 578: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 579: ca/Microsoft.Maui.Controls.resources.dll => 296
	i64 u0x92054e486c0c7ea7, ; 580: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 581: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 582: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 212
	i64 u0x92dfc2bfc6c6a888, ; 583: Xamarin.AndroidX.Lifecycle.LiveData => 239
	i64 u0x933da2c779423d68, ; 584: Xamarin.Android.Glide.Annotations => 201
	i64 u0x9388aad9b7ae40ce, ; 585: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 237
	i64 u0x93cfa73ab28d6e35, ; 586: ms/Microsoft.Maui.Controls.resources => 312
	i64 u0x941c00d21e5c0679, ; 587: lib_Xamarin.AndroidX.Transition.dll.so => 268
	i64 u0x944077d8ca3c6580, ; 588: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 589: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 590: lib_Xamarin.AndroidX.Interpolator.dll.so => 235
	i64 u0x967fc325e09bfa8c, ; 591: es/Microsoft.Maui.Controls.resources => 301
	i64 u0x9686161486d34b81, ; 592: lib_Xamarin.AndroidX.ExifInterface.dll.so => 232
	i64 u0x9732d8dbddea3d9a, ; 593: id/Microsoft.Maui.Controls.resources => 308
	i64 u0x978be80e5210d31b, ; 594: Microsoft.Maui.Graphics.dll => 190
	i64 u0x979ab54025cc1c7f, ; 595: lib_Xamarin.GooglePlayServices.Base.dll.so => 281
	i64 u0x97b8c771ea3e4220, ; 596: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 597: System.Collections.Concurrent.dll => 8
	i64 u0x984184e3c70d4419, ; 598: GoogleGson => 174
	i64 u0x9843944103683dd3, ; 599: Xamarin.AndroidX.Core.Core.Ktx => 223
	i64 u0x98d720cc4597562c, ; 600: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 601: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 602: System.Threading.Overlapped.dll => 141
	i64 u0x99a00ca5270c6878, ; 603: Xamarin.AndroidX.Navigation.Runtime => 255
	i64 u0x99cdc6d1f2d3a72f, ; 604: ko/Microsoft.Maui.Controls.resources.dll => 311
	i64 u0x9a01b1da98b6ee10, ; 605: Xamarin.AndroidX.Lifecycle.Runtime.dll => 243
	i64 u0x9a5ccc274fd6e6ee, ; 606: Jsr305Binding.dll => 277
	i64 u0x9ae6940b11c02876, ; 607: lib_Xamarin.AndroidX.Window.dll.so => 274
	i64 u0x9b211a749105beac, ; 608: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 609: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 610: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 291
	i64 u0x9bd8cc74558ad4c7, ; 611: Xamarin.KotlinX.AtomicFU => 288
	i64 u0x9c244ac7cda32d26, ; 612: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 613: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 290
	i64 u0x9c8f6872beab6408, ; 614: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 615: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 616: Xamarin.AndroidX.CustomView.PoolingContainer => 226
	i64 u0x9d5dbcf5a48583fe, ; 617: lib_Xamarin.AndroidX.Activity.dll.so => 204
	i64 u0x9d74dee1a7725f34, ; 618: Microsoft.Extensions.Configuration.Abstractions.dll => 177
	i64 u0x9e4534b6adaf6e84, ; 619: nl/Microsoft.Maui.Controls.resources => 314
	i64 u0x9e4b95dec42769f7, ; 620: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 621: Xamarin.AndroidX.Navigation.Common.dll => 253
	i64 u0x9ef542cf1f78c506, ; 622: Xamarin.AndroidX.Lifecycle.LiveData.Core => 240
	i64 u0xa00832eb975f56a8, ; 623: lib_System.Net.dll.so => 82
	i64 u0xa0ad78236b7b267f, ; 624: Xamarin.AndroidX.Window => 274
	i64 u0xa0d8259f4cc284ec, ; 625: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 626: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 278
	i64 u0xa0ff9b3e34d92f11, ; 627: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 628: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 629: Xamarin.Google.Android.Material => 276
	i64 u0xa1b9d7c27f47219f, ; 630: Xamarin.AndroidX.Navigation.UI.dll => 256
	i64 u0xa2572680829d2c7c, ; 631: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 632: System.Xml.XmlDocument.dll => 162
	i64 u0xa2beee74530fc01c, ; 633: SkiaSharp.Views.Android => 193
	i64 u0xa308401900e5bed3, ; 634: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 635: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 636: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 637: Xamarin.AndroidX.VectorDrawable.Animated => 270
	i64 u0xa46aa1eaa214539b, ; 638: ko/Microsoft.Maui.Controls.resources => 311
	i64 u0xa4edc8f2ceae241a, ; 639: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 640: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 641: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 642: Xamarin.AndroidX.DocumentFile => 227
	i64 u0xa5b7152421ed6d98, ; 643: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 644: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 645: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 646: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 647: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 648: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 649: lib_Jsr305Binding.dll.so => 277
	i64 u0xa66cbee0130865f7, ; 650: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 651: Xamarin.AndroidX.SavedState.dll => 261
	i64 u0xa684b098dd27b296, ; 652: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 263
	i64 u0xa68a420042bb9b1f, ; 653: Xamarin.AndroidX.DrawerLayout.dll => 228
	i64 u0xa6d26156d1cacc7c, ; 654: Xamarin.Android.Glide.dll => 200
	i64 u0xa75386b5cb9595aa, ; 655: Xamarin.AndroidX.Lifecycle.Runtime.Android => 244
	i64 u0xa763fbb98df8d9fb, ; 656: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 657: Xamarin.AndroidX.Lifecycle.Common.Jvm => 238
	i64 u0xa7c31b56b4dc7b33, ; 658: hu/Microsoft.Maui.Controls.resources => 307
	i64 u0xa7eab29ed44b4e7a, ; 659: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 660: Microsoft.VisualBasic.Core => 2
	i64 u0xa843f6095f0d247d, ; 661: Xamarin.GooglePlayServices.Base.dll => 281
	i64 u0xa859a95830f367ff, ; 662: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 249
	i64 u0xa8b52f21e0dbe690, ; 663: System.Runtime.Serialization.dll => 116
	i64 u0xa8ee4ed7de2efaee, ; 664: Xamarin.AndroidX.Annotation.dll => 206
	i64 u0xa95590e7c57438a4, ; 665: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 666: Microsoft.Extensions.Logging.Abstractions => 181
	i64 u0xaa443ac34067eeef, ; 667: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 668: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 669: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 670: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 179
	i64 u0xaaf84bb3f052a265, ; 671: el/Microsoft.Maui.Controls.resources => 300
	i64 u0xab9af77b5b67a0b8, ; 672: Xamarin.AndroidX.ConstraintLayout.Core => 220
	i64 u0xab9c1b2687d86b0b, ; 673: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 674: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 675: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 240
	i64 u0xac5acae88f60357e, ; 676: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 677: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 678: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 679: ro/Microsoft.Maui.Controls.resources => 318
	i64 u0xacdd9e4180d56dda, ; 680: Xamarin.AndroidX.Concurrent.Futures => 218
	i64 u0xacf42eea7ef9cd12, ; 681: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 682: lib_Xamarin.AndroidX.DocumentFile.dll.so => 227
	i64 u0xad89c07347f1bad6, ; 683: nl/Microsoft.Maui.Controls.resources.dll => 314
	i64 u0xadbb53caf78a79d2, ; 684: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 685: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 686: Xamarin.AndroidX.Collection.Ktx => 217
	i64 u0xadd8eda2edf396ad, ; 687: Xamarin.Android.Glide.GifDecoder => 203
	i64 u0xadf4cf30debbeb9a, ; 688: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 689: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 690: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 691: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 692: System.ObjectModel.dll => 85
	i64 u0xaec7c0c7e2ed4575, ; 693: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 289
	i64 u0xaf732d0b2193b8f5, ; 694: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xafdb94dbccd9d11c, ; 695: Xamarin.AndroidX.Lifecycle.LiveData.dll => 239
	i64 u0xafe29f45095518e7, ; 696: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 250
	i64 u0xb03ae931fb25607e, ; 697: Xamarin.AndroidX.ConstraintLayout => 219
	i64 u0xb05cc42cd94c6d9d, ; 698: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 321
	i64 u0xb0ac21bec8f428c5, ; 699: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 246
	i64 u0xb0bb43dc52ea59f9, ; 700: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1dd05401aa8ee63, ; 701: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 702: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 703: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 704: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 705: da/Microsoft.Maui.Controls.resources => 298
	i64 u0xb3011a0a57f7ffb2, ; 706: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 330
	i64 u0xb3874072ee0ecf8c, ; 707: Xamarin.AndroidX.VectorDrawable.Animated.dll => 270
	i64 u0xb3f0a0fcda8d3ebc, ; 708: Xamarin.AndroidX.CardView => 214
	i64 u0xb46be1aa6d4fff93, ; 709: hi/Microsoft.Maui.Controls.resources => 305
	i64 u0xb477491be13109d8, ; 710: ar/Microsoft.Maui.Controls.resources => 295
	i64 u0xb4bd7015ecee9d86, ; 711: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 712: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 713: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 714: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 715: Microsoft.Extensions.Logging.Abstractions.dll => 181
	i64 u0xb5ea31d5244c6626, ; 716: System.Threading.ThreadPool.dll => 147
	i64 u0xb66575354464a3ec, ; 717: Xamarin.Kotlin.StdLib.Common => 287
	i64 u0xb71a985c11e63e01, ; 718: LocationTracker => 0
	i64 u0xb7212c4683a94afe, ; 719: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 720: sv/Microsoft.Maui.Controls.resources => 321
	i64 u0xb81a2c6e0aee50fe, ; 721: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 722: Xamarin.AndroidX.Window.Extensions.Core.Core => 275
	i64 u0xb8c60af47c08d4da, ; 723: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 724: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 725: Microsoft.CSharp.dll => 1
	i64 u0xb9b19a3eb1924681, ; 726: lib_Microsoft.Maui.Controls.Maps.dll.so => 186
	i64 u0xb9b8001adf4ed7cc, ; 727: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 264
	i64 u0xb9f64d3b230def68, ; 728: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 317
	i64 u0xb9fc3c8a556e3691, ; 729: ja/Microsoft.Maui.Controls.resources => 310
	i64 u0xba4670aa94a2b3c6, ; 730: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 731: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 732: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 733: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 734: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 735: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 736: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc22a245dab70cb4, ; 737: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 199
	i64 u0xbc260cdba33291a3, ; 738: Xamarin.AndroidX.Arch.Core.Common.dll => 211
	i64 u0xbd0e2c0d55246576, ; 739: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 740: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 741: Xamarin.AndroidX.ViewPager2 => 273
	i64 u0xbd4f572d2bd0a789, ; 742: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 743: lib_Xamarin.AndroidX.Browser.dll.so => 213
	i64 u0xbd877b14d0b56392, ; 744: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe65a49036345cf4, ; 745: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 746: Xamarin.AndroidX.AppCompat.AppCompatResources => 210
	i64 u0xbef9919db45b4ca7, ; 747: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 748: lib_Xamarin.AndroidX.Annotation.dll.so => 206
	i64 u0xbfc1e1fb3095f2b3, ; 749: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc040a4ab55817f58, ; 750: ar/Microsoft.Maui.Controls.resources.dll => 295
	i64 u0xc07cadab29efeba0, ; 751: Xamarin.AndroidX.Core.Core.Ktx.dll => 223
	i64 u0xc0d928351ab5ca77, ; 752: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 753: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 754: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 755: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 756: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 757: Xamarin.AndroidX.Activity.dll => 204
	i64 u0xc26c064effb1dea9, ; 758: System.Buffers.dll => 7
	i64 u0xc28c50f32f81cc73, ; 759: ja/Microsoft.Maui.Controls.resources.dll => 310
	i64 u0xc2902f6cf5452577, ; 760: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 761: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 762: Xamarin.AndroidX.ViewPager2.dll => 273
	i64 u0xc30b52815b58ac2c, ; 763: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 764: System.Threading.Overlapped => 141
	i64 u0xc396b285e59e5493, ; 765: GoogleGson.dll => 174
	i64 u0xc3c86c1e5e12f03d, ; 766: WindowsBase => 166
	i64 u0xc421b61fd853169d, ; 767: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 768: System.Runtime.Serialization.Json => 113
	i64 u0xc4d3858ed4d08512, ; 769: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 250
	i64 u0xc50fded0ded1418c, ; 770: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 771: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 772: Xamarin.AndroidX.Navigation.Fragment => 254
	i64 u0xc5325b2fcb37446f, ; 773: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 774: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 202
	i64 u0xc5a0f4b95a699af7, ; 775: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 776: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 777: Xamarin.AndroidX.Tracing.Tracing => 267
	i64 u0xc64f6952cef5d09f, ; 778: Microsoft.Maui.Maps.dll => 191
	i64 u0xc6706bc8aa7fe265, ; 779: Xamarin.AndroidX.Annotation.Jvm => 208
	i64 u0xc68e480c8069e1f7, ; 780: Microsoft.Maui.Maps => 191
	i64 u0xc7c01e7d7c93a110, ; 781: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 782: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 783: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 784: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 785: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 786: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca3a723e7342c5b6, ; 787: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 323
	i64 u0xca5801070d9fccfb, ; 788: System.Text.Encoding => 136
	i64 u0xcab3493c70141c2d, ; 789: pl/Microsoft.Maui.Controls.resources => 315
	i64 u0xcacfddc9f7c6de76, ; 790: ro/Microsoft.Maui.Controls.resources.dll => 318
	i64 u0xcadbc92899a777f0, ; 791: Xamarin.AndroidX.Startup.StartupRuntime => 265
	i64 u0xcba1cb79f45292b5, ; 792: Xamarin.Android.Glide.GifDecoder.dll => 203
	i64 u0xcbb5f80c7293e696, ; 793: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 794: lib__Microsoft.Android.Resource.Designer.dll.so => 332
	i64 u0xcc15da1e07bbd994, ; 795: Xamarin.AndroidX.SlidingPaneLayout => 264
	i64 u0xcc2876b32ef2794c, ; 796: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 797: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 292
	i64 u0xcc76886e09b88260, ; 798: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 294
	i64 u0xcc9fa2923aa1c9ef, ; 799: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 800: zh-Hans/Microsoft.Maui.Controls.resources.dll => 327
	i64 u0xcd10a42808629144, ; 801: System.Net.Requests => 73
	i64 u0xcdca1b920e9f53ba, ; 802: Xamarin.AndroidX.Interpolator => 235
	i64 u0xcdd0c48b6937b21c, ; 803: Xamarin.AndroidX.SwipeRefreshLayout => 266
	i64 u0xcf23d8093f3ceadf, ; 804: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 805: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 806: System.Private.Xml.Linq => 88
	i64 u0xcfb21487d9cb358b, ; 807: Xamarin.GooglePlayServices.Maps.dll => 283
	i64 u0xd04b5f59ed596e31, ; 808: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 809: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0de8a113e976700, ; 810: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 811: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 812: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 238
	i64 u0xd12beacdfc14f696, ; 813: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 814: System.Net.Quic.dll => 72
	i64 u0xd3144156a3727ebe, ; 815: Xamarin.Google.Guava.ListenableFuture => 280
	i64 u0xd333d0af9e423810, ; 816: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 817: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 818: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 210
	i64 u0xd3651b6fc3125825, ; 819: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 820: Microsoft.Extensions.Logging.dll => 180
	i64 u0xd3801faafafb7698, ; 821: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 822: it/Microsoft.Maui.Controls.resources => 309
	i64 u0xd3edcc1f25459a50, ; 823: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 824: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 179
	i64 u0xd4fa0abb79079ea9, ; 825: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 826: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 250
	i64 u0xd5d04bef8478ea19, ; 827: Xamarin.AndroidX.Tracing.Tracing.dll => 267
	i64 u0xd60815f26a12e140, ; 828: Microsoft.Extensions.Logging.Debug.dll => 182
	i64 u0xd65786d27a4ad960, ; 829: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 329
	i64 u0xd6694f8359737e4e, ; 830: Xamarin.AndroidX.SavedState => 261
	i64 u0xd6949e129339eae5, ; 831: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 223
	i64 u0xd6d21782156bc35b, ; 832: Xamarin.AndroidX.SwipeRefreshLayout.dll => 266
	i64 u0xd6de019f6af72435, ; 833: Xamarin.AndroidX.ConstraintLayout.Core.dll => 220
	i64 u0xd70956d1e6deefb9, ; 834: Jsr305Binding => 277
	i64 u0xd72329819cbbbc44, ; 835: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 177
	i64 u0xd72c760af136e863, ; 836: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 837: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 838: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 181
	i64 u0xd7f0088bc5ad71f2, ; 839: Xamarin.AndroidX.VersionedParcelable => 271
	i64 u0xd8fb25e28ae30a12, ; 840: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 258
	i64 u0xda1dfa4c534a9251, ; 841: Microsoft.Extensions.DependencyInjection => 178
	i64 u0xdad05a11827959a3, ; 842: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 843: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 844: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 325
	i64 u0xdb58816721c02a59, ; 845: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdb8f858873e2186b, ; 846: SkiaSharp.Views.Maui.Controls => 194
	i64 u0xdbeda89f832aa805, ; 847: vi/Microsoft.Maui.Controls.resources.dll => 325
	i64 u0xdbf2a779fbc3ac31, ; 848: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 849: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 850: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 851: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 852: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 853: Microsoft.Extensions.Logging => 180
	i64 u0xdd2b722d78ef5f43, ; 854: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 855: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 856: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 857: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 236
	i64 u0xdde30e6b77aa6f6c, ; 858: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 327
	i64 u0xde110ae80fa7c2e2, ; 859: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 860: Xamarin.AndroidX.Transition => 268
	i64 u0xde572c2b2fb32f93, ; 861: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 862: hr/Microsoft.Maui.Controls.resources.dll => 306
	i64 u0xded18e28c0716959, ; 863: lib_LocationTracker.dll.so => 0
	i64 u0xdee075f3477ef6be, ; 864: Xamarin.AndroidX.ExifInterface.dll => 232
	i64 u0xdf4b773de8fb1540, ; 865: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 866: System.Net.Ping => 70
	i64 u0xe0142572c095a480, ; 867: Xamarin.AndroidX.AppCompat.dll => 209
	i64 u0xe021eaa401792a05, ; 868: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 869: Xamarin.AndroidX.CoordinatorLayout.dll => 221
	i64 u0xe0496b9d65ef5474, ; 870: Xamarin.Android.Glide.DiskLruCache.dll => 202
	i64 u0xe10b760bb1462e7a, ; 871: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe1566bbdb759c5af, ; 872: Microsoft.Maui.Controls.HotReload.Forms.dll => 329
	i64 u0xe192a588d4410686, ; 873: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 874: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 875: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 876: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 877: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 878: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 879: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 880: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 881: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 882: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 245
	i64 u0xe29b73bc11392966, ; 883: lib-id-Microsoft.Maui.Controls.resources.dll.so => 308
	i64 u0xe2ad448dee50fbdf, ; 884: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 885: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 886: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 887: Mono.Android.Export.dll => 170
	i64 u0xe3811d68d4fe8463, ; 888: pt-BR/Microsoft.Maui.Controls.resources.dll => 316
	i64 u0xe3b7cbae5ad66c75, ; 889: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe494f7ced4ecd10a, ; 890: hu/Microsoft.Maui.Controls.resources.dll => 307
	i64 u0xe4a9b1e40d1e8917, ; 891: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 302
	i64 u0xe4f74a0b5bf9703f, ; 892: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 893: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 894: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 895: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 896: System.Xml.dll => 164
	i64 u0xe7bea09c4900a191, ; 897: Xamarin.AndroidX.VectorDrawable.dll => 269
	i64 u0xe7e03cc18dcdeb49, ; 898: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 899: lib_System.Configuration.dll.so => 19
	i64 u0xe86b0df4ba9e5db8, ; 900: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 244
	i64 u0xe896622fe0902957, ; 901: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 902: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 903: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 904: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 275
	i64 u0xe98163eb702ae5c5, ; 905: Xamarin.AndroidX.Arch.Core.Runtime => 212
	i64 u0xe994f23ba4c143e5, ; 906: Xamarin.KotlinX.Coroutines.Android => 290
	i64 u0xe9b9c8c0458fd92a, ; 907: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 908: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 265
	i64 u0xea5a4efc2ad81d1b, ; 909: Xamarin.Google.ErrorProne.Annotations => 279
	i64 u0xeb2313fe9d65b785, ; 910: Xamarin.AndroidX.ConstraintLayout.dll => 219
	i64 u0xeb6e275e78cb8d42, ; 911: Xamarin.AndroidX.LocalBroadcastManager.dll => 252
	i64 u0xed19c616b3fcb7eb, ; 912: Xamarin.AndroidX.VersionedParcelable.dll => 271
	i64 u0xed60c6fa891c051a, ; 913: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 331
	i64 u0xedc4817167106c23, ; 914: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 915: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 916: Xamarin.AndroidX.Navigation.Runtime.dll => 255
	i64 u0xee27c952ed6d058b, ; 917: Microsoft.Maui.Controls.Maps => 186
	i64 u0xee81f5b3f1c4f83b, ; 918: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 919: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 216
	i64 u0xeefc635595ef57f0, ; 920: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 921: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 922: Xamarin.AndroidX.Print => 257
	i64 u0xef602c523fe2e87a, ; 923: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 280
	i64 u0xef72742e1bcca27a, ; 924: Microsoft.Maui.Essentials.dll => 189
	i64 u0xefd1e0c4e5c9b371, ; 925: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 926: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 927: Xamarin.AndroidX.Activity => 204
	i64 u0xf00c29406ea45e19, ; 928: es/Microsoft.Maui.Controls.resources.dll => 301
	i64 u0xf09e47b6ae914f6e, ; 929: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 930: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 931: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 932: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 933: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 243
	i64 u0xf11b621fc87b983f, ; 934: Microsoft.Maui.Controls.Xaml.dll => 187
	i64 u0xf161f4f3c3b7e62c, ; 935: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 936: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 937: System.Formats.Asn1.dll => 38
	i64 u0xf238bd79489d3a96, ; 938: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 314
	i64 u0xf2feea356ba760af, ; 939: Xamarin.AndroidX.Arch.Core.Runtime.dll => 212
	i64 u0xf300e085f8acd238, ; 940: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 941: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 942: lib_Xamarin.Google.Android.Material.dll.so => 276
	i64 u0xf3ad9b8fb3eefd12, ; 943: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 944: System => 165
	i64 u0xf408654b2a135055, ; 945: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 946: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 947: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4727d423e5d26f3, ; 948: SkiaSharp => 192
	i64 u0xf4c1dd70a5496a17, ; 949: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 950: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 951: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 226
	i64 u0xf518f63ead11fcd1, ; 952: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 953: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 954: Xamarin.AndroidX.CoordinatorLayout => 221
	i64 u0xf6742cbf457c450b, ; 955: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 244
	i64 u0xf70c0a7bf8ccf5af, ; 956: System.Web => 154
	i64 u0xf77b20923f07c667, ; 957: de/Microsoft.Maui.Controls.resources.dll => 299
	i64 u0xf7e2cac4c45067b3, ; 958: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 959: zh-HK/Microsoft.Maui.Controls.resources.dll => 326
	i64 u0xf84773b5c81e3cef, ; 960: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 324
	i64 u0xf8aac5ea82de1348, ; 961: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 962: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 963: lib_Xamarin.AndroidX.RecyclerView.dll.so => 259
	i64 u0xf915dc29808193a1, ; 964: System.Web.HttpUtility.dll => 153
	i64 u0xf96c777a2a0686f4, ; 965: hi/Microsoft.Maui.Controls.resources.dll => 305
	i64 u0xf9be54c8bcf8ff3b, ; 966: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 967: Microsoft.Extensions.Options => 183
	i64 u0xfa0e82300e67f913, ; 968: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 969: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 970: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 971: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 295
	i64 u0xfa645d91e9fc4cba, ; 972: System.Threading.Thread => 146
	i64 u0xfa99d44ebf9bea5b, ; 973: SkiaSharp.Views.Maui.Core => 195
	i64 u0xfad4d2c770e827f9, ; 974: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb022853d73b7fa5, ; 975: lib_SQLitePCLRaw.batteries_v2.dll.so => 196
	i64 u0xfb06dd2338e6f7c4, ; 976: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 977: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 978: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 979: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 980: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 981: Xamarin.AndroidX.LocalBroadcastManager => 252
	i64 u0xfc6b7527cc280b3f, ; 982: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 983: Xamarin.AndroidX.Navigation.Fragment.dll => 254
	i64 u0xfc82690c2fe2735c, ; 984: Xamarin.AndroidX.Lifecycle.Process.dll => 242
	i64 u0xfc93fc307d279893, ; 985: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 986: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 987: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 228
	i64 u0xfd49b3c1a76e2748, ; 988: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 989: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 990: Xamarin.AndroidX.Fragment => 233
	i64 u0xfd8dd91a2c26bd5d, ; 991: Xamarin.AndroidX.Lifecycle.Runtime => 243
	i64 u0xfda36abccf05cf5c, ; 992: System.Net.WebSockets.Client => 80
	i64 u0xfddbe9695626a7f5, ; 993: Xamarin.AndroidX.Lifecycle.Common => 237
	i64 u0xfeae9952cf03b8cb, ; 994: tr/Microsoft.Maui.Controls.resources => 323
	i64 u0xfebe1950717515f9, ; 995: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 241
	i64 u0xff270a55858bac8d, ; 996: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 997: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 998: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [999 x i32] [
	i32 42, i32 291, i32 266, i32 13, i32 255, i32 105, i32 171, i32 48,
	i32 209, i32 7, i32 199, i32 86, i32 319, i32 297, i32 325, i32 229,
	i32 287, i32 71, i32 284, i32 259, i32 175, i32 12, i32 188, i32 102,
	i32 175, i32 326, i32 156, i32 19, i32 234, i32 216, i32 161, i32 231,
	i32 269, i32 167, i32 319, i32 10, i32 182, i32 270, i32 96, i32 226,
	i32 228, i32 13, i32 183, i32 10, i32 282, i32 127, i32 95, i32 140,
	i32 39, i32 320, i32 294, i32 272, i32 316, i32 283, i32 172, i32 203,
	i32 5, i32 189, i32 67, i32 263, i32 130, i32 262, i32 230, i32 68,
	i32 193, i32 217, i32 66, i32 57, i32 225, i32 52, i32 43, i32 125,
	i32 67, i32 81, i32 245, i32 331, i32 158, i32 92, i32 99, i32 259,
	i32 141, i32 151, i32 213, i32 303, i32 162, i32 169, i32 304, i32 179,
	i32 81, i32 331, i32 217, i32 4, i32 5, i32 51, i32 101, i32 56,
	i32 120, i32 98, i32 168, i32 118, i32 291, i32 21, i32 307, i32 137,
	i32 97, i32 294, i32 77, i32 313, i32 257, i32 265, i32 119, i32 8,
	i32 165, i32 322, i32 70, i32 202, i32 246, i32 260, i32 171, i32 145,
	i32 40, i32 263, i32 47, i32 30, i32 256, i32 311, i32 144, i32 183,
	i32 163, i32 28, i32 84, i32 267, i32 77, i32 43, i32 29, i32 42,
	i32 103, i32 117, i32 207, i32 45, i32 91, i32 322, i32 56, i32 148,
	i32 330, i32 282, i32 146, i32 100, i32 49, i32 20, i32 222, i32 114,
	i32 200, i32 303, i32 278, i32 196, i32 286, i32 184, i32 94, i32 58,
	i32 308, i32 306, i32 81, i32 278, i32 169, i32 26, i32 71, i32 258,
	i32 192, i32 232, i32 329, i32 324, i32 69, i32 33, i32 302, i32 14,
	i32 139, i32 38, i32 328, i32 218, i32 315, i32 134, i32 92, i32 88,
	i32 186, i32 149, i32 321, i32 24, i32 138, i32 57, i32 51, i32 300,
	i32 29, i32 157, i32 34, i32 164, i32 233, i32 191, i32 52, i32 332,
	i32 274, i32 90, i32 214, i32 35, i32 194, i32 303, i32 157, i32 9,
	i32 301, i32 76, i32 55, i32 188, i32 297, i32 185, i32 13, i32 273,
	i32 176, i32 211, i32 109, i32 249, i32 32, i32 104, i32 84, i32 92,
	i32 53, i32 96, i32 285, i32 58, i32 9, i32 102, i32 225, i32 68,
	i32 272, i32 296, i32 125, i32 260, i32 116, i32 135, i32 126, i32 106,
	i32 286, i32 131, i32 213, i32 280, i32 147, i32 156, i32 234, i32 222,
	i32 196, i32 229, i32 260, i32 97, i32 24, i32 264, i32 143, i32 257,
	i32 253, i32 195, i32 3, i32 167, i32 210, i32 100, i32 161, i32 99,
	i32 25, i32 93, i32 168, i32 172, i32 205, i32 3, i32 315, i32 231,
	i32 1, i32 114, i32 286, i32 234, i32 242, i32 33, i32 6, i32 319,
	i32 156, i32 317, i32 53, i32 236, i32 85, i32 271, i32 256, i32 44,
	i32 241, i32 104, i32 47, i32 138, i32 193, i32 64, i32 283, i32 251,
	i32 69, i32 80, i32 59, i32 89, i32 154, i32 211, i32 133, i32 110,
	i32 309, i32 251, i32 258, i32 171, i32 134, i32 140, i32 40, i32 296,
	i32 198, i32 185, i32 60, i32 248, i32 79, i32 25, i32 36, i32 99,
	i32 245, i32 71, i32 22, i32 222, i32 190, i32 320, i32 121, i32 69,
	i32 107, i32 326, i32 252, i32 119, i32 117, i32 237, i32 238, i32 11,
	i32 2, i32 124, i32 195, i32 115, i32 142, i32 41, i32 87, i32 206,
	i32 197, i32 173, i32 27, i32 148, i32 310, i32 178, i32 279, i32 205,
	i32 1, i32 207, i32 44, i32 221, i32 149, i32 236, i32 18, i32 86,
	i32 194, i32 298, i32 281, i32 41, i32 241, i32 215, i32 246, i32 94,
	i32 180, i32 28, i32 41, i32 78, i32 230, i32 218, i32 144, i32 108,
	i32 216, i32 11, i32 105, i32 137, i32 16, i32 122, i32 66, i32 157,
	i32 22, i32 198, i32 300, i32 293, i32 102, i32 178, i32 292, i32 63,
	i32 58, i32 187, i32 299, i32 110, i32 173, i32 290, i32 9, i32 276,
	i32 120, i32 98, i32 105, i32 249, i32 185, i32 111, i32 208, i32 49,
	i32 20, i32 248, i32 224, i32 72, i32 220, i32 155, i32 39, i32 298,
	i32 35, i32 288, i32 38, i32 304, i32 198, i32 275, i32 108, i32 313,
	i32 21, i32 285, i32 247, i32 190, i32 15, i32 184, i32 79, i32 79,
	i32 224, i32 184, i32 227, i32 254, i32 262, i32 152, i32 21, i32 188,
	i32 297, i32 50, i32 51, i32 287, i32 323, i32 313, i32 94, i32 201,
	i32 309, i32 16, i32 123, i32 306, i32 160, i32 45, i32 279, i32 174,
	i32 116, i32 63, i32 166, i32 176, i32 14, i32 261, i32 111, i32 208,
	i32 60, i32 289, i32 121, i32 312, i32 2, i32 322, i32 233, i32 247,
	i32 0, i32 288, i32 247, i32 6, i32 215, i32 302, i32 229, i32 175,
	i32 17, i32 320, i32 299, i32 77, i32 219, i32 282, i32 131, i32 285,
	i32 312, i32 83, i32 182, i32 12, i32 34, i32 119, i32 293, i32 242,
	i32 231, i32 85, i32 200, i32 284, i32 18, i32 272, i32 177, i32 240,
	i32 72, i32 330, i32 95, i32 199, i32 165, i32 235, i32 82, i32 328,
	i32 209, i32 214, i32 289, i32 154, i32 36, i32 151, i32 324, i32 327,
	i32 144, i32 56, i32 113, i32 192, i32 215, i32 269, i32 268, i32 37,
	i32 328, i32 176, i32 115, i32 207, i32 14, i32 201, i32 146, i32 43,
	i32 189, i32 205, i32 98, i32 292, i32 168, i32 16, i32 48, i32 107,
	i32 97, i32 251, i32 27, i32 128, i32 29, i32 304, i32 262, i32 128,
	i32 44, i32 224, i32 230, i32 149, i32 8, i32 253, i32 305, i32 318,
	i32 197, i32 284, i32 317, i32 132, i32 316, i32 42, i32 293, i32 197,
	i32 33, i32 332, i32 46, i32 143, i32 248, i32 187, i32 239, i32 225,
	i32 138, i32 62, i32 132, i32 296, i32 48, i32 160, i32 212, i32 239,
	i32 201, i32 237, i32 312, i32 268, i32 46, i32 164, i32 235, i32 301,
	i32 232, i32 308, i32 190, i32 281, i32 18, i32 8, i32 174, i32 223,
	i32 124, i32 59, i32 141, i32 255, i32 311, i32 243, i32 277, i32 274,
	i32 150, i32 142, i32 291, i32 288, i32 126, i32 290, i32 160, i32 162,
	i32 226, i32 204, i32 177, i32 314, i32 26, i32 253, i32 240, i32 82,
	i32 274, i32 127, i32 278, i32 101, i32 148, i32 276, i32 256, i32 54,
	i32 162, i32 193, i32 167, i32 131, i32 37, i32 270, i32 311, i32 22,
	i32 112, i32 90, i32 227, i32 50, i32 60, i32 122, i32 83, i32 127,
	i32 163, i32 277, i32 166, i32 261, i32 263, i32 228, i32 200, i32 244,
	i32 4, i32 238, i32 307, i32 170, i32 2, i32 281, i32 249, i32 116,
	i32 206, i32 19, i32 181, i32 89, i32 65, i32 30, i32 179, i32 300,
	i32 220, i32 59, i32 111, i32 240, i32 32, i32 128, i32 159, i32 318,
	i32 218, i32 140, i32 227, i32 314, i32 153, i32 17, i32 217, i32 203,
	i32 75, i32 74, i32 15, i32 169, i32 85, i32 289, i32 124, i32 239,
	i32 250, i32 219, i32 321, i32 246, i32 34, i32 118, i32 139, i32 122,
	i32 106, i32 298, i32 330, i32 270, i32 214, i32 305, i32 295, i32 54,
	i32 47, i32 28, i32 145, i32 181, i32 147, i32 287, i32 0, i32 35,
	i32 321, i32 173, i32 275, i32 75, i32 161, i32 1, i32 186, i32 264,
	i32 317, i32 310, i32 159, i32 12, i32 155, i32 151, i32 76, i32 103,
	i32 112, i32 199, i32 211, i32 65, i32 66, i32 273, i32 45, i32 213,
	i32 109, i32 7, i32 210, i32 55, i32 206, i32 64, i32 295, i32 223,
	i32 20, i32 109, i32 101, i32 62, i32 142, i32 204, i32 7, i32 310,
	i32 170, i32 50, i32 273, i32 115, i32 141, i32 174, i32 166, i32 80,
	i32 113, i32 250, i32 17, i32 73, i32 254, i32 89, i32 202, i32 87,
	i32 120, i32 267, i32 191, i32 208, i32 191, i32 135, i32 153, i32 106,
	i32 11, i32 90, i32 31, i32 323, i32 136, i32 315, i32 318, i32 265,
	i32 203, i32 40, i32 332, i32 264, i32 139, i32 292, i32 294, i32 25,
	i32 327, i32 73, i32 235, i32 266, i32 27, i32 67, i32 88, i32 283,
	i32 95, i32 113, i32 31, i32 104, i32 238, i32 37, i32 72, i32 280,
	i32 108, i32 123, i32 210, i32 87, i32 180, i32 86, i32 309, i32 93,
	i32 179, i32 129, i32 250, i32 267, i32 182, i32 329, i32 261, i32 223,
	i32 266, i32 220, i32 277, i32 177, i32 163, i32 130, i32 181, i32 271,
	i32 258, i32 178, i32 10, i32 49, i32 325, i32 91, i32 194, i32 325,
	i32 150, i32 62, i32 136, i32 150, i32 61, i32 180, i32 117, i32 137,
	i32 84, i32 236, i32 327, i32 159, i32 268, i32 143, i32 306, i32 0,
	i32 232, i32 82, i32 70, i32 209, i32 136, i32 221, i32 202, i32 125,
	i32 329, i32 54, i32 110, i32 130, i32 88, i32 23, i32 74, i32 129,
	i32 31, i32 73, i32 245, i32 308, i32 158, i32 23, i32 4, i32 170,
	i32 316, i32 123, i32 307, i32 302, i32 114, i32 172, i32 32, i32 3,
	i32 164, i32 269, i32 30, i32 19, i32 244, i32 93, i32 36, i32 5,
	i32 275, i32 212, i32 290, i32 155, i32 265, i32 279, i32 219, i32 252,
	i32 271, i32 331, i32 76, i32 63, i32 255, i32 186, i32 147, i32 216,
	i32 121, i32 134, i32 257, i32 280, i32 189, i32 100, i32 39, i32 204,
	i32 301, i32 68, i32 26, i32 75, i32 78, i32 243, i32 187, i32 24,
	i32 152, i32 38, i32 314, i32 212, i32 133, i32 103, i32 276, i32 57,
	i32 165, i32 91, i32 61, i32 132, i32 192, i32 46, i32 133, i32 226,
	i32 145, i32 78, i32 221, i32 244, i32 154, i32 299, i32 83, i32 326,
	i32 324, i32 61, i32 96, i32 259, i32 153, i32 305, i32 118, i32 183,
	i32 6, i32 15, i32 74, i32 295, i32 146, i32 195, i32 52, i32 196,
	i32 70, i32 23, i32 158, i32 126, i32 65, i32 252, i32 112, i32 254,
	i32 242, i32 55, i32 53, i32 228, i32 107, i32 135, i32 233, i32 243,
	i32 80, i32 237, i32 323, i32 241, i32 129, i32 64, i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
