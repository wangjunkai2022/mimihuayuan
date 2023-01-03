package f.d.a.o;

import f.b.a.a.a;
import java.io.IOException;

/* compiled from: HttpException.java */
/* loaded from: classes.dex */
public final class e extends IOException {
    public e(int i2) {
        super(a.J("Http request failed with status code: ", i2), null);
    }

    public e(String str) {
        super(str, null);
    }

    public e(String str, int i2) {
        super(str, null);
    }
}
