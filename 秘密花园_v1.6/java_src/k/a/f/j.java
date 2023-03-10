package k.a.f;
/* compiled from: TokenQueue.java */
/* loaded from: classes2.dex */
public class j {
    public String a;
    public int b = 0;

    public j(String str) {
        j.b.s(str);
        this.a = str;
    }

    public static String m(String str) {
        StringBuilder b = k.a.d.a.b();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i2 = 0;
        char c2 = 0;
        while (i2 < length) {
            char c3 = charArray[i2];
            if (c3 != '\\') {
                b.append(c3);
            } else if (c2 != 0 && c2 == '\\') {
                b.append(c3);
            }
            i2++;
            c2 = c3;
        }
        return k.a.d.a.j(b);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0048 A[EDGE_INSN: B:41:0x0048->B:34:0x0048 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(char r10, char r11) {
        /*
            r9 = this;
            r0 = 0
            r1 = -1
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = -1
        L7:
            boolean r7 = r9.g()
            if (r7 == 0) goto Le
            goto L48
        Le:
            char r7 = r9.c()
            if (r0 == 0) goto L18
            r8 = 92
            if (r0 == r8) goto L3f
        L18:
            r8 = 39
            if (r7 != r8) goto L23
            if (r7 == r10) goto L23
            if (r2 != 0) goto L23
            r3 = r3 ^ 1
            goto L2d
        L23:
            r8 = 34
            if (r7 != r8) goto L2d
            if (r7 == r10) goto L2d
            if (r3 != 0) goto L2d
            r2 = r2 ^ 1
        L2d:
            if (r3 != 0) goto L46
            if (r2 == 0) goto L32
            goto L46
        L32:
            if (r7 != r10) goto L3b
            int r4 = r4 + 1
            if (r5 != r1) goto L3f
            int r5 = r9.b
            goto L3f
        L3b:
            if (r7 != r11) goto L3f
            int r4 = r4 + (-1)
        L3f:
            if (r4 <= 0) goto L45
            if (r0 == 0) goto L45
            int r6 = r9.b
        L45:
            r0 = r7
        L46:
            if (r4 > 0) goto L7
        L48:
            if (r6 < 0) goto L51
            java.lang.String r10 = r9.a
            java.lang.String r10 = r10.substring(r5, r6)
            goto L53
        L51:
            java.lang.String r10 = ""
        L53:
            if (r4 > 0) goto L56
            return r10
        L56:
            java.lang.String r11 = "Did not find balanced marker at '"
            java.lang.String r0 = "'"
            java.lang.String r10 = f.b.a.a.a.g(r11, r10, r0)
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            r11.<init>(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.j.a(char, char):java.lang.String");
    }

    public String b(String str) {
        String l2;
        int indexOf = this.a.indexOf(str, this.b);
        if (indexOf != -1) {
            l2 = this.a.substring(this.b, indexOf);
            this.b = l2.length() + this.b;
        } else {
            l2 = l();
        }
        h(str);
        return l2;
    }

    public char c() {
        String str = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        return str.charAt(i2);
    }

    public void d(String str) {
        if (i(str)) {
            int length = str.length();
            int length2 = this.a.length();
            int i2 = this.b;
            if (length <= length2 - i2) {
                this.b = i2 + length;
                return;
            }
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        throw new IllegalStateException("Queue did not match expected sequence");
    }

    public String e() {
        int i2 = this.b;
        while (!g()) {
            if (!k()) {
                char[] cArr = {'-', '_'};
                boolean z = false;
                if (!g()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= 2) {
                            break;
                        }
                        if (this.a.charAt(this.b) == cArr[i3]) {
                            z = true;
                            break;
                        }
                        i3++;
                    }
                }
                if (!z) {
                    break;
                }
            }
            this.b++;
        }
        return this.a.substring(i2, this.b);
    }

    public boolean f() {
        boolean z = false;
        while (true) {
            if (!(!g() && k.a.d.a.g(this.a.charAt(this.b)))) {
                return z;
            }
            this.b++;
            z = true;
        }
    }

    public boolean g() {
        return this.a.length() - this.b == 0;
    }

    public boolean h(String str) {
        if (i(str)) {
            this.b = str.length() + this.b;
            return true;
        }
        return false;
    }

    public boolean i(String str) {
        return this.a.regionMatches(true, this.b, str, 0, str.length());
    }

    public boolean j(String... strArr) {
        for (String str : strArr) {
            if (i(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean k() {
        return !g() && Character.isLetterOrDigit(this.a.charAt(this.b));
    }

    public String l() {
        String str = this.a;
        String substring = str.substring(this.b, str.length());
        this.b = this.a.length();
        return substring;
    }

    public String toString() {
        return this.a.substring(this.b);
    }
}
