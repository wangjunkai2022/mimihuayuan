package k.a.e;

import k.a.e.f;

/* compiled from: Comment.java */
/* loaded from: classes.dex */
public class d extends k {
    public d(String str) {
        this.f7032c = str;
    }

    @Override // k.a.e.l, java.lang.Object
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

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0018, code lost:
        if (r5.f7010f != false) goto L_0x001a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001a, code lost:
        o(r3, r4, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0014, code lost:
        if (((k.a.e.h) r0).f7018c.f7072d != false) goto L_0x001a;
     */
    @Override // k.a.e.l
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void s(java.lang.Appendable r3, int r4, k.a.e.f.a r5) throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = r5.f7009e
            if (r0 == 0) goto L_0x001d
            int r0 = r2.b
            if (r0 != 0) goto L_0x0016
            k.a.e.l r0 = r2.a
            boolean r1 = r0 instanceof k.a.e.h
            if (r1 == 0) goto L_0x0016
            k.a.e.h r0 = (k.a.e.h) r0
            k.a.f.h r0 = r0.f7018c
            boolean r0 = r0.f7072d
            if (r0 != 0) goto L_0x001a
        L_0x0016:
            boolean r0 = r5.f7010f
            if (r0 == 0) goto L_0x001d
        L_0x001a:
            r2.o(r3, r4, r5)
        L_0x001d:
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

    @Override // k.a.e.l, java.lang.Object
    public String toString() {
        return r();
    }
}
