package k.a.e;

import k.a.e.f;

/* compiled from: TextNode.java */
/* loaded from: classes.dex */
public class n extends k {
    public n(String str) {
        this.f7032c = str;
    }

    public static boolean C(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    /* renamed from: B */
    public n h() {
        return (n) super.clone();
    }

    @Override // k.a.e.l
    public String q() {
        return "#text";
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (k.a.d.a.e(z()) == false) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0061, code lost:
        if (k.a.d.a.e(z()) == false) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0063, code lost:
        o(r10, r11, r12);
     */
    @Override // k.a.e.l
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void s(java.lang.Appendable r10, int r11, k.a.e.f.a r12) throws java.io.IOException {
        /*
            r9 = this;
            boolean r0 = r12.f7009e
            if (r0 == 0) goto L_0x0066
            int r1 = r9.b
            if (r1 != 0) goto L_0x0020
            k.a.e.l r1 = r9.a
            boolean r2 = r1 instanceof k.a.e.h
            if (r2 == 0) goto L_0x0020
            k.a.e.h r1 = (k.a.e.h) r1
            k.a.f.h r1 = r1.f7018c
            boolean r1 = r1.f7072d
            if (r1 == 0) goto L_0x0020
            java.lang.String r1 = r9.z()
            boolean r1 = k.a.d.a.e(r1)
            if (r1 == 0) goto L_0x0063
        L_0x0020:
            boolean r1 = r12.f7010f
            if (r1 == 0) goto L_0x0066
            k.a.e.l r1 = r9.a
            if (r1 != 0) goto L_0x002d
            java.util.List r1 = java.util.Collections.emptyList()
            goto L_0x0053
        L_0x002d:
            java.util.List r1 = r1.l()
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            int r3 = r3 + -1
            r2.<init>(r3)
            java.util.Iterator r1 = r1.iterator()
        L_0x0040:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L_0x0052
            java.lang.Object r3 = r1.next()
            k.a.e.l r3 = (k.a.e.l) r3
            if (r3 == r9) goto L_0x0040
            r2.add(r3)
            goto L_0x0040
        L_0x0052:
            r1 = r2
        L_0x0053:
            int r1 = r1.size()
            if (r1 <= 0) goto L_0x0066
            java.lang.String r1 = r9.z()
            boolean r1 = k.a.d.a.e(r1)
            if (r1 != 0) goto L_0x0066
        L_0x0063:
            r9.o(r10, r11, r12)
        L_0x0066:
            r11 = 1
            r1 = 0
            if (r0 == 0) goto L_0x0074
            k.a.e.l r2 = r9.a
            boolean r2 = k.a.e.h.M(r2)
            if (r2 != 0) goto L_0x0074
            r7 = 1
            goto L_0x0075
        L_0x0074:
            r7 = 0
        L_0x0075:
            if (r0 == 0) goto L_0x007f
            k.a.e.l r0 = r9.a
            boolean r0 = r0 instanceof k.a.e.f
            if (r0 == 0) goto L_0x007f
            r8 = 1
            goto L_0x0080
        L_0x007f:
            r8 = 0
        L_0x0080:
            java.lang.String r4 = r9.z()
            r6 = 0
            r3 = r10
            r5 = r12
            k.a.e.i.c(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.e.n.s(java.lang.Appendable, int, k.a.e.f$a):void");
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
    }

    @Override // k.a.e.l, java.lang.Object
    public String toString() {
        return r();
    }
}
