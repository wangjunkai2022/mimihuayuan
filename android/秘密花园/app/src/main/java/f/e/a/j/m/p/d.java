package f.e.a.j.m.p;

import android.text.TextUtils;
import f.b.a.a.a;
import f.e.a.e;
import i.c0;
import i.e0;
import i.h0;
import i.i0;
import i.m0.d.c;
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
        e.a("cCc3");
        e.a("Zy0wMA==");
    }

    public d() {
        e.a("GAMTDUQFCBwSBVcCCB4=");
    }

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String str;
        h0 d2 = aVar.d(aVar.S());
        String H = d2.f6452h.H();
        try {
            str = new JSONObject(H).getString(e.a("RAsECiAWQA=="));
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
        i0 F = i0.F(H, d2.f6452h.E());
        e0 e0Var = d2.b;
        c0 c0Var = d2.f6447c;
        int i2 = d2.f6449e;
        String str2 = d2.f6448d;
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
        } else if (str2 != null) {
            return new h0(e0Var, c0Var, str2, i2, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
        } else {
            throw new IllegalStateException("message == null".toString());
        }
    }
}
