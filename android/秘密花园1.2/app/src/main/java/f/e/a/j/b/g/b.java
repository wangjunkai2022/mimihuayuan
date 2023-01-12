package f.e.a.j.b.g;

import android.util.Base64;
import c.a.a.b.g.h;
import f.e.a.e;
import f.e.a.k.j;

/* compiled from: AvboboApi.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    public static volatile b f3896e;
    public String a = h.a1();
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f3897c;

    /* renamed from: d  reason: collision with root package name */
    public String f3898d;

    public b() {
        int i2 = j.b().a.getInt(e.a("VhQBCwkcZlscFUA="), -1);
        i2 = i2 == -1 ? 0 : i2;
        String[] strArr = {e.a("XxYXFBhJFhwASFYIFAMOAlYMUVRaRBdQHAs="), e.a("XxYXFBhJFhwASFUFGggADENTTQcEHg=="), e.a("XxYXFBhJFhwASFgIFwEBH0FMAAsG")};
        this.f3898d = new String[]{new String(Base64.encode(e.a("TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUFRUW0oMA0dfFktaGgIYRBUMFg9RAxFCVAdTTVxBFg==").getBytes(), 2)), new String(Base64.encode(e.a("TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUVdXXUQLB0tQFktaGgIYRBUMFg9RAxFDVgRXSFpBFg==").getBytes(), 2)), new String(Base64.encode(e.a("TEAACx4dTUEKJVsDHUhZSRxaVUZHUVRcEQ9YAlpQQVoEUVJXW0QNA0RUFktaGgIYRBUMFg9RAxFDVgRXSFpBFg==").getBytes(), 2))}[i2];
        this.b = strArr[i2];
    }

    public static synchronized b c() {
        b bVar;
        synchronized (b.class) {
            if (f3896e == null) {
                f3896e = new b();
            }
            bVar = f3896e;
        }
        return bVar;
    }

    public String a() {
        return e.a("UQcNSg8SU1oRBxlfGwdNCFgPTg==") + this.a;
    }

    public String b() {
        return f.b.a.a.a.n(new StringBuilder(), this.b, "GBFR");
    }
}
