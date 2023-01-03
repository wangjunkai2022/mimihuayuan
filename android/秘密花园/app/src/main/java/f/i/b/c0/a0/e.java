package f.i.b.c0.a0;

import f.i.b.e0.b;
import f.i.b.l;
import f.i.b.q;
import f.i.b.r;
import f.i.b.t;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

/* compiled from: JsonTreeReader.java */
/* loaded from: classes.dex */
public final class e extends f.i.b.e0.a {
    public static final Object u = new Object();
    public Object[] q;
    public int r;
    public String[] s;
    public int[] t;

    /* compiled from: JsonTreeReader.java */
    /* loaded from: classes.dex */
    public static class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i3) throws IOException {
            throw new AssertionError();
        }
    }

    static {
        new a();
    }

    private String K() {
        StringBuilder o = f.b.a.a.a.o(" at path ");
        o.append(H());
        return o.toString();
    }

    @Override // f.i.b.e0.a
    public void E() throws IOException {
        c0(b.END_ARRAY);
        e0();
        e0();
        int i2 = this.r;
        if (i2 > 0) {
            int[] iArr = this.t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // f.i.b.e0.a
    public void F() throws IOException {
        c0(b.END_OBJECT);
        e0();
        e0();
        int i2 = this.r;
        if (i2 > 0) {
            int[] iArr = this.t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // f.i.b.e0.a
    public String H() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.r) {
            Object[] objArr = this.q;
            if (objArr[i2] instanceof l) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.t[i2]);
                    sb.append(']');
                }
            } else if (objArr[i2] instanceof r) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.s;
                    if (strArr[i2] != null) {
                        sb.append(strArr[i2]);
                    }
                }
            }
            i2++;
        }
        return sb.toString();
    }

    @Override // f.i.b.e0.a
    public boolean I() throws IOException {
        b V = V();
        return (V == b.END_OBJECT || V == b.END_ARRAY) ? false : true;
    }

    @Override // f.i.b.e0.a
    public boolean L() throws IOException {
        c0(b.BOOLEAN);
        boolean c2 = ((t) e0()).c();
        int i2 = this.r;
        if (i2 > 0) {
            int[] iArr = this.t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return c2;
    }

    @Override // f.i.b.e0.a
    public double M() throws IOException {
        b bVar = b.NUMBER;
        b V = V();
        if (V == bVar || V == b.STRING) {
            t tVar = (t) d0();
            double doubleValue = tVar.a instanceof Number ? tVar.d().doubleValue() : Double.parseDouble(tVar.e());
            if (this.b || (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue))) {
                e0();
                int i2 = this.r;
                if (i2 > 0) {
                    int[] iArr = this.t;
                    int i3 = i2 - 1;
                    iArr[i3] = iArr[i3] + 1;
                }
                return doubleValue;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + doubleValue);
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + V + K());
    }

    @Override // f.i.b.e0.a
    public int N() throws IOException {
        b bVar = b.NUMBER;
        b V = V();
        if (V == bVar || V == b.STRING) {
            t tVar = (t) d0();
            int intValue = tVar.a instanceof Number ? tVar.d().intValue() : Integer.parseInt(tVar.e());
            e0();
            int i2 = this.r;
            if (i2 > 0) {
                int[] iArr = this.t;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return intValue;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + V + K());
    }

    @Override // f.i.b.e0.a
    public long O() throws IOException {
        b bVar = b.NUMBER;
        b V = V();
        if (V == bVar || V == b.STRING) {
            t tVar = (t) d0();
            long longValue = tVar.a instanceof Number ? tVar.d().longValue() : Long.parseLong(tVar.e());
            e0();
            int i2 = this.r;
            if (i2 > 0) {
                int[] iArr = this.t;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return longValue;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + V + K());
    }

    @Override // f.i.b.e0.a
    public String P() throws IOException {
        c0(b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) d0()).next();
        String str = (String) entry.getKey();
        this.s[this.r - 1] = str;
        f0(entry.getValue());
        return str;
    }

    @Override // f.i.b.e0.a
    public void R() throws IOException {
        c0(b.NULL);
        e0();
        int i2 = this.r;
        if (i2 > 0) {
            int[] iArr = this.t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // f.i.b.e0.a
    public String T() throws IOException {
        b bVar = b.STRING;
        b V = V();
        if (V == bVar || V == b.NUMBER) {
            String e2 = ((t) e0()).e();
            int i2 = this.r;
            if (i2 > 0) {
                int[] iArr = this.t;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return e2;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + V + K());
    }

    @Override // f.i.b.e0.a
    public b V() throws IOException {
        if (this.r == 0) {
            return b.END_DOCUMENT;
        }
        Object d0 = d0();
        if (d0 instanceof Iterator) {
            boolean z = this.q[this.r - 2] instanceof r;
            Iterator it = (Iterator) d0;
            if (!it.hasNext()) {
                return z ? b.END_OBJECT : b.END_ARRAY;
            }
            if (z) {
                return b.NAME;
            }
            f0(it.next());
            return V();
        } else if (d0 instanceof r) {
            return b.BEGIN_OBJECT;
        } else {
            if (d0 instanceof l) {
                return b.BEGIN_ARRAY;
            }
            if (d0 instanceof t) {
                Object obj = ((t) d0).a;
                if (obj instanceof String) {
                    return b.STRING;
                }
                if (obj instanceof Boolean) {
                    return b.BOOLEAN;
                }
                if (obj instanceof Number) {
                    return b.NUMBER;
                }
                throw new AssertionError();
            } else if (d0 instanceof q) {
                return b.NULL;
            } else {
                if (d0 == u) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    @Override // f.i.b.e0.a
    public void a0() throws IOException {
        if (V() == b.NAME) {
            P();
            this.s[this.r - 2] = "null";
        } else {
            e0();
            int i2 = this.r;
            if (i2 > 0) {
                this.s[i2 - 1] = "null";
            }
        }
        int i3 = this.r;
        if (i3 > 0) {
            int[] iArr = this.t;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
        }
    }

    public final void c0(b bVar) throws IOException {
        if (V() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + V() + K());
        }
    }

    @Override // f.i.b.e0.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.q = new Object[]{u};
        this.r = 1;
    }

    @Override // f.i.b.e0.a
    public void d() throws IOException {
        c0(b.BEGIN_ARRAY);
        f0(((l) d0()).iterator());
        this.t[this.r - 1] = 0;
    }

    public final Object d0() {
        return this.q[this.r - 1];
    }

    @Override // f.i.b.e0.a
    public void e() throws IOException {
        c0(b.BEGIN_OBJECT);
        f0(((r) d0()).a.entrySet().iterator());
    }

    public final Object e0() {
        Object[] objArr = this.q;
        int i2 = this.r - 1;
        this.r = i2;
        Object obj = objArr[i2];
        objArr[i2] = null;
        return obj;
    }

    public final void f0(Object obj) {
        int i2 = this.r;
        Object[] objArr = this.q;
        if (i2 == objArr.length) {
            Object[] objArr2 = new Object[i2 * 2];
            int[] iArr = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.t, 0, iArr, 0, this.r);
            System.arraycopy(this.s, 0, strArr, 0, this.r);
            this.q = objArr2;
            this.t = iArr;
            this.s = strArr;
        }
        Object[] objArr3 = this.q;
        int i3 = this.r;
        this.r = i3 + 1;
        objArr3[i3] = obj;
    }

    @Override // f.i.b.e0.a, java.lang.Object
    public String toString() {
        return e.class.getSimpleName();
    }
}
