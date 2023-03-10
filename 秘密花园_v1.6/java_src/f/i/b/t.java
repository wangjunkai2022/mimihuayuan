package f.i.b;

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
        return obj instanceof String ? new f.i.b.c0.r((String) this.a) : (Number) obj;
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
            return tVar.a == null;
        } else if (f(this) && f(tVar)) {
            return d().longValue() == tVar.d().longValue();
        } else if ((this.a instanceof Number) && (tVar.a instanceof Number)) {
            double doubleValue = d().doubleValue();
            double doubleValue2 = tVar.d().doubleValue();
            if (doubleValue != doubleValue2) {
                return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
            }
            return true;
        } else {
            return this.a.equals(tVar.a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        if (r0 == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof java.lang.Character
            if (r0 == 0) goto L11
            java.lang.Character r8 = (java.lang.Character) r8
            char r8 = r8.charValue()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            r7.a = r8
            goto L3c
        L11:
            boolean r0 = r8 instanceof java.lang.Number
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L36
            boolean r0 = r8 instanceof java.lang.String
            if (r0 == 0) goto L1d
        L1b:
            r0 = 1
            goto L34
        L1d:
            java.lang.Class r0 = r8.getClass()
            java.lang.Class<?>[] r3 = f.i.b.t.b
            int r4 = r3.length
            r5 = 0
        L25:
            if (r5 >= r4) goto L33
            r6 = r3[r5]
            boolean r6 = r6.isAssignableFrom(r0)
            if (r6 == 0) goto L30
            goto L1b
        L30:
            int r5 = r5 + 1
            goto L25
        L33:
            r0 = 0
        L34:
            if (r0 == 0) goto L37
        L36:
            r1 = 1
        L37:
            c.a.a.b.g.h.p(r1)
            r7.a = r8
        L3c:
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
            if (obj instanceof Number) {
                doubleToLongBits = Double.doubleToLongBits(d().doubleValue());
            } else {
                return obj.hashCode();
            }
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
