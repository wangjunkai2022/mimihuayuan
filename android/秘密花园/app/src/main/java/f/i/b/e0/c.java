package f.i.b.e0;

import com.umeng.commonsdk.internal.utils.g;
import f.b.a.a.a;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* compiled from: JsonWriter.java */
/* loaded from: classes.dex */
public class c implements Closeable, Flushable {

    /* renamed from: j  reason: collision with root package name */
    public static final String[] f6089j = new String[128];

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f6090k;
    public final Writer a;

    /* renamed from: d  reason: collision with root package name */
    public String f6092d;

    /* renamed from: f  reason: collision with root package name */
    public boolean f6094f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6095g;

    /* renamed from: h  reason: collision with root package name */
    public String f6096h;
    public int[] b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    public int f6091c = 0;

    /* renamed from: e  reason: collision with root package name */
    public String f6093e = ":";

    /* renamed from: i  reason: collision with root package name */
    public boolean f6097i = true;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f6089j[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = f6089j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f6090k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        K(6);
        if (writer != null) {
            this.a = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    public c E() throws IOException {
        g(1, 2, "]");
        return this;
    }

    public c F() throws IOException {
        g(3, 5, "}");
        return this;
    }

    public c G(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f6096h != null) {
            throw new IllegalStateException();
        } else if (this.f6091c != 0) {
            this.f6096h = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    public final void H() throws IOException {
        if (this.f6092d != null) {
            this.a.write(g.a);
            int i2 = this.f6091c;
            for (int i3 = 1; i3 < i2; i3++) {
                this.a.write(this.f6092d);
            }
        }
    }

    public c I() throws IOException {
        if (this.f6096h != null) {
            if (this.f6097i) {
                S();
            } else {
                this.f6096h = null;
                return this;
            }
        }
        d();
        this.a.write("null");
        return this;
    }

    public final int J() {
        int i2 = this.f6091c;
        if (i2 != 0) {
            return this.b[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void K(int i2) {
        int i3 = this.f6091c;
        int[] iArr = this.b;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[i3 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.b = iArr2;
        }
        int[] iArr3 = this.b;
        int i4 = this.f6091c;
        this.f6091c = i4 + 1;
        iArr3[i4] = i2;
    }

    public final void L(int i2) {
        this.b[this.f6091c - 1] = i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0034  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void M(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f6095g
            if (r0 == 0) goto L_0x0007
            java.lang.String[] r0 = f.i.b.e0.c.f6090k
            goto L_0x0009
        L_0x0007:
            java.lang.String[] r0 = f.i.b.e0.c.f6089j
        L_0x0009:
            java.io.Writer r1 = r8.a
            java.lang.String r2 = "\""
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = 0
        L_0x0016:
            if (r3 >= r1) goto L_0x0045
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L_0x0025
            r5 = r0[r5]
            if (r5 != 0) goto L_0x0032
            goto L_0x0042
        L_0x0025:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L_0x002c
            java.lang.String r5 = "\\u2028"
            goto L_0x0032
        L_0x002c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L_0x0042
            java.lang.String r5 = "\\u2029"
        L_0x0032:
            if (r4 >= r3) goto L_0x003b
            java.io.Writer r6 = r8.a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L_0x003b:
            java.io.Writer r4 = r8.a
            r4.write(r5)
            int r4 = r3 + 1
        L_0x0042:
            int r3 = r3 + 1
            goto L_0x0016
        L_0x0045:
            if (r4 >= r1) goto L_0x004d
            java.io.Writer r0 = r8.a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L_0x004d:
            java.io.Writer r9 = r8.a
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.e0.c.M(java.lang.String):void");
    }

    public c N(long j2) throws IOException {
        S();
        d();
        this.a.write(Long.toString(j2));
        return this;
    }

    public c O(Boolean bool) throws IOException {
        if (bool == null) {
            return I();
        }
        S();
        d();
        this.a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c P(Number number) throws IOException {
        if (number == null) {
            return I();
        }
        S();
        String obj = number.toString();
        if (this.f6094f || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            d();
            this.a.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public c Q(String str) throws IOException {
        if (str == null) {
            return I();
        }
        S();
        d();
        M(str);
        return this;
    }

    public c R(boolean z) throws IOException {
        S();
        d();
        this.a.write(z ? "true" : "false");
        return this;
    }

    public final void S() throws IOException {
        if (this.f6096h != null) {
            int J = J();
            if (J == 5) {
                this.a.write(44);
            } else if (J != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            H();
            L(4);
            M(this.f6096h);
            this.f6096h = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
        int i2 = this.f6091c;
        if (i2 > 1 || (i2 == 1 && this.b[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f6091c = 0;
    }

    public final void d() throws IOException {
        int J = J();
        if (J == 1) {
            L(2);
            H();
        } else if (J == 2) {
            this.a.append(',');
            H();
        } else if (J != 4) {
            if (J != 6) {
                if (J != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f6094f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            L(7);
        } else {
            this.a.append((CharSequence) this.f6093e);
            L(5);
        }
    }

    public c e() throws IOException {
        S();
        d();
        K(1);
        this.a.write("[");
        return this;
    }

    public c f() throws IOException {
        S();
        d();
        K(3);
        this.a.write("{");
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f6091c != 0) {
            this.a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final c g(int i2, int i3, String str) throws IOException {
        int J = J();
        if (J != i3 && J != i2) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f6096h == null) {
            this.f6091c--;
            if (J == i3) {
                H();
            }
            this.a.write(str);
            return this;
        } else {
            StringBuilder o = a.o("Dangling name: ");
            o.append(this.f6096h);
            throw new IllegalStateException(o.toString());
        }
    }
}
