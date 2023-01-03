package k.a.f;

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* compiled from: CharacterReader.java */
/* loaded from: classes.dex */
public final class a {
    public char[] a;
    public Reader b;

    /* renamed from: c  reason: collision with root package name */
    public int f7033c;

    /* renamed from: d  reason: collision with root package name */
    public int f7034d;

    /* renamed from: e  reason: collision with root package name */
    public int f7035e;

    /* renamed from: f  reason: collision with root package name */
    public int f7036f;

    /* renamed from: g  reason: collision with root package name */
    public int f7037g = -1;

    /* renamed from: h  reason: collision with root package name */
    public String[] f7038h = new String[512];

    /* renamed from: i  reason: collision with root package name */
    public boolean f7039i;

    public a(Reader reader, int i2) {
        j.b.s(reader);
        j.b.n(reader.markSupported());
        this.b = reader;
        this.a = new char[i2 > 32768 ? 32768 : i2];
        b();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String c(char[] r9, java.lang.String[] r10, int r11, int r12) {
        /*
            r0 = 12
            if (r12 <= r0) goto La
            java.lang.String r10 = new java.lang.String
            r10.<init>(r9, r11, r12)
            return r10
        La:
            r0 = 1
            if (r12 >= r0) goto L10
            java.lang.String r9 = ""
            return r9
        L10:
            int r1 = r12 * 31
            r2 = 0
            r4 = r11
            r3 = 0
        L15:
            if (r3 >= r12) goto L22
            int r1 = r1 * 31
            int r5 = r4 + 1
            char r4 = r9[r4]
            int r1 = r1 + r4
            int r3 = r3 + 1
            r4 = r5
            goto L15
        L22:
            r1 = r1 & 511(0x1ff, float:7.16E-43)
            r3 = r10[r1]
            if (r3 != 0) goto L30
            java.lang.String r0 = new java.lang.String
            r0.<init>(r9, r11, r12)
            r10[r1] = r0
            goto L59
        L30:
            int r4 = r3.length()
            if (r12 != r4) goto L4e
            r5 = r11
            r4 = r12
            r6 = 0
        L39:
            int r7 = r4 + (-1)
            if (r4 == 0) goto L4f
            int r4 = r5 + 1
            char r5 = r9[r5]
            int r8 = r6 + 1
            char r6 = r3.charAt(r6)
            if (r5 == r6) goto L4a
            goto L4e
        L4a:
            r5 = r4
            r4 = r7
            r6 = r8
            goto L39
        L4e:
            r0 = 0
        L4f:
            if (r0 == 0) goto L52
            return r3
        L52:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r9, r11, r12)
            r10[r1] = r0
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.a.c(char[], java.lang.String[], int, int):java.lang.String");
    }

    public void a() {
        this.f7035e++;
    }

    public final void b() {
        int i2;
        int i3;
        boolean z;
        if (this.f7039i || (i2 = this.f7035e) < this.f7034d) {
            return;
        }
        int i4 = this.f7037g;
        if (i4 != -1) {
            i3 = i2 - i4;
            i2 = i4;
        } else {
            i3 = 0;
        }
        try {
            long j2 = i2;
            long skip = this.b.skip(j2);
            this.b.mark(32768);
            int i5 = 0;
            while (true) {
                z = true;
                if (i5 > 1024) {
                    break;
                }
                int read = this.b.read(this.a, i5, this.a.length - i5);
                if (read == -1) {
                    this.f7039i = true;
                }
                if (read <= 0) {
                    break;
                }
                i5 += read;
            }
            this.b.reset();
            if (i5 > 0) {
                if (skip != j2) {
                    z = false;
                }
                j.b.n(z);
                this.f7033c = i5;
                this.f7036f += i2;
                this.f7035e = i3;
                if (this.f7037g != -1) {
                    this.f7037g = 0;
                }
                int i6 = 24576;
                if (this.f7033c <= 24576) {
                    i6 = this.f7033c;
                }
                this.f7034d = i6;
            }
        } catch (IOException e2) {
            throw new k.a.b(e2);
        }
    }

    public char d() {
        b();
        char c2 = m() ? (char) 65535 : this.a[this.f7035e];
        this.f7035e++;
        return c2;
    }

    public String e() {
        int i2 = this.f7035e;
        int i3 = this.f7033c;
        char[] cArr = this.a;
        int i4 = i2;
        while (i4 < i3) {
            char c2 = cArr[i4];
            if (c2 == 0 || c2 == '&' || c2 == '<') {
                break;
            }
            i4++;
        }
        this.f7035e = i4;
        return i4 > i2 ? c(this.a, this.f7038h, i2, i4 - i2) : "";
    }

    public String f() {
        char c2;
        b();
        int i2 = this.f7035e;
        while (true) {
            int i3 = this.f7035e;
            if (i3 >= this.f7033c || (((c2 = this.a[i3]) < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2)))) {
                break;
            }
            this.f7035e++;
        }
        return c(this.a, this.f7038h, i2, this.f7035e - i2);
    }

    public String g(char c2) {
        int i2;
        b();
        int i3 = this.f7035e;
        while (true) {
            if (i3 >= this.f7033c) {
                i2 = -1;
                break;
            } else if (c2 == this.a[i3]) {
                i2 = i3 - this.f7035e;
                break;
            } else {
                i3++;
            }
        }
        if (i2 != -1) {
            String c3 = c(this.a, this.f7038h, this.f7035e, i2);
            this.f7035e += i2;
            return c3;
        }
        return j();
    }

    public String h(char... cArr) {
        b();
        int i2 = this.f7035e;
        int i3 = this.f7033c;
        char[] cArr2 = this.a;
        int i4 = i2;
        loop0: while (i4 < i3) {
            for (char c2 : cArr) {
                if (cArr2[i4] == c2) {
                    break loop0;
                }
            }
            i4++;
        }
        this.f7035e = i4;
        return i4 > i2 ? c(this.a, this.f7038h, i2, i4 - i2) : "";
    }

    public String i(char... cArr) {
        b();
        int i2 = this.f7035e;
        int i3 = this.f7033c;
        char[] cArr2 = this.a;
        int i4 = i2;
        while (i4 < i3 && Arrays.binarySearch(cArr, cArr2[i4]) < 0) {
            i4++;
        }
        this.f7035e = i4;
        return i4 > i2 ? c(this.a, this.f7038h, i2, i4 - i2) : "";
    }

    public String j() {
        b();
        char[] cArr = this.a;
        String[] strArr = this.f7038h;
        int i2 = this.f7035e;
        String c2 = c(cArr, strArr, i2, this.f7033c - i2);
        this.f7035e = this.f7033c;
        return c2;
    }

    public char k() {
        b();
        if (m()) {
            return (char) 65535;
        }
        return this.a[this.f7035e];
    }

    public boolean l() {
        b();
        return this.f7035e >= this.f7033c;
    }

    public final boolean m() {
        return this.f7035e >= this.f7033c;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean n(java.lang.String r8) {
        /*
            r7 = this;
            r7.b()
            r7.b()
            int r0 = r8.length()
            int r1 = r7.f7033c
            int r2 = r7.f7035e
            int r1 = r1 - r2
            r2 = 0
            r3 = 1
            if (r0 <= r1) goto L14
            goto L24
        L14:
            r1 = 0
        L15:
            if (r1 >= r0) goto L29
            char r4 = r8.charAt(r1)
            char[] r5 = r7.a
            int r6 = r7.f7035e
            int r6 = r6 + r1
            char r5 = r5[r6]
            if (r4 == r5) goto L26
        L24:
            r0 = 0
            goto L2a
        L26:
            int r1 = r1 + 1
            goto L15
        L29:
            r0 = 1
        L2a:
            if (r0 == 0) goto L36
            int r0 = r7.f7035e
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f7035e = r8
            return r3
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.a.n(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean o(java.lang.String r8) {
        /*
            r7 = this;
            r7.b()
            int r0 = r8.length()
            int r1 = r7.f7033c
            int r2 = r7.f7035e
            int r1 = r1 - r2
            r2 = 0
            r3 = 1
            if (r0 <= r1) goto L11
            goto L29
        L11:
            r1 = 0
        L12:
            if (r1 >= r0) goto L2e
            char r4 = r8.charAt(r1)
            char r4 = java.lang.Character.toUpperCase(r4)
            char[] r5 = r7.a
            int r6 = r7.f7035e
            int r6 = r6 + r1
            char r5 = r5[r6]
            char r5 = java.lang.Character.toUpperCase(r5)
            if (r4 == r5) goto L2b
        L29:
            r0 = 0
            goto L2f
        L2b:
            int r1 = r1 + 1
            goto L12
        L2e:
            r0 = 1
        L2f:
            if (r0 == 0) goto L3b
            int r0 = r7.f7035e
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f7035e = r8
            return r3
        L3b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.a.o(java.lang.String):boolean");
    }

    public boolean p(char c2) {
        return !l() && this.a[this.f7035e] == c2;
    }

    public boolean q(char... cArr) {
        if (l()) {
            return false;
        }
        b();
        char c2 = this.a[this.f7035e];
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }

    public boolean r() {
        if (l()) {
            return false;
        }
        char c2 = this.a[this.f7035e];
        return (c2 >= 'A' && c2 <= 'Z') || (c2 >= 'a' && c2 <= 'z') || Character.isLetter(c2);
    }

    public int s(CharSequence charSequence) {
        b();
        char charAt = charSequence.charAt(0);
        int i2 = this.f7035e;
        while (i2 < this.f7033c) {
            if (charAt != this.a[i2]) {
                do {
                    i2++;
                    if (i2 >= this.f7033c) {
                        break;
                    }
                } while (charAt != this.a[i2]);
            }
            int i3 = i2 + 1;
            int length = (charSequence.length() + i3) - 1;
            int i4 = this.f7033c;
            if (i2 < i4 && length <= i4) {
                int i5 = i3;
                for (int i6 = 1; i5 < length && charSequence.charAt(i6) == this.a[i5]; i6++) {
                    i5++;
                }
                if (i5 == length) {
                    return i2 - this.f7035e;
                }
            }
            i2 = i3;
        }
        return -1;
    }

    public int t() {
        return this.f7036f + this.f7035e;
    }

    public String toString() {
        if (this.f7033c - this.f7035e < 0) {
            return "";
        }
        char[] cArr = this.a;
        int i2 = this.f7035e;
        return new String(cArr, i2, this.f7033c - i2);
    }

    public void u() {
        int i2 = this.f7037g;
        if (i2 != -1) {
            this.f7035e = i2;
            this.f7037g = -1;
            return;
        }
        throw new k.a.b(new IOException("Mark invalid"));
    }

    public void v() {
        int i2 = this.f7035e;
        if (i2 >= 1) {
            this.f7035e = i2 - 1;
            return;
        }
        throw new k.a.b(new IOException("No buffer left to unconsume"));
    }
}
