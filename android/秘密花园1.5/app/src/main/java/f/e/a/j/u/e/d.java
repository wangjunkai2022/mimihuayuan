package f.e.a.j.u.e;

import f.i.b.j;
import h.o.c.g;
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
            aVar2.a(f.e.a.e.a("dhcXDAQBUEkSEl0IFg=="), f.e.a.k.b.K);
            aVar2.a(f.e.a.e.a("dgEAARsH"), f.e.a.e.a("VhITCAIQWEcaCVpIEhkMBQ=="));
            aVar2.a(f.e.a.e.a("YhEGFkYyXlYdEg=="), f.e.a.e.a("WAkLEB8DFgBdVwRJSA=="));
            aVar2.a(f.e.a.e.a("QQcRFwIcVx4QCVAC"), f.e.a.e.a("BkxTSlw="));
            aVar2.a(f.e.a.e.a("dgEAARsHFH8SCFMSGQ0G"), f.e.a.e.a("TQpOJyVfQ1tIFwlXVlI="));
            aVar2.a(f.e.a.e.a("UwcVDQgWFFoX"), f.e.a.e.a("B1FaB1oWW1ZeBVBXSkdQDlRUTgUORAseElRXBktfAl0DVgYA"));
            e0 s = f.b.a.a.a.s("dg==", aVar2, f.e.a.e.a("Rw4CEA0cS14="));
            s.b.m();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            g0 g0Var = s.f6509e;
            if (g0Var instanceof u) {
                u uVar = (u) g0Var;
                i2 = uVar.h();
                for (int i3 = 0; i3 < uVar.h(); i3++) {
                    hashMap2.put(x.b.d(x.f6846l, uVar.b.get(i3), 0, 0, true, 3), x.b.d(x.f6846l, uVar.f6839c.get(i3), 0, 0, true, 3));
                }
            } else {
                i2 = 0;
            }
            hashMap2.put(f.e.a.e.a("QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
            ArrayList arrayList = new ArrayList(hashMap2.entrySet());
            Collections.sort(arrayList, new c());
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                a = f.e.a.e.a("EQ==");
                if (!hasNext) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                sb.append((String) entry.getKey());
                sb.append(f.e.a.e.a("Cg=="));
                sb.append((String) entry.getValue());
                sb.append(a);
                hashMap.put(entry.getKey(), entry.getValue());
            }
            String a2 = f.e.a.e.a("YjFULCZEdl8nPEMpO183Mg==");
            String a3 = f.e.a.e.a("XAcaWQ==");
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
            w wVar = s.f6508d;
            int size = wVar.size();
            for (int i4 = 0; i4 < size; i4++) {
                hashMap3.put(wVar.c(i4), wVar.f(i4));
            }
            hashMap3.remove(f.e.a.e.a("dgEAARsH"));
            String c2 = a.c(new j().j(hashMap3));
            hashMap.put(f.e.a.e.a("RAsECg=="), a.d(sb.toString()).toUpperCase());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f.e.a.e.a("Cl9egvff0YnYga7jWBkKDFlYQw=="));
            sb2.append(sb.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(f.e.a.e.a("Cl9egvff0YnYga7jWBkKDFlCDgBeSRk="));
            sb3.append(a.d(sb.toString()).toUpperCase());
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            String a4 = f.e.a.e.a("UwMXBQ==");
            String c3 = a.c(new j().j(hashMap));
            if (c3 != null) {
                arrayList2.add(x.b.a(x.f6846l, a4, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
                arrayList3.add(x.b.a(x.f6846l, c3, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, null, 91));
                e0.a aVar3 = new e0.a(s);
                aVar3.a(f.e.a.e.a("UwMXBQ=="), c2);
                aVar3.g(f.e.a.e.a("UwcVDQgWFFoX"));
                aVar3.g(f.e.a.e.a("dhcXDAQBUEkSEl0IFg=="));
                aVar3.g(f.e.a.e.a("Rw4CEA0cS14="));
                aVar3.g(f.e.a.e.a("QQcRFwIcVx4QCVAC"));
                aVar3.g(f.e.a.e.a("dgEAARsHFH8SCFMSGQ0G"));
                aVar3.a(f.e.a.e.a("b08lCxkEWEEXA1BKPgUR"), f.e.a.e.a("BlJNVl5dCARCSA1e"));
                aVar3.f(new u(arrayList2, arrayList3));
                h0 d2 = aVar.d(aVar3.b());
                try {
                    str = a.a(URLDecoder.decode(new JSONObject(d2.f6527h.H()).getString(f.e.a.e.a("RQcQEQcH")), f.e.a.e.a("YjYlSVM=")));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    str = "";
                }
                i0 F = i0.F(str, d2.f6527h.E());
                e0 e0Var = d2.b;
                c0 c0Var = d2.f6522c;
                int i5 = d2.f6524e;
                String str2 = d2.f6523d;
                v vVar = d2.f6525f;
                w.a d3 = d2.f6526g.d();
                h0 h0Var = d2.f6528i;
                h0 h0Var2 = d2.f6529j;
                h0 h0Var3 = d2.f6530k;
                long j2 = d2.f6531l;
                long j3 = d2.f6532m;
                i.m0.d.c cVar = d2.n;
                if (i5 >= 0) {
                    if (e0Var != null) {
                        if (c0Var != null) {
                            if (str2 != null) {
                                return new h0(e0Var, c0Var, str2, i5, vVar, d3.d(), F, h0Var, h0Var2, h0Var3, j2, j3, cVar);
                            }
                            throw new IllegalStateException("message == null".toString());
                        }
                        throw new IllegalStateException("protocol == null".toString());
                    }
                    throw new IllegalStateException("request == null".toString());
                }
                throw new IllegalStateException(f.b.a.a.a.J("code < 0: ", i5).toString());
            }
            g.f("value");
            throw null;
        }
        throw null;
    }
}
