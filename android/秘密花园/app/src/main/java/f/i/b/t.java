package f.i.b;

import f.i.b.c0.r;
import java.math.BigInteger;

/* compiled from: JsonPrimitive.java */
/* loaded from: classes.dex */
public final class t extends o {
    public static final Class<?>[] b = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    public Object a;

    public t(Boolean bool) {
        g(bool);
    }

    public static boolean f(t tVar) {
        Object obj = tVar.a;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    public boolean c() {
        Object obj = this.a;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(e());
    }

    public Number d() {
        Object obj = this.a;
        return obj instanceof String ? new r((String) this.a) : (Number) obj;
    }

    public String e() {
        Object obj = this.a;
        if (obj instanceof Number) {
            return d().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        return (String) obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.a == null) {
            if (tVar.a == null) {
                return true;
            }
            return false;
        } else if (!f(this) || !f(tVar)) {
            if (!(this.a instanceof Number) || !(tVar.a instanceof Number)) {
                return this.a.equals(tVar.a);
            }
            double doubleValue = d().doubleValue();
            double doubleValue2 = tVar.d().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            if (!Double.isNaN(doubleValue) || !Double.isNaN(doubleValue2)) {
                return false;
            }
            return true;
        } else if (d().longValue() == tVar.d().longValue()) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0034, code lost:
        if (r0 == false) goto L_0x0037;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void g(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof java.lang.Character
            if (r0 == 0) goto L_0x0011
            java.lang.Character r8 = (java.lang.Character) r8
            char r8 = r8.charValue()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            r7.a = r8
            goto L_0x003c
        L_0x0011:
            boolean r0 = r8 instanceof java.lang.Number
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0036
            boolean r0 = r8 instanceof java.lang.String
            if (r0 == 0) goto L_0x001d
        L_0x001b:
            r0 = 1
            goto L_0x0034
        L_0x001d:
            java.lang.Class r0 = r8.getClass()
            java.lang.Class<?>[] r3 = f.i.b.t.b
            int r4 = r3.length
            r5 = 0
        L_0x0025:
            if (r5 >= r4) goto L_0x0033
            r6 = r3[r5]
            boolean r6 = r6.isAssignableFrom(r0)
            if (r6 == 0) goto L_0x0030
            goto L_0x001b
        L_0x0030:
            int r5 = r5 + 1
            goto L_0x0025
        L_0x0033:
            r0 = 0
        L_0x0034:
            if (r0 == 0) goto L_0x0037
        L_0x0036:
            r1 = 1
        L_0x0037:
            c.a.a.b.g.h.p(r1)
            r7.a = r8
        L_0x003c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.t.g(java.lang.Object):void");
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.a == null) {
            return 31;
        }
        if (f(this)) {
            doubleToLongBits = d().longValue();
        } else {
            Object obj = this.a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(d().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public t(Number number) {
        g(number);
    }

    public t(String str) {
        g(str);
    }

    public t(Object obj) {
        g(obj);
    }
}
