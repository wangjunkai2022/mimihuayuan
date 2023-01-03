package f.e.a.j.e0.j;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.k.f;
import h.o.c.g;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.m0.b;
import i.m0.d.c;
import i.v;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MimeiInterceptor.java */
/* loaded from: classes.dex */
public class e implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        LinkedHashMap linkedHashMap;
        e0 S = aVar.S();
        if (S.b.f6779j.equals(f.e.a.e.a("XxYXFBhJFhwDE1YLEQlNH1YLEg0eFFhdXQhRE1cCDBhDPRMTCl1NSwc="))) {
            h0 d2 = aVar.d(S);
            String b = b.b(d2.f6452h.H());
            if (!TextUtils.isEmpty(b) && b.length() > 64) {
                b = b.substring(32, b.length() - 32);
            }
            i0 F = i0.F(b, d2.f6452h.E());
            e0 e0Var = d2.b;
            c0 c0Var = d2.f6447c;
            int i2 = d2.f6449e;
            String str = d2.f6448d;
            v vVar = d2.f6450f;
            w.a d3 = d2.f6451g.d();
            h0 h0Var = d2.f6453i;
            h0 h0Var2 = d2.f6454j;
            h0 h0Var3 = d2.f6455k;
            long j2 = d2.f6456l;
            long j3 = d2.f6457m;
            c cVar = d2.n;
            if (!(i2 >= 0)) {
                throw new IllegalStateException(a.J("code < 0: ", i2).toString());
            } else if (e0Var == null) {
                throw new IllegalStateException("request == null".toString());
            } else if (c0Var == null) {
                throw new IllegalStateException("protocol == null".toString());
            } else if (str != null) {
                return new h0(e0Var, c0Var, str, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
            } else {
                throw new IllegalStateException("message == null".toString());
            }
        } else {
            String str2 = S.b.f6779j;
            f.a();
            new LinkedHashMap();
            x xVar = S.b;
            String str3 = S.f6432c;
            g0 g0Var = S.f6434e;
            if (S.f6435f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = S.f6435f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            w.a d4 = S.f6433d.d();
            if (!TextUtils.isEmpty(d.a)) {
                String a = f.e.a.e.a("VhcXDAQBUEkSEl0IFg==");
                String str4 = d.a;
                if (str4 != null) {
                    d4.g(a, str4);
                } else {
                    g.f("value");
                    throw null;
                }
            }
            if (xVar != null) {
                h0 d5 = aVar.d(new e0(xVar, str3, d4.d(), g0Var, b.E(linkedHashMap)));
                i0 F2 = i0.F(b.c(d5.f6452h.H(), d5.e(f.e.a.e.a("T08RARgDVl0AAxkLHQQEH18="))), d5.f6452h.E());
                e0 e0Var2 = d5.b;
                c0 c0Var2 = d5.f6447c;
                int i3 = d5.f6449e;
                String str5 = d5.f6448d;
                v vVar2 = d5.f6450f;
                w.a d6 = d5.f6451g.d();
                h0 h0Var4 = d5.f6453i;
                h0 h0Var5 = d5.f6454j;
                h0 h0Var6 = d5.f6455k;
                long j4 = d5.f6456l;
                long j5 = d5.f6457m;
                c cVar2 = d5.n;
                if (!(i3 >= 0)) {
                    throw new IllegalStateException(a.J("code < 0: ", i3).toString());
                } else if (e0Var2 == null) {
                    throw new IllegalStateException("request == null".toString());
                } else if (c0Var2 == null) {
                    throw new IllegalStateException("protocol == null".toString());
                } else if (str5 != null) {
                    return new h0(e0Var2, c0Var2, str5, i3, vVar2, d6.d(), F2, h0Var4, h0Var5, h0Var6, j4, j5, cVar2);
                } else {
                    throw new IllegalStateException("message == null".toString());
                }
            } else {
                throw new IllegalStateException("url == null".toString());
            }
        }
    }
}
