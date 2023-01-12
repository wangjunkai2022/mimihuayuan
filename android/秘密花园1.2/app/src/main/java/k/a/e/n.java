package k.a.e;

import k.a.e.f;

/* compiled from: TextNode.java */
/* loaded from: classes2.dex */
public class n extends k {
    public n(String str) {
        this.f7107c = str;
    }

    public static boolean C(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override // k.a.e.l
    /* renamed from: B */
    public n h() {
        return (n) super.clone();
    }

    @Override // k.a.e.l
    public String q() {
        return "#text";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (k.a.d.a.e(z()) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        if (k.a.d.a.e(z()) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
        o(r10, r11, r12);
     */
    @Override // k.a.e.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void s(java.lang.Appendable r10, int r11, k.a.e.f.a r12) throws java.io.IOException {
        /*
            r9 = this;
            boolean r0 = r12.f7084e
            if (r0 == 0) goto L66
            int r1 = r9.b
            if (r1 != 0) goto L20
            k.a.e.l r1 = r9.a
            boolean r2 = r1 instanceof k.a.e.h
            if (r2 == 0) goto L20
            k.a.e.h r1 = (k.a.e.h) r1
            k.a.f.h r1 = r1.f7093c
            boolean r1 = r1.f7147d
            if (r1 == 0) goto L20
            java.lang.String r1 = r9.z()
            boolean r1 = k.a.d.a.e(r1)
            if (r1 == 0) goto L63
        L20:
            boolean r1 = r12.f7085f
            if (r1 == 0) goto L66
            k.a.e.l r1 = r9.a
            if (r1 != 0) goto L2d
            java.util.List r1 = java.util.Collections.emptyList()
            goto L53
        L2d:
            java.util.List r1 = r1.l()
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            int r3 = r3 + (-1)
            r2.<init>(r3)
            java.util.Iterator r1 = r1.iterator()
        L40:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L52
            java.lang.Object r3 = r1.next()
            k.a.e.l r3 = (k.a.e.l) r3
            if (r3 == r9) goto L40
            r2.add(r3)
            goto L40
        L52:
            r1 = r2
        L53:
            int r1 = r1.size()
            if (r1 <= 0) goto L66
            java.lang.String r1 = r9.z()
            boolean r1 = k.a.d.a.e(r1)
            if (r1 != 0) goto L66
        L63:
            r9.o(r10, r11, r12)
        L66:
            r11 = 1
            r1 = 0
            if (r0 == 0) goto L74
            k.a.e.l r2 = r9.a
            boolean r2 = k.a.e.h.M(r2)
            if (r2 != 0) goto L74
            r7 = 1
            goto L75
        L74:
            r7 = 0
        L75:
            if (r0 == 0) goto L7f
            k.a.e.l r0 = r9.a
            boolean r0 = r0 instanceof k.a.e.f
            if (r0 == 0) goto L7f
            r8 = 1
            goto L80
        L7f:
            r8 = 0
        L80:
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

    @Override // k.a.e.l
    public String toString() {
        return r();
    }
}
