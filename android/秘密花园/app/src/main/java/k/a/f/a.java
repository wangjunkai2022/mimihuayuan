package k.a.f;

import j.b;
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
        b.s(reader);
        b.n(reader.markSupported());
        this.b = reader;
        this.a = new char[i2 > 32768 ? 32768 : i2];
        b();
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0051 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0052  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(char[] r9, java.lang.String[] r10, int r11, int r12) {
        /*
            r0 = 12
            if (r12 <= r0) goto L_0x000a
            java.lang.String r10 = new java.lang.String
            r10.<init>(r9, r11, r12)
            return r10
        L_0x000a:
            r0 = 1
            if (r12 >= r0) goto L_0x0010
            java.lang.String r9 = ""
            return r9
        L_0x0010:
            int r1 = r12 * 31
            r2 = 0
            r4 = r11
            r3 = 0
        L_0x0015:
            if (r3 >= r12) goto L_0x0022
            int r1 = r1 * 31
            int r5 = r4 + 1
            char r4 = r9[r4]
            int r1 = r1 + r4
            int r3 = r3 + 1
            r4 = r5
            goto L_0x0015
        L_0x0022:
            r1 = r1 & 511(0x1ff, float:7.16E-43)
            r3 = r10[r1]
            if (r3 != 0) goto L_0x0030
            java.lang.String r0 = new java.lang.String
            r0.<init>(r9, r11, r12)
            r10[r1] = r0
            goto L_0x0059
        L_0x0030:
            int r4 = r3.length()
            if (r12 != r4) goto L_0x004e
            r5 = r11
            r4 = r12
            r6 = 0
        L_0x0039:
            int r7 = r4 + -1
            if (r4 == 0) goto L_0x004f
            int r4 = r5 + 1
            char r5 = r9[r5]
            int r8 = r6 + 1
            char r6 = r3.charAt(r6)
            if (r5 == r6) goto L_0x004a
            goto L_0x004e
        L_0x004a:
            r5 = r4
            r4 = r7
            r6 = r8
            goto L_0x0039
        L_0x004e:
            r0 = 0
        L_0x004f:
            if (r0 == 0) goto L_0x0052
            return r3
        L_0x0052:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r9, r11, r12)
            r10[r1] = r0
        L_0x0059:
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
        if (!this.f7039i && (i2 = this.f7035e) >= this.f7034d) {
            int i4 = this.f7037g;
            if (i4 != -1) {
                i3 = i2 - i4;
                i2 = i4;
            } else {
                i3 = 0;
            }
            try {
                long j2 = (long) i2;
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
                    b.n(z);
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
    }

    public char d() {
        b();
        char c2 = m() ? 65535 : this.a[this.f7035e];
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
        if (i2 == -1) {
            return j();
        }
        String c3 = c(this.a, this.f7038h, this.f7035e, i2);
        this.f7035e += i2;
        return c3;
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
            return 65535;
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

    /* JADX WARNING: Removed duplicated region for block: B:12:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0036 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
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
            if (r0 <= r1) goto L_0x0014
            goto L_0x0024
        L_0x0014:
            r1 = 0
        L_0x0015:
            if (r1 >= r0) goto L_0x0029
            char r4 = r8.charAt(r1)
            char[] r5 = r7.a
            int r6 = r7.f7035e
            int r6 = r6 + r1
            char r5 = r5[r6]
            if (r4 == r5) goto L_0x0026
        L_0x0024:
            r0 = 0
            goto L_0x002a
        L_0x0026:
            int r1 = r1 + 1
            goto L_0x0015
        L_0x0029:
            r0 = 1
        L_0x002a:
            if (r0 == 0) goto L_0x0036
            int r0 = r7.f7035e
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f7035e = r8
            return r3
        L_0x0036:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.a.n(java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003b A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
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
            if (r0 <= r1) goto L_0x0011
            goto L_0x0029
        L_0x0011:
            r1 = 0
        L_0x0012:
            if (r1 >= r0) goto L_0x002e
            char r4 = r8.charAt(r1)
            char r4 = java.lang.Character.toUpperCase(r4)
            char[] r5 = r7.a
            int r6 = r7.f7035e
            int r6 = r6 + r1
            char r5 = r5[r6]
            char r5 = java.lang.Character.toUpperCase(r5)
            if (r4 == r5) goto L_0x002b
        L_0x0029:
            r0 = 0
            goto L_0x002f
        L_0x002b:
            int r1 = r1 + 1
            goto L_0x0012
        L_0x002e:
            r0 = 1
        L_0x002f:
            if (r0 == 0) goto L_0x003b
            int r0 = r7.f7035e
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f7035e = r8
            return r3
        L_0x003b:
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
        if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2))) {
            return false;
        }
        return true;
    }

    public int s(CharSequence charSequence) {
        b();
        char charAt = charSequence.charAt(0);
        int i2 = this.f7035e;
        while (i2 < this.f7033c) {
            int i3 = 1;
            if (charAt != this.a[i2]) {
                do {
                    i2++;
                    if (i2 >= this.f7033c) {
                        break;
                    }
                } while (charAt != this.a[i2]);
            }
            int i4 = i2 + 1;
            int length = (charSequence.length() + i4) - 1;
            int i5 = this.f7033c;
            if (i2 < i5 && length <= i5) {
                int i6 = i4;
                while (i6 < length && charSequence.charAt(i3) == this.a[i6]) {
                    i6++;
                    i3++;
                }
                if (i6 == length) {
                    return i2 - this.f7035e;
                }
            }
            i2 = i4;
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
