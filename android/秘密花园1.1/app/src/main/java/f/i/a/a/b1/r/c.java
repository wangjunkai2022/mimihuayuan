package f.i.a.a.b1.r;

import androidx.annotation.Nullable;
import f.i.a.a.b1.f;
import f.i.a.a.h0;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* compiled from: ScriptTagPayloadReader.java */
/* loaded from: classes.dex */
public final class c extends d {
    public long b;

    public c() {
        super(new f());
        this.b = -9223372036854775807L;
    }

    @Nullable
    public static Object d(u uVar, int i2) {
        if (i2 == 0) {
            return Double.valueOf(Double.longBitsToDouble(uVar.j()));
        }
        if (i2 == 1) {
            return Boolean.valueOf(uVar.p() == 1);
        } else if (i2 != 2) {
            if (i2 != 3) {
                if (i2 != 8) {
                    if (i2 != 10) {
                        if (i2 != 11) {
                            return null;
                        }
                        Date date = new Date((long) Double.valueOf(Double.longBitsToDouble(uVar.j())).doubleValue());
                        uVar.B(2);
                        return date;
                    }
                    int s = uVar.s();
                    ArrayList arrayList = new ArrayList(s);
                    for (int i3 = 0; i3 < s; i3++) {
                        Object d2 = d(uVar, uVar.p());
                        if (d2 != null) {
                            arrayList.add(d2);
                        }
                    }
                    return arrayList;
                }
                return e(uVar);
            }
            HashMap hashMap = new HashMap();
            while (true) {
                String f2 = f(uVar);
                int p = uVar.p();
                if (p == 9) {
                    return hashMap;
                }
                Object d3 = d(uVar, p);
                if (d3 != null) {
                    hashMap.put(f2, d3);
                }
            }
        } else {
            return f(uVar);
        }
    }

    public static HashMap<String, Object> e(u uVar) {
        int s = uVar.s();
        HashMap<String, Object> hashMap = new HashMap<>(s);
        for (int i2 = 0; i2 < s; i2++) {
            String f2 = f(uVar);
            Object d2 = d(uVar, uVar.p());
            if (d2 != null) {
                hashMap.put(f2, d2);
            }
        }
        return hashMap;
    }

    public static String f(u uVar) {
        int u = uVar.u();
        int i2 = uVar.b;
        uVar.B(u);
        return new String(uVar.a, i2, u);
    }

    @Override // f.i.a.a.b1.r.d
    public boolean b(u uVar) {
        return true;
    }

    @Override // f.i.a.a.b1.r.d
    public boolean c(u uVar, long j2) throws h0 {
        if (uVar.p() == 2) {
            if ("onMetaData".equals(f(uVar)) && uVar.p() == 8) {
                HashMap<String, Object> e2 = e(uVar);
                if (e2.containsKey("duration")) {
                    double doubleValue = ((Double) e2.get("duration")).doubleValue();
                    if (doubleValue > 0.0d) {
                        this.b = (long) (doubleValue * 1000000.0d);
                    }
                }
                return false;
            }
            return false;
        }
        throw new h0();
    }
}
