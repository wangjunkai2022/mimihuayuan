package k.a.e;

import k.a.e.f;
/* compiled from: Comment.java */
/* loaded from: classes2.dex */
public class d extends k {
    public d(String str) {
        this.f7116c = str;
    }

    @Override // k.a.e.l
    public Object clone() throws CloneNotSupportedException {
        return (d) super.clone();
    }

    @Override // k.a.e.l
    public l h() {
        return (d) super.clone();
    }

    @Override // k.a.e.l
    public String q() {
        return "#comment";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
        if (r5.f7094f != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
        o(r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
        if (((k.a.e.h) r0).f7102c.f7156d != false) goto L9;
     */
    @Override // k.a.e.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(java.lang.Appendable r3, int r4, k.a.e.f.a r5) throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = r5.f7093e
            if (r0 == 0) goto L1d
            int r0 = r2.b
            if (r0 != 0) goto L16
            k.a.e.l r0 = r2.a
            boolean r1 = r0 instanceof k.a.e.h
            if (r1 == 0) goto L16
            k.a.e.h r0 = (k.a.e.h) r0
            k.a.f.h r0 = r0.f7102c
            boolean r0 = r0.f7156d
            if (r0 != 0) goto L1a
        L16:
            boolean r0 = r5.f7094f
            if (r0 == 0) goto L1d
        L1a:
            r2.o(r3, r4, r5)
        L1d:
            java.lang.String r4 = "<!--"
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r4 = r2.z()
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r4 = "-->"
            r3.append(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.e.d.s(java.lang.Appendable, int, k.a.e.f$a):void");
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
    }

    @Override // k.a.e.l
    public String toString() {
        return r();
    }
}
