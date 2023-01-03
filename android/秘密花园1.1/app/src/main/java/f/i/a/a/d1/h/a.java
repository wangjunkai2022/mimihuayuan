package f.i.a.a.d1.h;

import androidx.annotation.Nullable;
import f.i.a.a.d1.d;
import f.i.a.a.m1.h0;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: IcyDecoder.java */
/* loaded from: classes.dex */
public final class a implements f.i.a.a.d1.b {
    public static final Pattern a = Pattern.compile("(.+?)='(.*?)';", 32);

    @Override // f.i.a.a.d1.b
    @Nullable
    public f.i.a.a.d1.a a(d dVar) {
        ByteBuffer byteBuffer = dVar.f5955c;
        Matcher matcher = a.matcher(h0.w(byteBuffer.array(), 0, byteBuffer.limit()));
        String str = null;
        String str2 = null;
        for (int i2 = 0; matcher.find(i2); i2 = matcher.end()) {
            String p0 = h0.p0(matcher.group(1));
            String group = matcher.group(2);
            char c2 = 65535;
            int hashCode = p0.hashCode();
            if (hashCode != -315603473) {
                if (hashCode == 1646559960 && p0.equals("streamtitle")) {
                    c2 = 0;
                }
            } else if (p0.equals("streamurl")) {
                c2 = 1;
            }
            if (c2 == 0) {
                str = group;
            } else if (c2 == 1) {
                str2 = group;
            }
        }
        if (str == null && str2 == null) {
            return null;
        }
        return new f.i.a.a.d1.a(new c(str, str2));
    }
}
