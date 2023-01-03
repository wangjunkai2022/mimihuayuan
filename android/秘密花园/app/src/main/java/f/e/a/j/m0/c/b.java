package f.e.a.j.m0.c;

import f.e.a.e;
import i.e0;
import i.h0;
import i.y;
import java.io.IOException;
import java.util.Random;

/* compiled from: LiveInterceptor.java */
/* loaded from: classes.dex */
public class b implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        e0 S = aVar.S();
        if (S != null) {
            e0.a aVar2 = new e0.a(S);
            aVar2.c(e.a("UwcVDQgWbUoDAw=="), e.a("VgwHFgQaXQ=="));
            aVar2.c(e.a("VhITLQ8="), e.a("Bg=="));
            aVar2.c(e.a("VhITLw4K"), e.a("B1NVB10XXQNeVgFUSUdXCAAETgVeQAgeRlRWUE4MUw8EVFUH"));
            aVar2.c(e.a("RAYIMg4BSlocCA=="), e.a("BExVSls="));
            aVar2.c(e.a("WBE1ARkAUFwd"), e.a("DkxTSlo="));
            aVar2.c(e.a("UwcVDQgWd1IeAw=="), e.a("fxcCMw4a"));
            aVar2.c(e.a("QwsOATgHWF4DNUAV"), String.valueOf(System.currentTimeMillis() / 1000));
            String a = e.a("RQMNAAQeakcB");
            Random random = new Random(System.currentTimeMillis());
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 16; i2++) {
                sb.append(e.a("VgAAAA4VXlsaAV8LFQQMG1wQEBAeBU5LChx1JTsuJi1wKiojID90fTw2ZTUrPjY9YDo6PltCCwBHUwJQQFM=").charAt(random.nextInt(62)));
            }
            aVar2.c(a, sb.toString());
            aVar2.c(e.a("UwcVDQgWcFc="), e.a("BFAGU1JLDVVBVAMEHFlVWQ=="));
            aVar2.c(e.a("WBIGCiIX"), e.a("AVVbUFtHCgU="));
            aVar2.c(e.a("Qw0IAQU="), e.a("QjdUBz04dgMDD1YvO1ouWhJQJSskSl5qMBNcChInEwdGBCYuMwpBFkEgeA1NPzcIYyEWDBgXXXFBJFI+Sy8WOXFUGjElB2B6FzNsHSAJLwV8NxBcMz54diU+YBcSPDoTQBU0HCEnXl09DnUEMAVRKWEgNjcfB1h5AyVyKF1YIQZOUVsnHD0="));
            aVar2.c(e.a("QhEGFiIX"), e.a("BlJWVAlFDwZeAwIDTkdXWgUBTlwNRQ0eS18MV0hZUg0GBwUB"));
            return aVar.d(aVar2.b());
        }
        throw null;
    }
}
