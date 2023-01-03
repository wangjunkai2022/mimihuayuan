package f.i.a.a.b1;

import f.i.a.a.d1.a;
import f.i.a.a.d1.i.e;
import f.i.a.a.d1.i.i;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: GaplessInfoHolder.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f4047c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public boolean a() {
        return (this.a == -1 || this.b == -1) ? false : true;
    }

    public final boolean b(String str) {
        Matcher matcher = f4047c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.a = parseInt;
            this.b = parseInt2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean c(a aVar) {
        int i2 = 0;
        while (true) {
            a.b[] bVarArr = aVar.a;
            if (i2 >= bVarArr.length) {
                return false;
            }
            a.b bVar = bVarArr[i2];
            if (bVar instanceof e) {
                e eVar = (e) bVar;
                if ("iTunSMPB".equals(eVar.f4566c) && b(eVar.f4567d)) {
                    return true;
                }
            } else if (bVar instanceof i) {
                i iVar = (i) bVar;
                if ("com.apple.iTunes".equals(iVar.b) && "iTunSMPB".equals(iVar.f4572c) && b(iVar.f4573d)) {
                    return true;
                }
            } else {
                continue;
            }
            i2++;
        }
    }
}
