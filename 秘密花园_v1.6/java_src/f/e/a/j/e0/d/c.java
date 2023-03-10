package f.e.a.j.e0.d;

import c.a.a.b.g.h;
import com.comeback.data.ui.md.bean.MdBean;
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
        if (aVar.S().b.f6863j.contains(f.e.a.e.a("GQgQCwU="))) {
            return aVar.d(aVar.S());
        }
        e0 S = aVar.S();
        TreeMap treeMap = new TreeMap(a.a);
        synchronized (this) {
            g0 g0Var = S.f6518e;
            if (g0Var != null && (g0Var instanceof u) && (h2 = (uVar = (u) g0Var).h()) > 0) {
                for (int i2 = 0; i2 < h2; i2++) {
                    try {
                        treeMap.put(uVar.f(i2), URLDecoder.decode(uVar.g(i2), f.e.a.e.a("QhYFSVM=")));
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
        String substring = h.T0(String.valueOf(System.currentTimeMillis())).substring(0, 6);
        String a = f.e.a.e.a("Rw0QEEYXWEcS");
        String str = new String(f.e.a.k.c.c(j2.getBytes(), d.a.getBytes(), d.f3923c, f.b.a.a.a.l(new StringBuilder(), d.b, substring).getBytes()));
        arrayList.add(x.b.a(x.f6855l, a, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
        arrayList2.add(x.b.a(x.f6855l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
        e0.a aVar2 = new e0.a(S);
        aVar2.a(f.e.a.e.a("RBcFAgIL"), substring);
        aVar2.f(new u(arrayList, arrayList2));
        h0 d2 = aVar.d(aVar2.b());
        i0 F = i0.F(((MdBean) new j().d(d2.f6536h.H(), MdBean.class)).getDecryptData(), d2.f6536h.E());
        e0 e0Var = d2.b;
        c0 c0Var = d2.f6531c;
        int i3 = d2.f6533e;
        String str2 = d2.f6532d;
        v vVar = d2.f6534f;
        w.a d3 = d2.f6535g.d();
        h0 h0Var = d2.f6537i;
        h0 h0Var2 = d2.f6538j;
        h0 h0Var3 = d2.f6539k;
        long j3 = d2.f6540l;
        long j4 = d2.f6541m;
        i.m0.d.c cVar = d2.n;
        if (i3 >= 0) {
            if (e0Var != null) {
                if (c0Var != null) {
                    if (str2 != null) {
                        return new h0(e0Var, c0Var, str2, i3, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j3, j4, cVar);
                    }
                    throw new IllegalStateException("message == null".toString());
                }
                throw new IllegalStateException("protocol == null".toString());
            }
            throw new IllegalStateException("request == null".toString());
        }
        throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i3).toString());
    }
}
