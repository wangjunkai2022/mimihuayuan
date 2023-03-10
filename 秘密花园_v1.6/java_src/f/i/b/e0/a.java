package f.i.b.e0;

import f.i.b.c0.q;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* compiled from: JsonReader.java */
/* loaded from: classes.dex */
public class a implements Closeable {
    public static final char[] p = ")]}'\n".toCharArray();
    public final Reader a;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public final char[] f6153c = new char[1024];

    /* renamed from: d  reason: collision with root package name */
    public int f6154d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f6155e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f6156f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f6157g = 0;

    /* renamed from: h  reason: collision with root package name */
    public int f6158h = 0;

    /* renamed from: i  reason: collision with root package name */
    public long f6159i;

    /* renamed from: j  reason: collision with root package name */
    public int f6160j;

    /* renamed from: k  reason: collision with root package name */
    public String f6161k;

    /* renamed from: l  reason: collision with root package name */
    public int[] f6162l;

    /* renamed from: m  reason: collision with root package name */
    public int f6163m;
    public String[] n;
    public int[] o;

    /* compiled from: JsonReader.java */
    /* renamed from: f.i.b.e0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0096a extends q {
    }

    static {
        q.a = new C0096a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f6162l = iArr;
        this.f6163m = 0;
        this.f6163m = 0 + 1;
        iArr[0] = 6;
        this.n = new String[32];
        this.o = new int[32];
        if (reader != null) {
            this.a = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    public void E() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 4) {
            int i3 = this.f6163m - 1;
            this.f6163m = i3;
            int[] iArr = this.o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f6158h = 0;
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Expected END_ARRAY but was ");
        o.append(V());
        o.append(K());
        throw new IllegalStateException(o.toString());
    }

    public void F() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 2) {
            int i3 = this.f6163m - 1;
            this.f6163m = i3;
            this.n[i3] = null;
            int[] iArr = this.o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f6158h = 0;
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Expected END_OBJECT but was ");
        o.append(V());
        o.append(K());
        throw new IllegalStateException(o.toString());
    }

    public final boolean G(int i2) throws IOException {
        int i3;
        char[] cArr = this.f6153c;
        int i4 = this.f6157g;
        int i5 = this.f6154d;
        this.f6157g = i4 - i5;
        int i6 = this.f6155e;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f6155e = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f6155e = 0;
        }
        this.f6154d = 0;
        do {
            Reader reader = this.a;
            int i8 = this.f6155e;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            int i9 = this.f6155e + read;
            this.f6155e = i9;
            if (this.f6156f == 0 && (i3 = this.f6157g) == 0 && i9 > 0 && cArr[0] == 65279) {
                this.f6154d++;
                this.f6157g = i3 + 1;
                i2++;
            }
        } while (this.f6155e < i2);
        return true;
    }

    public String H() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = this.f6163m;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f6162l[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.o[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.n;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public boolean I() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final boolean J(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        f();
        return false;
    }

    public String K() {
        return " at line " + (this.f6156f + 1) + " column " + ((this.f6154d - this.f6157g) + 1) + " path " + H();
    }

    public boolean L() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 5) {
            this.f6158h = 0;
            int[] iArr = this.o;
            int i3 = this.f6163m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f6158h = 0;
            int[] iArr2 = this.o;
            int i4 = this.f6163m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            StringBuilder o = f.b.a.a.a.o("Expected a boolean but was ");
            o.append(V());
            o.append(K());
            throw new IllegalStateException(o.toString());
        }
    }

    public double M() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            this.f6158h = 0;
            int[] iArr = this.o;
            int i3 = this.f6163m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f6159i;
        }
        if (i2 == 16) {
            this.f6161k = new String(this.f6153c, this.f6154d, this.f6160j);
            this.f6154d += this.f6160j;
        } else if (i2 == 8 || i2 == 9) {
            this.f6161k = S(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f6161k = U();
        } else if (i2 != 11) {
            StringBuilder o = f.b.a.a.a.o("Expected a double but was ");
            o.append(V());
            o.append(K());
            throw new IllegalStateException(o.toString());
        }
        this.f6158h = 11;
        double parseDouble = Double.parseDouble(this.f6161k);
        if (!this.b && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new d("JSON forbids NaN and infinities: " + parseDouble + K());
        }
        this.f6161k = null;
        this.f6158h = 0;
        int[] iArr2 = this.o;
        int i4 = this.f6163m - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return parseDouble;
    }

    public int N() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            long j2 = this.f6159i;
            int i3 = (int) j2;
            if (j2 == i3) {
                this.f6158h = 0;
                int[] iArr = this.o;
                int i4 = this.f6163m - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            StringBuilder o = f.b.a.a.a.o("Expected an int but was ");
            o.append(this.f6159i);
            o.append(K());
            throw new NumberFormatException(o.toString());
        }
        if (i2 == 16) {
            this.f6161k = new String(this.f6153c, this.f6154d, this.f6160j);
            this.f6154d += this.f6160j;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            StringBuilder o2 = f.b.a.a.a.o("Expected an int but was ");
            o2.append(V());
            o2.append(K());
            throw new IllegalStateException(o2.toString());
        } else {
            if (i2 == 10) {
                this.f6161k = U();
            } else {
                this.f6161k = S(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f6161k);
                this.f6158h = 0;
                int[] iArr2 = this.o;
                int i5 = this.f6163m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f6158h = 11;
        double parseDouble = Double.parseDouble(this.f6161k);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.f6161k = null;
            this.f6158h = 0;
            int[] iArr3 = this.o;
            int i7 = this.f6163m - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        StringBuilder o3 = f.b.a.a.a.o("Expected an int but was ");
        o3.append(this.f6161k);
        o3.append(K());
        throw new NumberFormatException(o3.toString());
    }

    public long O() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            this.f6158h = 0;
            int[] iArr = this.o;
            int i3 = this.f6163m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f6159i;
        }
        if (i2 == 16) {
            this.f6161k = new String(this.f6153c, this.f6154d, this.f6160j);
            this.f6154d += this.f6160j;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            StringBuilder o = f.b.a.a.a.o("Expected a long but was ");
            o.append(V());
            o.append(K());
            throw new IllegalStateException(o.toString());
        } else {
            if (i2 == 10) {
                this.f6161k = U();
            } else {
                this.f6161k = S(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f6161k);
                this.f6158h = 0;
                int[] iArr2 = this.o;
                int i4 = this.f6163m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f6158h = 11;
        double parseDouble = Double.parseDouble(this.f6161k);
        long j2 = (long) parseDouble;
        if (j2 == parseDouble) {
            this.f6161k = null;
            this.f6158h = 0;
            int[] iArr3 = this.o;
            int i5 = this.f6163m - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j2;
        }
        StringBuilder o2 = f.b.a.a.a.o("Expected a long but was ");
        o2.append(this.f6161k);
        o2.append(K());
        throw new NumberFormatException(o2.toString());
    }

    public String P() throws IOException {
        String S;
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 14) {
            S = U();
        } else if (i2 == 12) {
            S = S('\'');
        } else if (i2 == 13) {
            S = S('\"');
        } else {
            StringBuilder o = f.b.a.a.a.o("Expected a name but was ");
            o.append(V());
            o.append(K());
            throw new IllegalStateException(o.toString());
        }
        this.f6158h = 0;
        this.n[this.f6163m - 1] = S;
        return S;
    }

    public final int Q(boolean z) throws IOException {
        char[] cArr = this.f6153c;
        int i2 = this.f6154d;
        int i3 = this.f6155e;
        while (true) {
            boolean z2 = true;
            if (i2 == i3) {
                this.f6154d = i2;
                if (!G(1)) {
                    if (z) {
                        StringBuilder o = f.b.a.a.a.o("End of input");
                        o.append(K());
                        throw new EOFException(o.toString());
                    }
                    return -1;
                }
                i2 = this.f6154d;
                i3 = this.f6155e;
            }
            int i4 = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == '\n') {
                this.f6156f++;
                this.f6157g = i4;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.f6154d = i4;
                    if (i4 == i3) {
                        this.f6154d = i4 - 1;
                        boolean G = G(2);
                        this.f6154d++;
                        if (!G) {
                            return c2;
                        }
                    }
                    f();
                    int i5 = this.f6154d;
                    char c3 = cArr[i5];
                    if (c3 == '*') {
                        this.f6154d = i5 + 1;
                        while (true) {
                            if (this.f6154d + 2 > this.f6155e && !G(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.f6153c;
                            int i6 = this.f6154d;
                            if (cArr2[i6] != '\n') {
                                for (int i7 = 0; i7 < 2; i7++) {
                                    if (this.f6153c[this.f6154d + i7] != "*/".charAt(i7)) {
                                        break;
                                    }
                                }
                                break;
                            }
                            this.f6156f++;
                            this.f6157g = i6 + 1;
                            this.f6154d++;
                        }
                        if (z2) {
                            i2 = this.f6154d + 2;
                            i3 = this.f6155e;
                        } else {
                            b0("Unterminated comment");
                            throw null;
                        }
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.f6154d = i5 + 1;
                        Z();
                        i2 = this.f6154d;
                        i3 = this.f6155e;
                    }
                } else if (c2 == '#') {
                    this.f6154d = i4;
                    f();
                    Z();
                    i2 = this.f6154d;
                    i3 = this.f6155e;
                } else {
                    this.f6154d = i4;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    public void R() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 7) {
            this.f6158h = 0;
            int[] iArr = this.o;
            int i3 = this.f6163m - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Expected null but was ");
        o.append(V());
        o.append(K());
        throw new IllegalStateException(o.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        if (r2 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r4) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
        r2.append(r0, r4, r3 - r4);
        r10.f6154d = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String S(char r11) throws java.io.IOException {
        /*
            r10 = this;
            char[] r0 = r10.f6153c
            r1 = 0
            r2 = r1
        L4:
            int r3 = r10.f6154d
            int r4 = r10.f6155e
        L8:
            r5 = r4
            r4 = r3
        La:
            r6 = 16
            r7 = 1
            if (r3 >= r5) goto L5d
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L29
            r10.f6154d = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L21
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r4, r8)
            return r11
        L21:
            r2.append(r0, r4, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L29:
            r9 = 92
            if (r3 != r9) goto L50
            r10.f6154d = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L41
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L41:
            r2.append(r0, r4, r8)
            char r3 = r10.X()
            r2.append(r3)
            int r3 = r10.f6154d
            int r4 = r10.f6155e
            goto L8
        L50:
            r6 = 10
            if (r3 != r6) goto L5b
            int r3 = r10.f6156f
            int r3 = r3 + r7
            r10.f6156f = r3
            r10.f6157g = r8
        L5b:
            r3 = r8
            goto La
        L5d:
            if (r2 != 0) goto L6d
            int r2 = r3 - r4
            int r2 = r2 * 2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r5.<init>(r2)
            r2 = r5
        L6d:
            int r5 = r3 - r4
            r2.append(r0, r4, r5)
            r10.f6154d = r3
            boolean r3 = r10.G(r7)
            if (r3 == 0) goto L7b
            goto L4
        L7b:
            java.lang.String r11 = "Unterminated string"
            r10.b0(r11)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.e0.a.S(char):java.lang.String");
    }

    public String T() throws IOException {
        String str;
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 10) {
            str = U();
        } else if (i2 == 8) {
            str = S('\'');
        } else if (i2 == 9) {
            str = S('\"');
        } else if (i2 == 11) {
            str = this.f6161k;
            this.f6161k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f6159i);
        } else if (i2 == 16) {
            str = new String(this.f6153c, this.f6154d, this.f6160j);
            this.f6154d += this.f6160j;
        } else {
            StringBuilder o = f.b.a.a.a.o("Expected a string but was ");
            o.append(V());
            o.append(K());
            throw new IllegalStateException(o.toString());
        }
        this.f6158h = 0;
        int[] iArr = this.o;
        int i3 = this.f6163m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        f();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String U() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.f6154d
            int r4 = r3 + r2
            int r5 = r6.f6155e
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f6153c
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.f()
            goto L5c
        L4e:
            char[] r3 = r6.f6153c
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.G(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.f6153c
            int r4 = r6.f6154d
            r1.append(r3, r4, r2)
            int r3 = r6.f6154d
            int r3 = r3 + r2
            r6.f6154d = r3
            r2 = 1
            boolean r2 = r6.G(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f6153c
            int r3 = r6.f6154d
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.f6153c
            int r3 = r6.f6154d
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.f6154d
            int r2 = r2 + r0
            r6.f6154d = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.e0.a.U():java.lang.String");
    }

    public b V() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        switch (i2) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void W(int i2) {
        int i3 = this.f6163m;
        int[] iArr = this.f6162l;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[i3 * 2];
            int[] iArr3 = new int[i3 * 2];
            String[] strArr = new String[i3 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            System.arraycopy(this.o, 0, iArr3, 0, this.f6163m);
            System.arraycopy(this.n, 0, strArr, 0, this.f6163m);
            this.f6162l = iArr2;
            this.o = iArr3;
            this.n = strArr;
        }
        int[] iArr4 = this.f6162l;
        int i4 = this.f6163m;
        this.f6163m = i4 + 1;
        iArr4[i4] = i2;
    }

    public final char X() throws IOException {
        int i2;
        int i3;
        if (this.f6154d == this.f6155e && !G(1)) {
            b0("Unterminated escape sequence");
            throw null;
        }
        char[] cArr = this.f6153c;
        int i4 = this.f6154d;
        int i5 = i4 + 1;
        this.f6154d = i5;
        char c2 = cArr[i4];
        if (c2 == '\n') {
            this.f6156f++;
            this.f6157g = i5;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 != 'b') {
                if (c2 != 'f') {
                    if (c2 != 'n') {
                        if (c2 != 'r') {
                            if (c2 != 't') {
                                if (c2 == 'u') {
                                    if (i5 + 4 > this.f6155e && !G(4)) {
                                        b0("Unterminated escape sequence");
                                        throw null;
                                    }
                                    char c3 = 0;
                                    int i6 = this.f6154d;
                                    int i7 = i6 + 4;
                                    while (i6 < i7) {
                                        char c4 = this.f6153c[i6];
                                        char c5 = (char) (c3 << 4);
                                        if (c4 < '0' || c4 > '9') {
                                            if (c4 >= 'a' && c4 <= 'f') {
                                                i2 = c4 - 'a';
                                            } else if (c4 < 'A' || c4 > 'F') {
                                                StringBuilder o = f.b.a.a.a.o("\\u");
                                                o.append(new String(this.f6153c, this.f6154d, 4));
                                                throw new NumberFormatException(o.toString());
                                            } else {
                                                i2 = c4 - 'A';
                                            }
                                            i3 = i2 + 10;
                                        } else {
                                            i3 = c4 - '0';
                                        }
                                        c3 = (char) (i3 + c5);
                                        i6++;
                                    }
                                    this.f6154d += 4;
                                    return c3;
                                }
                                b0("Invalid escape sequence");
                                throw null;
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\n';
                }
                return '\f';
            }
            return '\b';
        }
        return c2;
    }

    public final void Y(char c2) throws IOException {
        char[] cArr = this.f6153c;
        do {
            int i2 = this.f6154d;
            int i3 = this.f6155e;
            while (i2 < i3) {
                int i4 = i2 + 1;
                char c3 = cArr[i2];
                if (c3 == c2) {
                    this.f6154d = i4;
                    return;
                } else if (c3 == '\\') {
                    this.f6154d = i4;
                    X();
                    i2 = this.f6154d;
                    i3 = this.f6155e;
                } else {
                    if (c3 == '\n') {
                        this.f6156f++;
                        this.f6157g = i4;
                    }
                    i2 = i4;
                }
            }
            this.f6154d = i2;
        } while (G(1));
        b0("Unterminated string");
        throw null;
    }

    public final void Z() throws IOException {
        char c2;
        do {
            if (this.f6154d >= this.f6155e && !G(1)) {
                return;
            }
            char[] cArr = this.f6153c;
            int i2 = this.f6154d;
            int i3 = i2 + 1;
            this.f6154d = i3;
            c2 = cArr[i2];
            if (c2 == '\n') {
                this.f6156f++;
                this.f6157g = i3;
                return;
            }
        } while (c2 != '\r');
    }

    public void a0() throws IOException {
        int i2 = 0;
        do {
            int i3 = this.f6158h;
            if (i3 == 0) {
                i3 = g();
            }
            if (i3 == 3) {
                W(1);
            } else if (i3 == 1) {
                W(3);
            } else {
                if (i3 == 4) {
                    this.f6163m--;
                } else if (i3 == 2) {
                    this.f6163m--;
                } else {
                    if (i3 == 14 || i3 == 10) {
                        do {
                            int i4 = 0;
                            while (true) {
                                int i5 = this.f6154d + i4;
                                if (i5 < this.f6155e) {
                                    char c2 = this.f6153c[i5];
                                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                                        if (c2 != '#') {
                                            if (c2 != ',') {
                                                if (c2 != '/' && c2 != '=') {
                                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                                        if (c2 != ';') {
                                                            switch (c2) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i4++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.f6154d = i5;
                                }
                            }
                            f();
                            this.f6154d += i4;
                        } while (G(1));
                    } else if (i3 == 8 || i3 == 12) {
                        Y('\'');
                    } else if (i3 == 9 || i3 == 13) {
                        Y('\"');
                    } else if (i3 == 16) {
                        this.f6154d += this.f6160j;
                    }
                    this.f6158h = 0;
                }
                i2--;
                this.f6158h = 0;
            }
            i2++;
            this.f6158h = 0;
        } while (i2 != 0);
        int[] iArr = this.o;
        int i6 = this.f6163m;
        int i7 = i6 - 1;
        iArr[i7] = iArr[i7] + 1;
        this.n[i6 - 1] = "null";
    }

    public final IOException b0(String str) throws IOException {
        StringBuilder o = f.b.a.a.a.o(str);
        o.append(K());
        throw new d(o.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6158h = 0;
        this.f6162l[0] = 8;
        this.f6163m = 1;
        this.a.close();
    }

    public void d() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 3) {
            W(1);
            this.o[this.f6163m - 1] = 0;
            this.f6158h = 0;
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Expected BEGIN_ARRAY but was ");
        o.append(V());
        o.append(K());
        throw new IllegalStateException(o.toString());
    }

    public void e() throws IOException {
        int i2 = this.f6158h;
        if (i2 == 0) {
            i2 = g();
        }
        if (i2 == 1) {
            W(3);
            this.f6158h = 0;
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Expected BEGIN_OBJECT but was ");
        o.append(V());
        o.append(K());
        throw new IllegalStateException(o.toString());
    }

    public final void f() throws IOException {
        if (this.b) {
            return;
        }
        b0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:158:0x0203, code lost:
        if (J(r6) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0205, code lost:
        if (r13 != 2) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0207, code lost:
        if (r15 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x020d, code lost:
        if (r10 != Long.MIN_VALUE) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x020f, code lost:
        if (r16 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0215, code lost:
        if (r10 != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0217, code lost:
        if (r16 != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0219, code lost:
        if (r16 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x021c, code lost:
        r10 = -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x021d, code lost:
        r19.f6159i = r10;
        r19.f6154d += r9;
        r6 = 15;
        r19.f6158h = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0229, code lost:
        if (r13 == 2) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x022c, code lost:
        if (r13 == 4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x022f, code lost:
        if (r13 != 7) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0231, code lost:
        r19.f6160j = r9;
        r6 = 16;
        r19.f6158h = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0174 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0264 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int g() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.e0.a.g():int");
    }

    public String toString() {
        return getClass().getSimpleName() + K();
    }
}
