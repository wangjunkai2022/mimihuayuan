package f.e.a.j.d0.d;

import c.a.a.b.g.h;
import com.comeback.data.ui.md.bean.MdBean;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.f;
import f.i.b.j;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.u;
import i.v;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.TreeMap;

/* compiled from: MdInterceptor.java */
/* loaded from: classes.dex */
public class c implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        String j2;
        u uVar;
        int h2;
        if (aVar.S().b.f6779j.contains(e.a("GQgQCwU="))) {
            return aVar.d(aVar.S());
        }
        e0 S = aVar.S();
        TreeMap treeMap = new TreeMap(a.a);
        synchronized (this) {
            g0 g0Var = S.f6434e;
            if (g0Var != null && (g0Var instanceof u) && (h2 = (uVar = (u) g0Var).h()) > 0) {
                for (int i2 = 0; i2 < h2; i2++) {
                    try {
                        treeMap.put(uVar.f(i2), URLDecoder.decode(uVar.g(i2), e.a("QhYFSVM=")));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            j2 = new j().j(treeMap);
        }
        f.a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String substring = h.R0(String.valueOf(System.currentTimeMillis())).substring(0, 6);
        String a = e.a("Rw0QEEYXWEcS");
        String str = new String(f.e.a.k.c.c(j2.getBytes(), d.a.getBytes(), d.f3844c, a.l(new StringBuilder(), d.b, substring).getBytes()));
        arrayList.add(x.b.a(x.f6771l, a, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
        arrayList2.add(x.b.a(x.f6771l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
        e0.a aVar2 = new e0.a(S);
        aVar2.a(e.a("RBcFAgIL"), substring);
        aVar2.f(new u(arrayList, arrayList2));
        h0 d2 = aVar.d(aVar2.b());
        i0 F = i0.F(((MdBean) new j().d(d2.f6452h.H(), MdBean.class)).getDecryptData(), d2.f6452h.E());
        e0 e0Var = d2.b;
        c0 c0Var = d2.f6447c;
        int i3 = d2.f6449e;
        String str2 = d2.f6448d;
        v vVar = d2.f6450f;
        w.a d3 = d2.f6451g.d();
        h0 h0Var = d2.f6453i;
        h0 h0Var2 = d2.f6454j;
        h0 h0Var3 = d2.f6455k;
        long j3 = d2.f6456l;
        long j4 = d2.f6457m;
        i.m0.d.c cVar = d2.n;
        if (!(i3 >= 0)) {
            throw new IllegalStateException(a.J("code < 0: ", i3).toString());
        } else if (e0Var == null) {
            throw new IllegalStateException("request == null".toString());
        } else if (c0Var == null) {
            throw new IllegalStateException("protocol == null".toString());
        } else if (str2 != null) {
            return new h0(e0Var, c0Var, str2, i3, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j3, j4, cVar);
        } else {
            throw new IllegalStateException("message == null".toString());
        }
    }
}
