package f.e.a.j.n.p;

import android.text.TextUtils;
import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.v;
import i.w;
import i.y;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: GKJInterceptor.java */
/* loaded from: classes.dex */
public class d implements y {
    static {
        f.e.a.e.a("cCc3");
        f.e.a.e.a("Zy0wMA==");
    }

    public d() {
        f.e.a.e.a("GAMTDUQFCBwSBVcCCB4=");
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String str;
        h0 d2 = aVar.d(aVar.S());
        String H = d2.f6527h.H();
        try {
            str = new JSONObject(H).getString(f.e.a.e.a("RAsECiAWQA=="));
        } catch (JSONException e2) {
            e2.printStackTrace();
            str = "";
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                H = b.a(str);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        i0 F = i0.F(H, d2.f6527h.E());
        e0 e0Var = d2.b;
        c0 c0Var = d2.f6522c;
        int i2 = d2.f6524e;
        String str2 = d2.f6523d;
        v vVar = d2.f6525f;
        w.a d3 = d2.f6526g.d();
        h0 h0Var = d2.f6528i;
        h0 h0Var2 = d2.f6529j;
        h0 h0Var3 = d2.f6530k;
        long j2 = d2.f6531l;
        long j3 = d2.f6532m;
        i.m0.d.c cVar = d2.n;
        if (i2 >= 0) {
            if (e0Var != null) {
                if (c0Var != null) {
                    if (str2 != null) {
                        return new h0(e0Var, c0Var, str2, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                    }
                    throw new IllegalStateException("message == null".toString());
                }
                throw new IllegalStateException("protocol == null".toString());
            }
            throw new IllegalStateException("request == null".toString());
        }
        throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i2).toString());
    }
}
