package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import androidx.navigation.NavInflater;
import java.util.ArrayList;
import k.a.e.f;
import k.a.f.i;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: HtmlTreeBuilderState.java */
/* loaded from: classes.dex */
public abstract class c {
    public static final c a = new k("Initial", 0);
    public static final c b = new c("BeforeHtml", 1) { // from class: k.a.f.c.p
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            } else {
                if (iVar.f()) {
                    i.h hVar = (i.h) iVar;
                    if (hVar.f7084c.equals("html")) {
                        bVar.t(hVar);
                        bVar.f7040k = c.f7043c;
                        return true;
                    }
                }
                if (iVar.e() && k.a.d.a.d(((i.g) iVar).f7084c, x.f7056e)) {
                    return d(iVar, bVar);
                }
                if (iVar.e()) {
                    bVar.k(this);
                    return false;
                }
                return d(iVar, bVar);
            }
        }

        public final boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            if (bVar != null) {
                k.a.e.h hVar = new k.a.e.h(k.a.f.h.a("html", bVar.f7124h), null, null);
                bVar.A(hVar);
                bVar.f7121e.add(hVar);
                c cVar = c.f7043c;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
            throw null;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final c f7043c = new c("BeforeHead", 2) { // from class: k.a.f.c.q
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("html")) {
                return c.f7047g.c(iVar, bVar);
            } else {
                if (iVar.f()) {
                    i.h hVar = (i.h) iVar;
                    if (hVar.f7084c.equals("head")) {
                        bVar.n = bVar.t(hVar);
                        bVar.f7040k = c.f7044d;
                        return true;
                    }
                }
                if (iVar.e() && k.a.d.a.d(((i.g) iVar).f7084c, x.f7056e)) {
                    bVar.e("head");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (iVar.e()) {
                    bVar.k(this);
                    return false;
                } else {
                    bVar.e("head");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                }
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final c f7044d = new c("InHead", 3) { // from class: k.a.f.c.r
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            }
            int ordinal = iVar.a.ordinal();
            if (ordinal == 0) {
                bVar.k(this);
                return false;
            }
            if (ordinal == 1) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("html")) {
                    return c.f7047g.c(iVar, bVar);
                }
                if (k.a.d.a.d(str, x.a)) {
                    k.a.e.h w2 = bVar.w(hVar);
                    if (str.equals("base") && w2.m("href") && !bVar.f7042m) {
                        String a2 = w2.a("href");
                        if (a2.length() != 0) {
                            bVar.f7122f = a2;
                            bVar.f7042m = true;
                            k.a.e.f fVar = bVar.f7120d;
                            if (fVar != null) {
                                j.b.s(a2);
                                fVar.d().n(k.a.e.h.f7017h, a2);
                            } else {
                                throw null;
                            }
                        }
                    }
                } else if (str.equals("meta")) {
                    bVar.w(hVar);
                } else if (str.equals(NotificationCompatJellybean.KEY_TITLE)) {
                    bVar.f7119c.f7097c = k.a.f.l.f7108c;
                    bVar.f7041l = bVar.f7040k;
                    bVar.f7040k = c.f7048h;
                    bVar.t(hVar);
                } else if (k.a.d.a.d(str, x.b)) {
                    c.b(hVar, bVar);
                } else if (str.equals("noscript")) {
                    bVar.t(hVar);
                    bVar.f7040k = c.f7045e;
                } else if (str.equals("script")) {
                    bVar.f7119c.f7097c = k.a.f.l.f7111f;
                    bVar.f7041l = bVar.f7040k;
                    bVar.f7040k = c.f7048h;
                    bVar.t(hVar);
                } else if (str.equals("head")) {
                    bVar.k(this);
                    return false;
                } else {
                    return d(iVar, bVar);
                }
            } else if (ordinal == 2) {
                String str2 = ((i.g) iVar).f7084c;
                if (str2.equals("head")) {
                    bVar.E();
                    bVar.f7040k = c.f7046f;
                } else if (k.a.d.a.d(str2, x.f7054c)) {
                    return d(iVar, bVar);
                } else {
                    bVar.k(this);
                    return false;
                }
            } else if (ordinal != 3) {
                return d(iVar, bVar);
            } else {
                bVar.v((i.d) iVar);
            }
            return true;
        }

        public final boolean d(k.a.f.i iVar, k.a.f.m mVar) {
            mVar.d("head");
            k.a.f.b bVar = (k.a.f.b) mVar;
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final c f7045e = new c("InHeadNoscript", 4) { // from class: k.a.f.c.s
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.c()) {
                bVar.k(this);
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("html")) {
                c cVar = c.f7047g;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("noscript")) {
                bVar.E();
                bVar.f7040k = c.f7044d;
            } else if (!c.a(iVar) && !iVar.b() && (!iVar.f() || !k.a.d.a.d(((i.h) iVar).f7084c, x.f7057f))) {
                if (iVar.e() && ((i.g) iVar).f7084c.equals("br")) {
                    bVar.k(this);
                    i.c cVar2 = new i.c();
                    cVar2.b = iVar.toString();
                    bVar.u(cVar2);
                    return true;
                } else if ((iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.K)) || iVar.e()) {
                    bVar.k(this);
                    return false;
                } else {
                    bVar.k(this);
                    i.c cVar3 = new i.c();
                    cVar3.b = iVar.toString();
                    bVar.u(cVar3);
                    return true;
                }
            } else {
                c cVar4 = c.f7044d;
                bVar.f7123g = iVar;
                return cVar4.c(iVar, bVar);
            }
            return true;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final c f7046f = new c("AfterHead", 5) { // from class: k.a.f.c.t
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c()) {
                bVar.k(this);
                return true;
            } else if (iVar.f()) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("html")) {
                    c cVar = c.f7047g;
                    bVar.f7123g = iVar;
                    return cVar.c(iVar, bVar);
                } else if (str.equals("body")) {
                    bVar.t(hVar);
                    bVar.t = false;
                    bVar.f7040k = c.f7047g;
                    return true;
                } else if (str.equals("frameset")) {
                    bVar.t(hVar);
                    bVar.f7040k = c.s;
                    return true;
                } else if (k.a.d.a.d(str, x.f7058g)) {
                    bVar.k(this);
                    k.a.e.h hVar2 = bVar.n;
                    bVar.f7121e.add(hVar2);
                    c cVar2 = c.f7044d;
                    bVar.f7123g = iVar;
                    cVar2.c(iVar, bVar);
                    bVar.J(hVar2);
                    return true;
                } else if (str.equals("head")) {
                    bVar.k(this);
                    return false;
                } else {
                    d(iVar, bVar);
                    return true;
                }
            } else if (iVar.e()) {
                if (k.a.d.a.d(((i.g) iVar).f7084c, x.f7055d)) {
                    d(iVar, bVar);
                    return true;
                }
                bVar.k(this);
                return false;
            } else {
                d(iVar, bVar);
                return true;
            }
        }

        public final boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            bVar.e("body");
            bVar.t = true;
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final c f7047g = new c("InBody", 6) { // from class: k.a.f.c.u
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:238:0x0458, code lost:
            if (r4.equals("isindex") != false) goto L526;
         */
        /* JADX WARN: Code restructure failed: missing block: B:250:0x0484, code lost:
            if (r4.equals("input") != false) goto L254;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
            if (r4.equals("h6") != false) goto L32;
         */
        /* JADX WARN: Removed duplicated region for block: B:166:0x02d4  */
        /* JADX WARN: Removed duplicated region for block: B:191:0x0349  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x0356  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x0388 A[LOOP:3: B:200:0x0386->B:201:0x0388, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:204:0x03a2  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x03a4  */
        /* JADX WARN: Removed duplicated region for block: B:578:0x02c8 A[SYNTHETIC] */
        @Override // k.a.f.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean c(k.a.f.i r33, k.a.f.b r34) {
            /*
                Method dump skipped, instructions count: 3228
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.u.c(k.a.f.i, k.a.f.b):boolean");
        }

        public boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            String str = ((i.g) iVar).f7084c;
            ArrayList<k.a.e.h> arrayList = bVar.f7121e;
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                k.a.e.h hVar = arrayList.get(size);
                if (hVar.f7018c.b.equals(str)) {
                    bVar.l(str);
                    if (!str.equals(bVar.a().f7018c.b)) {
                        bVar.k(this);
                    }
                    bVar.F(str);
                } else if (bVar.C(hVar)) {
                    bVar.k(this);
                    return false;
                } else {
                    size--;
                }
            }
            return true;
        }
    };

    /* renamed from: h  reason: collision with root package name */
    public static final c f7048h = new c("Text", 7) { // from class: k.a.f.c.v
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.a()) {
                bVar.u((i.c) iVar);
                return true;
            } else if (iVar.d()) {
                bVar.k(this);
                bVar.E();
                c cVar = bVar.f7041l;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e()) {
                bVar.E();
                bVar.f7040k = bVar.f7041l;
                return true;
            } else {
                return true;
            }
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final c f7049i = new c("InTable", 8) { // from class: k.a.f.c.w
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.a()) {
                bVar.r = new ArrayList();
                bVar.f7041l = bVar.f7040k;
                c cVar = c.f7050j;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.f()) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("caption")) {
                    bVar.j();
                    bVar.z();
                    bVar.t(hVar);
                    bVar.f7040k = c.f7051k;
                } else if (str.equals("colgroup")) {
                    bVar.j();
                    bVar.t(hVar);
                    bVar.f7040k = c.f7052l;
                } else if (str.equals("col")) {
                    bVar.e("colgroup");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (k.a.d.a.d(str, x.u)) {
                    bVar.j();
                    bVar.t(hVar);
                    bVar.f7040k = c.f7053m;
                } else if (k.a.d.a.d(str, x.v)) {
                    bVar.e("tbody");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (str.equals("table")) {
                    bVar.k(this);
                    if (bVar.d("table")) {
                        bVar.f7123g = iVar;
                        return bVar.f7040k.c(iVar, bVar);
                    }
                } else if (k.a.d.a.d(str, x.w)) {
                    c cVar2 = c.f7044d;
                    bVar.f7123g = iVar;
                    return cVar2.c(iVar, bVar);
                } else if (str.equals("input")) {
                    if (!hVar.f7091j.g("type").equalsIgnoreCase("hidden")) {
                        return d(iVar, bVar);
                    }
                    bVar.w(hVar);
                } else if (str.equals("form")) {
                    bVar.k(this);
                    if (bVar.o != null) {
                        return false;
                    }
                    bVar.x(hVar, false);
                } else {
                    return d(iVar, bVar);
                }
                return true;
            } else if (iVar.e()) {
                String str2 = ((i.g) iVar).f7084c;
                if (str2.equals("table")) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.F("table");
                    bVar.K();
                    return true;
                } else if (k.a.d.a.d(str2, x.B)) {
                    bVar.k(this);
                    return false;
                } else {
                    return d(iVar, bVar);
                }
            } else if (iVar.d()) {
                if (bVar.a().f7018c.b.equals("html")) {
                    bVar.k(this);
                }
                return true;
            } else {
                return d(iVar, bVar);
            }
        }

        public boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            bVar.k(this);
            if (k.a.d.a.d(bVar.a().f7018c.b, x.C)) {
                bVar.u = true;
                c cVar = c.f7047g;
                bVar.f7123g = iVar;
                boolean c2 = cVar.c(iVar, bVar);
                bVar.u = false;
                return c2;
            }
            c cVar2 = c.f7047g;
            bVar.f7123g = iVar;
            return cVar2.c(iVar, bVar);
        }
    };

    /* renamed from: j  reason: collision with root package name */
    public static final c f7050j = new c("InTableText", 9) { // from class: k.a.f.c.a
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.a == i.j.Character) {
                i.c cVar = (i.c) iVar;
                if (cVar.b.equals(c.x)) {
                    bVar.k(this);
                    return false;
                }
                bVar.r.add(cVar.b);
                return true;
            }
            if (bVar.r.size() > 0) {
                for (String str : bVar.r) {
                    if (!k.a.d.a.e(str)) {
                        bVar.k(this);
                        if (k.a.d.a.d(bVar.a().f7018c.b, x.C)) {
                            bVar.u = true;
                            i.c cVar2 = new i.c();
                            cVar2.b = str;
                            c cVar3 = c.f7047g;
                            bVar.f7123g = cVar2;
                            cVar3.c(cVar2, bVar);
                            bVar.u = false;
                        } else {
                            i.c cVar4 = new i.c();
                            cVar4.b = str;
                            c cVar5 = c.f7047g;
                            bVar.f7123g = cVar4;
                            cVar5.c(cVar4, bVar);
                        }
                    } else {
                        i.c cVar6 = new i.c();
                        cVar6.b = str;
                        bVar.u(cVar6);
                    }
                }
                bVar.r = new ArrayList();
            }
            c cVar7 = bVar.f7041l;
            bVar.f7040k = cVar7;
            bVar.f7123g = iVar;
            return cVar7.c(iVar, bVar);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    public static final c f7051k = new c("InCaption", 10) { // from class: k.a.f.c.b
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.e()) {
                i.g gVar = (i.g) iVar;
                if (gVar.f7084c.equals("caption")) {
                    if (!bVar.s(gVar.f7084c)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.l(null);
                    if (!bVar.a().f7018c.b.equals("caption")) {
                        bVar.k(this);
                    }
                    bVar.F("caption");
                    bVar.g();
                    bVar.f7040k = c.f7049i;
                    return true;
                }
            }
            if ((iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.A)) || (iVar.e() && ((i.g) iVar).f7084c.equals("table"))) {
                bVar.k(this);
                if (bVar.d("caption")) {
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                }
                return true;
            } else if (iVar.e() && k.a.d.a.d(((i.g) iVar).f7084c, x.L)) {
                bVar.k(this);
                return false;
            } else {
                c cVar = c.f7047g;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
        }
    };

    /* renamed from: l  reason: collision with root package name */
    public static final c f7052l = new c("InColumnGroup", 11) { // from class: k.a.f.c.c
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0087, code lost:
            if (r4.equals("html") == false) goto L47;
         */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00a2  */
        @Override // k.a.f.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean c(k.a.f.i r8, k.a.f.b r9) {
            /*
                r7 = this;
                boolean r0 = k.a.f.c.a(r8)
                r1 = 1
                if (r0 == 0) goto Ld
                k.a.f.i$c r8 = (k.a.f.i.c) r8
                r9.u(r8)
                return r1
            Ld:
                k.a.f.i$j r0 = r8.a
                int r0 = r0.ordinal()
                if (r0 == 0) goto Lab
                r2 = 0
                java.lang.String r3 = "html"
                if (r0 == r1) goto L6f
                r4 = 2
                if (r0 == r4) goto L43
                r2 = 3
                if (r0 == r2) goto L3c
                r2 = 5
                if (r0 == r2) goto L28
                boolean r8 = r7.d(r8, r9)
                return r8
            L28:
                k.a.e.h r0 = r9.a()
                k.a.f.h r0 = r0.f7018c
                java.lang.String r0 = r0.b
                boolean r0 = r0.equals(r3)
                if (r0 == 0) goto L37
                return r1
            L37:
                boolean r8 = r7.d(r8, r9)
                return r8
            L3c:
                k.a.f.i$d r8 = (k.a.f.i.d) r8
                r9.v(r8)
                goto Lae
            L43:
                r0 = r8
                k.a.f.i$g r0 = (k.a.f.i.g) r0
                java.lang.String r0 = r0.f7084c
                java.lang.String r4 = "colgroup"
                boolean r0 = r0.equals(r4)
                if (r0 == 0) goto L6a
                k.a.e.h r8 = r9.a()
                k.a.f.h r8 = r8.f7018c
                java.lang.String r8 = r8.b
                boolean r8 = r8.equals(r3)
                if (r8 == 0) goto L62
                r9.k(r7)
                return r2
            L62:
                r9.E()
                k.a.f.c r8 = k.a.f.c.f7049i
                r9.f7040k = r8
                goto Lae
            L6a:
                boolean r8 = r7.d(r8, r9)
                return r8
            L6f:
                r0 = r8
                k.a.f.i$h r0 = (k.a.f.i.h) r0
                java.lang.String r4 = r0.f7084c
                int r5 = r4.hashCode()
                r6 = 98688(0x18180, float:1.38291E-40)
                if (r5 == r6) goto L8a
                r6 = 3213227(0x3107ab, float:4.50269E-39)
                if (r5 == r6) goto L83
                goto L94
            L83:
                boolean r3 = r4.equals(r3)
                if (r3 == 0) goto L94
                goto L95
            L8a:
                java.lang.String r2 = "col"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L94
                r2 = 1
                goto L95
            L94:
                r2 = -1
            L95:
                if (r2 == 0) goto La2
                if (r2 == r1) goto L9e
                boolean r8 = r7.d(r8, r9)
                return r8
            L9e:
                r9.w(r0)
                goto Lae
            La2:
                k.a.f.c r0 = k.a.f.c.f7047g
                r9.f7123g = r8
                boolean r8 = r0.c(r8, r9)
                return r8
            Lab:
                r9.k(r7)
            Lae:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.C0117c.c(k.a.f.i, k.a.f.b):boolean");
        }

        public final boolean d(k.a.f.i iVar, k.a.f.m mVar) {
            if (mVar.d("colgroup")) {
                k.a.f.b bVar = (k.a.f.b) mVar;
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            }
            return true;
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public static final c f7053m = new c("InTableBody", 12) { // from class: k.a.f.c.d
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            int ordinal = iVar.a.ordinal();
            if (ordinal == 1) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("template")) {
                    bVar.t(hVar);
                } else if (str.equals("tr")) {
                    bVar.i();
                    bVar.t(hVar);
                    bVar.f7040k = c.n;
                } else if (k.a.d.a.d(str, x.x)) {
                    bVar.k(this);
                    bVar.e("tr");
                    bVar.f7123g = hVar;
                    return bVar.f7040k.c(hVar, bVar);
                } else if (k.a.d.a.d(str, x.D)) {
                    return e(iVar, bVar);
                } else {
                    return d(iVar, bVar);
                }
            } else if (ordinal != 2) {
                return d(iVar, bVar);
            } else {
                String str2 = ((i.g) iVar).f7084c;
                if (k.a.d.a.d(str2, x.J)) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.i();
                    bVar.E();
                    bVar.f7040k = c.f7049i;
                } else if (str2.equals("table")) {
                    return e(iVar, bVar);
                } else {
                    if (k.a.d.a.d(str2, x.E)) {
                        bVar.k(this);
                        return false;
                    }
                    return d(iVar, bVar);
                }
            }
            return true;
        }

        public final boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            c cVar = c.f7049i;
            bVar.f7123g = iVar;
            return cVar.c(iVar, bVar);
        }

        public final boolean e(k.a.f.i iVar, k.a.f.b bVar) {
            if (!bVar.s("tbody") && !bVar.s("thead") && !bVar.p("tfoot")) {
                bVar.k(this);
                return false;
            }
            bVar.i();
            bVar.d(bVar.a().f7018c.b);
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    };
    public static final c n = new c("InRow", 13) { // from class: k.a.f.c.e
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.f()) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("template")) {
                    bVar.t(hVar);
                    return true;
                } else if (k.a.d.a.d(str, x.x)) {
                    bVar.h("tr", "template");
                    bVar.t(hVar);
                    bVar.f7040k = c.o;
                    bVar.z();
                    return true;
                } else if (k.a.d.a.d(str, x.F)) {
                    if (bVar.d("tr")) {
                        bVar.f7123g = iVar;
                        return bVar.f7040k.c(iVar, bVar);
                    }
                    return false;
                } else {
                    return d(iVar, bVar);
                }
            } else if (iVar.e()) {
                String str2 = ((i.g) iVar).f7084c;
                if (str2.equals("tr")) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.h("tr", "template");
                    bVar.E();
                    bVar.f7040k = c.f7053m;
                    return true;
                } else if (str2.equals("table")) {
                    if (bVar.d("tr")) {
                        bVar.f7123g = iVar;
                        return bVar.f7040k.c(iVar, bVar);
                    }
                    return false;
                } else if (k.a.d.a.d(str2, x.u)) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.d("tr");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (k.a.d.a.d(str2, x.G)) {
                    bVar.k(this);
                    return false;
                } else {
                    return d(iVar, bVar);
                }
            } else {
                return d(iVar, bVar);
            }
        }

        public final boolean d(k.a.f.i iVar, k.a.f.b bVar) {
            c cVar = c.f7049i;
            bVar.f7123g = iVar;
            return cVar.c(iVar, bVar);
        }
    };
    public static final c o = new c("InCell", 14) { // from class: k.a.f.c.f
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.e()) {
                String str = ((i.g) iVar).f7084c;
                if (k.a.d.a.d(str, x.x)) {
                    if (!bVar.s(str)) {
                        bVar.k(this);
                        bVar.f7040k = c.n;
                        return false;
                    }
                    bVar.l(null);
                    if (!bVar.a().f7018c.b.equals(str)) {
                        bVar.k(this);
                    }
                    bVar.F(str);
                    bVar.g();
                    bVar.f7040k = c.n;
                    return true;
                } else if (k.a.d.a.d(str, x.y)) {
                    bVar.k(this);
                    return false;
                } else if (k.a.d.a.d(str, x.z)) {
                    if (!bVar.s(str)) {
                        bVar.k(this);
                        return false;
                    }
                    if (bVar.s("td")) {
                        bVar.d("td");
                    } else {
                        bVar.d("th");
                    }
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else {
                    c cVar = c.f7047g;
                    bVar.f7123g = iVar;
                    return cVar.c(iVar, bVar);
                }
            } else if (iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.A)) {
                if (!bVar.s("td") && !bVar.s("th")) {
                    bVar.k(this);
                    return false;
                }
                if (bVar.s("td")) {
                    bVar.d("td");
                } else {
                    bVar.d("th");
                }
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            } else {
                c cVar2 = c.f7047g;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            }
        }
    };
    public static final c p = new c("InSelect", 15) { // from class: k.a.f.c.g
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            int ordinal = iVar.a.ordinal();
            if (ordinal == 0) {
                bVar.k(this);
                return false;
            }
            if (ordinal == 1) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("html")) {
                    c cVar = c.f7047g;
                    bVar.f7123g = hVar;
                    return cVar.c(hVar, bVar);
                } else if (str.equals("option")) {
                    if (bVar.a().f7018c.b.equals("option")) {
                        bVar.d("option");
                    }
                    bVar.t(hVar);
                } else if (str.equals("optgroup")) {
                    if (bVar.a().f7018c.b.equals("option")) {
                        bVar.d("option");
                    }
                    if (bVar.a().f7018c.b.equals("optgroup")) {
                        bVar.d("optgroup");
                    }
                    bVar.t(hVar);
                } else if (str.equals("select")) {
                    bVar.k(this);
                    return bVar.d("select");
                } else if (k.a.d.a.d(str, x.H)) {
                    bVar.k(this);
                    if (bVar.q("select")) {
                        bVar.d("select");
                        bVar.f7123g = hVar;
                        return bVar.f7040k.c(hVar, bVar);
                    }
                    return false;
                } else if (str.equals("script")) {
                    c cVar2 = c.f7044d;
                    bVar.f7123g = iVar;
                    return cVar2.c(iVar, bVar);
                } else {
                    bVar.k(this);
                    return false;
                }
            } else if (ordinal == 2) {
                String str2 = ((i.g) iVar).f7084c;
                char c2 = 65535;
                int hashCode = str2.hashCode();
                if (hashCode != -1010136971) {
                    if (hashCode != -906021636) {
                        if (hashCode == -80773204 && str2.equals("optgroup")) {
                            c2 = 0;
                        }
                    } else if (str2.equals("select")) {
                        c2 = 2;
                    }
                } else if (str2.equals("option")) {
                    c2 = 1;
                }
                if (c2 == 0) {
                    if (bVar.a().f7018c.b.equals("option") && bVar.f(bVar.a()) != null && bVar.f(bVar.a()).f7018c.b.equals("optgroup")) {
                        bVar.d("option");
                    }
                    if (bVar.a().f7018c.b.equals("optgroup")) {
                        bVar.E();
                    } else {
                        bVar.k(this);
                    }
                } else if (c2 != 1) {
                    if (c2 != 2) {
                        bVar.k(this);
                        return false;
                    } else if (!bVar.q(str2)) {
                        bVar.k(this);
                        return false;
                    } else {
                        bVar.F(str2);
                        bVar.K();
                    }
                } else if (bVar.a().f7018c.b.equals("option")) {
                    bVar.E();
                } else {
                    bVar.k(this);
                }
            } else if (ordinal == 3) {
                bVar.v((i.d) iVar);
            } else if (ordinal == 4) {
                i.c cVar3 = (i.c) iVar;
                if (cVar3.b.equals(c.x)) {
                    bVar.k(this);
                    return false;
                }
                bVar.u(cVar3);
            } else if (ordinal != 5) {
                bVar.k(this);
                return false;
            } else if (!bVar.a().f7018c.b.equals("html")) {
                bVar.k(this);
            }
            return true;
        }
    };
    public static final c q = new c("InSelectInTable", 16) { // from class: k.a.f.c.h
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.I)) {
                bVar.k(this);
                bVar.d("select");
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            }
            if (iVar.e()) {
                i.g gVar = (i.g) iVar;
                if (k.a.d.a.d(gVar.f7084c, x.I)) {
                    bVar.k(this);
                    if (bVar.s(gVar.f7084c)) {
                        bVar.d("select");
                        bVar.f7123g = iVar;
                        return bVar.f7040k.c(iVar, bVar);
                    }
                    return false;
                }
            }
            c cVar = c.p;
            bVar.f7123g = iVar;
            return cVar.c(iVar, bVar);
        }
    };
    public static final c r = new c("AfterBody", 17) { // from class: k.a.f.c.i
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("html")) {
                c cVar = c.f7047g;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("html")) {
                if (bVar.v) {
                    bVar.k(this);
                    return false;
                }
                bVar.f7040k = c.u;
                return true;
            } else if (iVar.d()) {
                return true;
            } else {
                bVar.k(this);
                c cVar2 = c.f7047g;
                bVar.f7040k = cVar2;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            }
        }
    };
    public static final c s = new c("InFrameset", 18) { // from class: k.a.f.c.j
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
            } else if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.f()) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                char c2 = 65535;
                switch (str.hashCode()) {
                    case -1644953643:
                        if (str.equals("frameset")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 3213227:
                        if (str.equals("html")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 97692013:
                        if (str.equals("frame")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1192721831:
                        if (str.equals("noframes")) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                if (c2 == 0) {
                    c cVar = c.f7047g;
                    bVar.f7123g = hVar;
                    return cVar.c(hVar, bVar);
                } else if (c2 == 1) {
                    bVar.t(hVar);
                } else if (c2 != 2) {
                    if (c2 != 3) {
                        bVar.k(this);
                        return false;
                    }
                    c cVar2 = c.f7044d;
                    bVar.f7123g = hVar;
                    return cVar2.c(hVar, bVar);
                } else {
                    bVar.w(hVar);
                }
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("frameset")) {
                if (bVar.a().f7018c.b.equals("html")) {
                    bVar.k(this);
                    return false;
                }
                bVar.E();
                if (!bVar.v && !bVar.a().f7018c.b.equals("frameset")) {
                    bVar.f7040k = c.t;
                }
            } else if (iVar.d()) {
                if (!bVar.a().f7018c.b.equals("html")) {
                    bVar.k(this);
                }
            } else {
                bVar.k(this);
                return false;
            }
            return true;
        }
    };
    public static final c t = new c("AfterFrameset", 19) { // from class: k.a.f.c.l
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            } else if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c()) {
                bVar.k(this);
                return false;
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("html")) {
                c cVar = c.f7047g;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("html")) {
                bVar.f7040k = c.v;
                return true;
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("noframes")) {
                c cVar2 = c.f7044d;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            } else if (iVar.d()) {
                return true;
            } else {
                bVar.k(this);
                return false;
            }
        }
    };
    public static final c u = new c("AfterAfterBody", 20) { // from class: k.a.f.c.m
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00ac A[EDGE_INSN: B:61:0x00ac->B:49:0x00ac ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v2, types: [k.a.e.l] */
        @Override // k.a.f.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean c(k.a.f.i r12, k.a.f.b r13) {
            /*
                r11 = this;
                boolean r0 = r12.b()
                if (r0 == 0) goto Ld
                k.a.f.i$d r12 = (k.a.f.i.d) r12
                r13.v(r12)
                goto Lb7
            Ld:
                boolean r0 = r12.c()
                if (r0 != 0) goto Lc7
                boolean r0 = r12.f()
                java.lang.String r1 = "html"
                if (r0 == 0) goto L28
                r0 = r12
                k.a.f.i$h r0 = (k.a.f.i.h) r0
                java.lang.String r0 = r0.f7084c
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L28
                goto Lc7
            L28:
                boolean r0 = k.a.f.c.a(r12)
                if (r0 == 0) goto Lb1
                k.a.e.h r0 = r13.F(r1)
                k.a.f.i$c r12 = (k.a.f.i.c) r12
                r13.u(r12)
                java.util.ArrayList<k.a.e.h> r12 = r13.f7121e
                r12.add(r0)
                java.util.ArrayList<k.a.e.h> r12 = r13.f7121e
                java.lang.String r13 = "body"
                r1 = 0
                if (r0 == 0) goto Lb0
                j.b.q(r13)
                k.a.g.d r13 = k.a.g.g.h(r13)
                k.a.g.e r2 = k.a.g.e.REMOVE
                k.a.g.e r3 = k.a.g.e.SKIP_CHILDREN
                k.a.g.e r4 = k.a.g.e.STOP
                k.a.g.e r5 = k.a.g.e.CONTINUE
                r6 = 0
                r7 = r0
                r8 = 0
            L55:
                if (r7 == 0) goto Lac
                boolean r9 = r7 instanceof k.a.e.h
                if (r9 == 0) goto L67
                r9 = r7
                k.a.e.h r9 = (k.a.e.h) r9
                boolean r10 = r13.a(r0, r9)
                if (r10 == 0) goto L67
                r1 = r9
                r9 = r4
                goto L68
            L67:
                r9 = r5
            L68:
                if (r9 != r4) goto L6b
                goto Lac
            L6b:
                if (r9 != r5) goto L80
                int r10 = r7.f()
                if (r10 <= 0) goto L80
                java.util.List r7 = r7.l()
                java.lang.Object r7 = r7.get(r6)
                k.a.e.l r7 = (k.a.e.l) r7
                int r8 = r8 + 1
                goto L55
            L80:
                k.a.e.l r10 = r7.p()
                if (r10 != 0) goto L99
                if (r8 <= 0) goto L99
                if (r9 == r5) goto L8c
                if (r9 != r3) goto L8d
            L8c:
                r9 = r5
            L8d:
                k.a.e.l r10 = r7.a
                int r8 = r8 + (-1)
                if (r9 != r2) goto L96
                r7.w()
            L96:
                r9 = r5
                r7 = r10
                goto L80
            L99:
                if (r9 == r5) goto L9d
                if (r9 != r3) goto L9e
            L9d:
                r9 = r5
            L9e:
                if (r7 != r0) goto La1
                goto Lac
            La1:
                k.a.e.l r10 = r7.p()
                if (r9 != r2) goto Laa
                r7.w()
            Laa:
                r7 = r10
                goto L55
            Lac:
                r12.add(r1)
                goto Lb7
            Lb0:
                throw r1
            Lb1:
                boolean r0 = r12.d()
                if (r0 == 0) goto Lb9
            Lb7:
                r12 = 1
                return r12
            Lb9:
                r13.k(r11)
                k.a.f.c r0 = k.a.f.c.f7047g
                r13.f7040k = r0
                r13.f7123g = r12
                boolean r12 = r0.c(r12, r13)
                return r12
            Lc7:
                k.a.f.c r0 = k.a.f.c.f7047g
                r13.f7123g = r12
                boolean r12 = r0.c(r12, r13)
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.m.c(k.a.f.i, k.a.f.b):boolean");
        }
    };
    public static final c v = new c("AfterAfterFrameset", 21) { // from class: k.a.f.c.n
        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (!iVar.c() && !c.a(iVar) && (!iVar.f() || !((i.h) iVar).f7084c.equals("html"))) {
                if (iVar.d()) {
                    return true;
                }
                if (iVar.f() && ((i.h) iVar).f7084c.equals("noframes")) {
                    c cVar = c.f7044d;
                    bVar.f7123g = iVar;
                    return cVar.c(iVar, bVar);
                }
                bVar.k(this);
                return false;
            } else {
                c cVar2 = c.f7047g;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            }
        }
    };
    public static final c w;
    public static final String x;
    public static final /* synthetic */ c[] y;

    /* compiled from: HtmlTreeBuilderState.java */
    /* loaded from: classes.dex */
    public enum k extends c {
        public k(String str, int i2) {
            super(str, i2, null);
        }

        @Override // k.a.f.c
        public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
            if (c.a(iVar)) {
                return true;
            }
            if (iVar.b()) {
                bVar.v((i.d) iVar);
            } else if (iVar.c()) {
                i.e eVar = (i.e) iVar;
                k.a.f.f fVar = bVar.f7124h;
                String sb = eVar.b.toString();
                if (fVar != null) {
                    String trim = sb.trim();
                    if (!fVar.a) {
                        trim = j.b.o(trim);
                    }
                    k.a.e.g gVar = new k.a.e.g(trim, eVar.f7081d.toString(), eVar.f7082e.toString());
                    String str = eVar.f7080c;
                    if (str != null) {
                        gVar.c("pubSysKey", str);
                    }
                    bVar.f7120d.z(gVar);
                    if (eVar.f7083f) {
                        bVar.f7120d.f7006k = f.b.quirks;
                    }
                    bVar.f7040k = c.b;
                } else {
                    throw null;
                }
            } else {
                c cVar = c.b;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
            return true;
        }
    }

    /* compiled from: HtmlTreeBuilderState.java */
    /* loaded from: classes.dex */
    public static final class x {
        public static final String[] a = {"base", "basefont", "bgsound", "command", "link"};
        public static final String[] b = {"noframes", "style"};

        /* renamed from: c  reason: collision with root package name */
        public static final String[] f7054c = {"body", "br", "html"};

        /* renamed from: d  reason: collision with root package name */
        public static final String[] f7055d = {"body", "html"};

        /* renamed from: e  reason: collision with root package name */
        public static final String[] f7056e = {"body", "br", "head", "html"};

        /* renamed from: f  reason: collision with root package name */
        public static final String[] f7057f = {"basefont", "bgsound", "link", "meta", "noframes", "style"};

        /* renamed from: g  reason: collision with root package name */
        public static final String[] f7058g = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", NotificationCompatJellybean.KEY_TITLE};

        /* renamed from: h  reason: collision with root package name */
        public static final String[] f7059h = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", SupportMenuInflater.XML_MENU, "nav", "ol", com.umeng.commonsdk.proguard.e.ao, "section", "summary", "ul"};

        /* renamed from: i  reason: collision with root package name */
        public static final String[] f7060i = {"h1", "h2", "h3", "h4", "h5", "h6"};

        /* renamed from: j  reason: collision with root package name */
        public static final String[] f7061j = {"address", "div", com.umeng.commonsdk.proguard.e.ao};

        /* renamed from: k  reason: collision with root package name */
        public static final String[] f7062k = {"dd", "dt"};

        /* renamed from: l  reason: collision with root package name */
        public static final String[] f7063l = {"b", "big", "code", "em", "font", com.umeng.commonsdk.proguard.e.aq, com.umeng.commonsdk.proguard.e.ap, "small", "strike", "strong", "tt", "u"};

        /* renamed from: m  reason: collision with root package name */
        public static final String[] f7064m = {"applet", "marquee", "object"};
        public static final String[] n = {"area", "br", "embed", "img", "keygen", "wbr"};
        public static final String[] o = {"param", "source", "track"};
        public static final String[] p = {NavInflater.TAG_ACTION, "name", "prompt"};
        public static final String[] q = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] r = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", SupportMenuInflater.XML_MENU, "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] s = {"a", "b", "big", "code", "em", "font", com.umeng.commonsdk.proguard.e.aq, "nobr", com.umeng.commonsdk.proguard.e.ap, "small", "strike", "strong", "tt", "u"};
        public static final String[] t = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] u = {"tbody", "tfoot", "thead"};
        public static final String[] v = {"td", "th", "tr"};
        public static final String[] w = {"script", "style"};
        public static final String[] x = {"td", "th"};
        public static final String[] y = {"body", "caption", "col", "colgroup", "html"};
        public static final String[] z = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] B = {"body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] C = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] E = {"body", "caption", "col", "colgroup", "html", "td", "th", "tr"};
        public static final String[] F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] G = {"body", "caption", "col", "colgroup", "html", "td", "th"};
        public static final String[] H = {"input", "keygen", "textarea"};
        public static final String[] I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] J = {"tbody", "tfoot", "thead"};
        public static final String[] K = {"head", "noscript"};
        public static final String[] L = {"body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
    }

    static {
        c cVar = new c("ForeignContent", 22) { // from class: k.a.f.c.o
            @Override // k.a.f.c
            public boolean c(k.a.f.i iVar, k.a.f.b bVar) {
                return true;
            }
        };
        w = cVar;
        y = new c[]{a, b, f7043c, f7044d, f7045e, f7046f, f7047g, f7048h, f7049i, f7050j, f7051k, f7052l, f7053m, n, o, p, q, r, s, t, u, v, cVar};
        x = String.valueOf((char) 0);
    }

    public c(String str, int i2, k kVar) {
    }

    public static boolean a(k.a.f.i iVar) {
        if (iVar.a()) {
            return k.a.d.a.e(((i.c) iVar).b);
        }
        return false;
    }

    public static void b(i.h hVar, k.a.f.b bVar) {
        bVar.f7119c.f7097c = k.a.f.l.f7110e;
        bVar.f7041l = bVar.f7040k;
        bVar.f7040k = f7048h;
        bVar.t(hVar);
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) y.clone();
    }

    public abstract boolean c(k.a.f.i iVar, k.a.f.b bVar);
}
