package k.a.e;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import k.a.e.f;
import k.a.g.c;
import k.a.g.d;
import k.a.g.f;

/* compiled from: Element.java */
/* loaded from: classes.dex */
public class h extends l {

    /* renamed from: g  reason: collision with root package name */
    public static final List<l> f7016g = Collections.emptyList();

    /* renamed from: h  reason: collision with root package name */
    public static final String f7017h = "/baseUri";

    /* renamed from: c  reason: collision with root package name */
    public k.a.f.h f7018c;

    /* renamed from: d  reason: collision with root package name */
    public WeakReference<List<h>> f7019d;

    /* renamed from: e  reason: collision with root package name */
    public List<l> f7020e = f7016g;

    /* renamed from: f  reason: collision with root package name */
    public b f7021f;

    /* compiled from: Element.java */
    /* loaded from: classes.dex */
    public class a implements f {
        public final /* synthetic */ StringBuilder a;

        public a(h hVar, StringBuilder sb) {
            this.a = sb;
        }

        @Override // k.a.g.f
        public void a(l lVar, int i2) {
            if (lVar instanceof n) {
                h.A(this.a, (n) lVar);
            } else if (lVar instanceof h) {
                h hVar = (h) lVar;
                if (this.a.length() > 0) {
                    k.a.f.h hVar2 = hVar.f7018c;
                    if ((hVar2.f7071c || hVar2.a.equals("br")) && !n.C(this.a)) {
                        this.a.append(' ');
                    }
                }
            }
        }

        @Override // k.a.g.f
        public void b(l lVar, int i2) {
            if ((lVar instanceof h) && ((h) lVar).f7018c.f7071c && (lVar.p() instanceof n) && !n.C(this.a)) {
                this.a.append(' ');
            }
        }
    }

    /* compiled from: Element.java */
    /* loaded from: classes.dex */
    public static final class b extends k.a.c.a<l> {
        public final h a;

        public b(h hVar, int i2) {
            super(i2);
            this.a = hVar;
        }

        @Override // k.a.c.a
        public void b() {
            this.a.f7019d = null;
        }
    }

    static {
        Pattern.compile("\\s+");
    }

    public h(k.a.f.h hVar, String str, b bVar) {
        j.b.s(hVar);
        this.f7021f = bVar;
        this.f7018c = hVar;
        if (str != null) {
            j.b.s(str);
            d().n(f7017h, str);
        }
    }

    public static void A(StringBuilder sb, n nVar) {
        String z = nVar.z();
        if (M(nVar.a) || (nVar instanceof c)) {
            sb.append(z);
        } else {
            k.a.d.a.a(sb, z, n.C(sb));
        }
    }

    public static <E extends h> int K(h hVar, List<E> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2) == hVar) {
                return i2;
            }
        }
        return 0;
    }

    public static boolean M(l lVar) {
        if (lVar instanceof h) {
            h hVar = (h) lVar;
            int i2 = 0;
            while (!hVar.f7018c.f7075g) {
                hVar = (h) hVar.a;
                i2++;
                if (i2 < 6) {
                    if (hVar == null) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public h B(String str, String str2) {
        super.c(str, str2);
        return this;
    }

    public final List<h> C() {
        List<h> list;
        WeakReference<List<h>> weakReference = this.f7019d;
        if (!(weakReference == null || (list = weakReference.get()) == null)) {
            return list;
        }
        int size = this.f7020e.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.f7020e.get(i2);
            if (lVar instanceof h) {
                arrayList.add((h) lVar);
            }
        }
        this.f7019d = new WeakReference<>(arrayList);
        return arrayList;
    }

    public c D() {
        return new c(C());
    }

    /* renamed from: E */
    public h h() {
        return (h) super.clone();
    }

    public String F() {
        StringBuilder b2 = k.a.d.a.b();
        for (l lVar : this.f7020e) {
            if (lVar instanceof e) {
                b2.append(((e) lVar).z());
            } else if (lVar instanceof d) {
                b2.append(((d) lVar).z());
            } else if (lVar instanceof h) {
                b2.append(((h) lVar).F());
            } else if (lVar instanceof c) {
                b2.append(((c) lVar).z());
            }
        }
        return k.a.d.a.j(b2);
    }

    public int G() {
        l lVar = this.a;
        if (((h) lVar) == null) {
            return 0;
        }
        return K(this, ((h) lVar).C());
    }

    public h H(String str) {
        j.b.q(str);
        c j2 = j.b.j(new d.p(str), this);
        if (j2.size() > 0) {
            return j2.get(0);
        }
        return null;
    }

    public c I(String str) {
        j.b.q(str);
        return j.b.j(new d.k(str), this);
    }

    public c J(String str) {
        j.b.q(str);
        return j.b.j(new d.j0(j.b.p(str)), this);
    }

    public String L() {
        StringBuilder b2 = k.a.d.a.b();
        for (l lVar : this.f7020e) {
            if (lVar instanceof n) {
                A(b2, (n) lVar);
            } else if ((lVar instanceof h) && ((h) lVar).f7018c.a.equals("br") && !n.C(b2)) {
                b2.append(" ");
            }
        }
        return k.a.d.a.j(b2).trim();
    }

    public h N() {
        List<h> C;
        int K;
        l lVar = this.a;
        if (lVar != null && (K = K(this, (C = ((h) lVar).C()))) > 0) {
            return C.get(K - 1);
        }
        return null;
    }

    public String O() {
        StringBuilder b2 = k.a.d.a.b();
        j.b.D(new a(this, b2), this);
        return k.a.d.a.j(b2).trim();
    }

    @Override // k.a.e.l
    public b d() {
        if (!n()) {
            this.f7021f = new b();
        }
        return this.f7021f;
    }

    @Override // k.a.e.l
    public String e() {
        String str = f7017h;
        for (h hVar = this; hVar != null; hVar = (h) hVar.a) {
            if (hVar.n() && hVar.f7021f.i(str)) {
                return hVar.f7021f.g(str);
            }
        }
        return "";
    }

    @Override // k.a.e.l
    public int f() {
        return this.f7020e.size();
    }

    @Override // k.a.e.l
    public l i(l lVar) {
        h hVar = (h) super.i(lVar);
        b bVar = this.f7021f;
        hVar.f7021f = bVar != null ? bVar.clone() : null;
        b bVar2 = new b(hVar, this.f7020e.size());
        hVar.f7020e = bVar2;
        bVar2.addAll(this.f7020e);
        String e2 = e();
        j.b.s(e2);
        hVar.j(e2);
        return hVar;
    }

    @Override // k.a.e.l
    public void j(String str) {
        d().n(f7017h, str);
    }

    @Override // k.a.e.l
    public l k() {
        this.f7020e.clear();
        return this;
    }

    @Override // k.a.e.l
    public List<l> l() {
        if (this.f7020e == f7016g) {
            this.f7020e = new b(this, 4);
        }
        return this.f7020e;
    }

    @Override // k.a.e.l
    public boolean n() {
        return this.f7021f != null;
    }

    @Override // k.a.e.l
    public String q() {
        return this.f7018c.a;
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x005a  */
    @Override // k.a.e.l
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void s(java.lang.Appendable r6, int r7, k.a.e.f.a r8) throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = r8.f7009e
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x006e
            k.a.f.h r0 = r5.f7018c
            boolean r0 = r0.f7072d
            if (r0 != 0) goto L_0x001f
            k.a.e.l r0 = r5.a
            k.a.e.h r0 = (k.a.e.h) r0
            if (r0 == 0) goto L_0x0018
            k.a.f.h r0 = r0.f7018c
            boolean r0 = r0.f7072d
            if (r0 != 0) goto L_0x001f
        L_0x0018:
            boolean r0 = r8.f7010f
            if (r0 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r0 = 0
            goto L_0x0020
        L_0x001f:
            r0 = 1
        L_0x0020:
            if (r0 == 0) goto L_0x006e
            k.a.f.h r0 = r5.f7018c
            boolean r3 = r0.f7071c
            r3 = r3 ^ r2
            if (r3 == 0) goto L_0x0057
            boolean r0 = r0.f7073e
            if (r0 != 0) goto L_0x0057
            k.a.e.l r0 = r5.a
            r3 = r0
            k.a.e.h r3 = (k.a.e.h) r3
            k.a.f.h r3 = r3.f7018c
            boolean r3 = r3.f7071c
            if (r3 == 0) goto L_0x0057
            r3 = 0
            if (r0 != 0) goto L_0x003c
            goto L_0x004f
        L_0x003c:
            int r4 = r5.b
            if (r4 <= 0) goto L_0x004f
            java.util.List r0 = r0.l()
            int r3 = r5.b
            int r3 = r3 + -1
            java.lang.Object r0 = r0.get(r3)
            r3 = r0
            k.a.e.l r3 = (k.a.e.l) r3
        L_0x004f:
            if (r3 == 0) goto L_0x0057
            boolean r0 = r8.f7010f
            if (r0 != 0) goto L_0x0057
            r0 = 1
            goto L_0x0058
        L_0x0057:
            r0 = 0
        L_0x0058:
            if (r0 != 0) goto L_0x006e
            boolean r0 = r6 instanceof java.lang.StringBuilder
            if (r0 == 0) goto L_0x006b
            r0 = r6
            java.lang.StringBuilder r0 = (java.lang.StringBuilder) r0
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x006e
            r5.o(r6, r7, r8)
            goto L_0x006e
        L_0x006b:
            r5.o(r6, r7, r8)
        L_0x006e:
            r7 = 60
            java.lang.Appendable r7 = r6.append(r7)
            k.a.f.h r0 = r5.f7018c
            java.lang.String r0 = r0.a
            r7.append(r0)
            k.a.e.b r7 = r5.f7021f
            if (r7 == 0) goto L_0x0082
            r7.j(r6, r8)
        L_0x0082:
            java.util.List<k.a.e.l> r7 = r5.f7020e
            boolean r7 = r7.isEmpty()
            r0 = 62
            if (r7 == 0) goto L_0x00af
            k.a.f.h r7 = r5.f7018c
            boolean r3 = r7.f7073e
            if (r3 != 0) goto L_0x0096
            boolean r7 = r7.f7074f
            if (r7 == 0) goto L_0x0097
        L_0x0096:
            r1 = 1
        L_0x0097:
            if (r1 == 0) goto L_0x00af
            k.a.e.f$a$a r7 = r8.f7012h
            k.a.e.f$a$a r8 = k.a.e.f.a.EnumC0109a.html
            if (r7 != r8) goto L_0x00a9
            k.a.f.h r7 = r5.f7018c
            boolean r7 = r7.f7073e
            if (r7 == 0) goto L_0x00a9
            r6.append(r0)
            goto L_0x00b2
        L_0x00a9:
            java.lang.String r7 = " />"
            r6.append(r7)
            goto L_0x00b2
        L_0x00af:
            r6.append(r0)
        L_0x00b2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.e.h.s(java.lang.Appendable, int, k.a.e.f$a):void");
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) throws IOException {
        if (this.f7020e.isEmpty()) {
            k.a.f.h hVar = this.f7018c;
            if (hVar.f7073e || hVar.f7074f) {
                return;
            }
        }
        if (aVar.f7009e && !this.f7020e.isEmpty() && (this.f7018c.f7072d || (aVar.f7010f && (this.f7020e.size() > 1 || (this.f7020e.size() == 1 && !(this.f7020e.get(0) instanceof n)))))) {
            o(appendable, i2, aVar);
        }
        appendable.append("</").append(this.f7018c.a).append('>');
    }

    @Override // k.a.e.l
    public l u() {
        return (h) this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [k.a.e.l] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // k.a.e.l
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public k.a.e.l y() {
        /*
            r2 = this;
            r0 = r2
        L_0x0001:
            k.a.e.l r1 = r0.a
            if (r1 == 0) goto L_0x0007
            r0 = r1
            goto L_0x0001
        L_0x0007:
            k.a.e.h r0 = (k.a.e.h) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.e.h.y():k.a.e.l");
    }

    public h z(l lVar) {
        j.b.s(lVar);
        j.b.s(this);
        l lVar2 = lVar.a;
        if (lVar2 != null) {
            lVar2.x(lVar);
        }
        lVar.a = this;
        l();
        this.f7020e.add(lVar);
        lVar.b = this.f7020e.size() - 1;
        return this;
    }
}
