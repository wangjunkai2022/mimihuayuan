package f.e.a.j.t.e;

import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.b;
import f.i.b.j;
import h.o.c.g;
import i.c0;
import i.e0;
import i.g0;
import i.h0;
import i.i0;
import i.m0.d.c;
import i.u;
import i.v;
import i.w;
import i.x;
import i.y;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ISYInterceptor.java */
/* loaded from: classes.dex */
public class d implements y {
    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        int i2;
        String a;
        String str;
        e0 S = aVar.S();
        if (S != null) {
            e0.a aVar2 = new e0.a(S);
            aVar2.a(e.a("dhcXDAQBUEkSEl0IFg=="), b.K);
            aVar2.a(e.a("dgEAARsH"), e.a("VhITCAIQWEcaCVpIEhkMBQ=="));
            aVar2.a(e.a("YhEGFkYyXlYdEg=="), e.a("WAkLEB8DFgBdVwRJSA=="));
            aVar2.a(e.a("QQcRFwIcVx4QCVAC"), e.a("BkxTSlw="));
            aVar2.a(e.a("dgEAARsHFH8SCFMSGQ0G"), e.a("TQpOJyVfQ1tIFwlXVlI="));
            aVar2.a(e.a("UwcVDQgWFFoX"), e.a("B1FaB1oWW1ZeBVBXSkdQDlRUTgUORAseElRXBktfAl0DVgYA"));
            e0 s = a.s("dg==", aVar2, e.a("Rw4CEA0cS14="));
            s.b.m();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            g0 g0Var = s.f6434e;
            if (g0Var instanceof u) {
                u uVar = (u) g0Var;
                i2 = uVar.h();
                for (int i3 = 0; i3 < uVar.h(); i3++) {
                    hashMap2.put(x.b.d(x.f6771l, uVar.b.get(i3), 0, 0, true, 3), x.b.d(x.f6771l, uVar.f6764c.get(i3), 0, 0, true, 3));
                }
            } else {
                i2 = 0;
            }
            hashMap2.put(e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
            ArrayList arrayList = new ArrayList(hashMap2.entrySet());
            Collections.sort(arrayList, new c());
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                a = e.a("EQ==");
                if (!hasNext) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                sb.append((String) entry.getKey());
                sb.append(e.a("Cg=="));
                sb.append((String) entry.getValue());
                sb.append(a);
                hashMap.put(entry.getKey(), entry.getValue());
            }
            String a2 = e.a("YjFULCZEdl8nPEMpO183Mg==");
            String a3 = e.a("XAcaWQ==");
            if (i2 > 0) {
                sb.deleteCharAt(sb.length() - 1);
                sb.append(a);
                sb.append(a3);
                sb.append(a2);
            } else {
                sb.append(a3);
                sb.append(a2);
            }
            HashMap hashMap3 = new HashMap();
            w wVar = s.f6433d;
            int size = wVar.size();
            for (int i4 = 0; i4 < size; i4++) {
                hashMap3.put(wVar.c(i4), wVar.f(i4));
            }
            hashMap3.remove(e.a("dgEAARsH"));
            String c2 = a.c(new j().j(hashMap3));
            hashMap.put(e.a("RAsECg=="), a.d(sb.toString()).toUpperCase());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e.a("Cl9egvff0YnYga7jWBkKDFlYQw=="));
            sb2.append(sb.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e.a("Cl9egvff0YnYga7jWBkKDFlCDgBeSRk="));
            sb3.append(a.d(sb.toString()).toUpperCase());
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            String a4 = e.a("UwMXBQ==");
            String c3 = a.c(new j().j(hashMap));
            if (c3 != null) {
                arrayList2.add(x.b.a(x.f6771l, a4, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
                arrayList3.add(x.b.a(x.f6771l, c3, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
                e0.a aVar3 = new e0.a(s);
                aVar3.a(e.a("UwMXBQ=="), c2);
                aVar3.g(e.a("UwcVDQgWFFoX"));
                aVar3.g(e.a("dhcXDAQBUEkSEl0IFg=="));
                aVar3.g(e.a("Rw4CEA0cS14="));
                aVar3.g(e.a("QQcRFwIcVx4QCVAC"));
                aVar3.g(e.a("dgEAARsHFH8SCFMSGQ0G"));
                aVar3.a(e.a("b08lCxkEWEEXA1BKPgUR"), e.a("BlJNVl5dCARCSA1e"));
                aVar3.f(new u(arrayList2, arrayList3));
                h0 d2 = aVar.d(aVar3.b());
                try {
                    str = a.a(URLDecoder.decode(new JSONObject(d2.f6452h.H()).getString(e.a("RQcQEQcH")), e.a("YjYlSVM=")));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    str = "";
                }
                i0 F = i0.F(str, d2.f6452h.E());
                e0 e0Var = d2.b;
                c0 c0Var = d2.f6447c;
                int i5 = d2.f6449e;
                String str2 = d2.f6448d;
                v vVar = d2.f6450f;
                w.a d3 = d2.f6451g.d();
                h0 h0Var = d2.f6453i;
                h0 h0Var2 = d2.f6454j;
                h0 h0Var3 = d2.f6455k;
                long j2 = d2.f6456l;
                long j3 = d2.f6457m;
                c cVar = d2.n;
                if (!(i5 >= 0)) {
                    throw new IllegalStateException(a.J("code < 0: ", i5).toString());
                } else if (e0Var == null) {
                    throw new IllegalStateException("request == null".toString());
                } else if (c0Var == null) {
                    throw new IllegalStateException("protocol == null".toString());
                } else if (str2 != null) {
                    return new h0(e0Var, c0Var, str2, i5, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                } else {
                    throw new IllegalStateException("message == null".toString());
                }
            } else {
                g.f("value");
                throw null;
            }
        } else {
            throw null;
        }
    }
}
