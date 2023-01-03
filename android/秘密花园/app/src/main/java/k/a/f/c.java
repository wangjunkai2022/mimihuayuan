package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import androidx.navigation.NavInflater;
import java.util.ArrayList;
import k.a.e.f;
import k.a.f.i;

/* compiled from: HtmlTreeBuilderState.java */
/* loaded from: classes.dex */
public enum c {
    Initial {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (c.a(iVar)) {
                return true;
            }
            if (iVar.b()) {
                bVar.v((i.d) iVar);
            } else if (iVar.c()) {
                i.e eVar = (i.e) iVar;
                f fVar = bVar.f7124h;
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
                    bVar.f7040k = c.BeforeHtml;
                } else {
                    throw null;
                }
            } else {
                c cVar = c.BeforeHtml;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
            return true;
        }
    },
    BeforeHtml {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                        bVar.f7040k = c.BeforeHead;
                        return true;
                    }
                }
                if (iVar.e() && k.a.d.a.d(((i.g) iVar).f7084c, x.f7056e)) {
                    return d(iVar, bVar);
                }
                if (!iVar.e()) {
                    return d(iVar, bVar);
                }
                bVar.k(this);
                return false;
            }
        }

        public final boolean d(i iVar, b bVar) {
            if (bVar != null) {
                k.a.e.h hVar = new k.a.e.h(h.a("html", bVar.f7124h), null, null);
                bVar.A(hVar);
                bVar.f7121e.add(hVar);
                c cVar = c.BeforeHead;
                bVar.f7040k = cVar;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
            throw null;
        }
    },
    BeforeHead {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                return c.InBody.c(iVar, bVar);
            } else {
                if (iVar.f()) {
                    i.h hVar = (i.h) iVar;
                    if (hVar.f7084c.equals("head")) {
                        bVar.n = bVar.t(hVar);
                        bVar.f7040k = c.InHead;
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
    },
    InHead {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (c.a(iVar)) {
                bVar.u((i.c) iVar);
                return true;
            }
            int ordinal = iVar.a.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    i.h hVar = (i.h) iVar;
                    String str = hVar.f7084c;
                    if (str.equals("html")) {
                        return c.InBody.c(iVar, bVar);
                    }
                    if (k.a.d.a.d(str, x.a)) {
                        k.a.e.h w = bVar.w(hVar);
                        if (str.equals("base") && w.m("href") && !bVar.f7042m) {
                            String a = w.a("href");
                            if (a.length() != 0) {
                                bVar.f7122f = a;
                                bVar.f7042m = true;
                                k.a.e.f fVar = bVar.f7120d;
                                if (fVar != null) {
                                    j.b.s(a);
                                    fVar.d().n(k.a.e.h.f7017h, a);
                                } else {
                                    throw null;
                                }
                            }
                        }
                    } else if (str.equals("meta")) {
                        bVar.w(hVar);
                    } else if (str.equals(NotificationCompatJellybean.KEY_TITLE)) {
                        bVar.f7119c.f7097c = l.Rcdata;
                        bVar.f7041l = bVar.f7040k;
                        bVar.f7040k = c.Text;
                        bVar.t(hVar);
                    } else if (k.a.d.a.d(str, x.b)) {
                        c.b(hVar, bVar);
                    } else if (str.equals("noscript")) {
                        bVar.t(hVar);
                        bVar.f7040k = c.InHeadNoscript;
                    } else if (str.equals("script")) {
                        bVar.f7119c.f7097c = l.ScriptData;
                        bVar.f7041l = bVar.f7040k;
                        bVar.f7040k = c.Text;
                        bVar.t(hVar);
                    } else if (!str.equals("head")) {
                        return d(iVar, bVar);
                    } else {
                        bVar.k(this);
                        return false;
                    }
                } else if (ordinal == 2) {
                    String str2 = ((i.g) iVar).f7084c;
                    if (str2.equals("head")) {
                        bVar.E();
                        bVar.f7040k = c.AfterHead;
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
            bVar.k(this);
            return false;
        }

        public final boolean d(i iVar, m mVar) {
            mVar.d("head");
            b bVar = (b) mVar;
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    },
    InHeadNoscript {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (iVar.c()) {
                bVar.k(this);
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("html")) {
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("noscript")) {
                bVar.E();
                bVar.f7040k = c.InHead;
            } else if (c.a(iVar) || iVar.b() || (iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.f7057f))) {
                c cVar2 = c.InHead;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("br")) {
                bVar.k(this);
                i.c cVar3 = new i.c();
                cVar3.b = iVar.toString();
                bVar.u(cVar3);
                return true;
            } else if ((!iVar.f() || !k.a.d.a.d(((i.h) iVar).f7084c, x.K)) && !iVar.e()) {
                bVar.k(this);
                i.c cVar4 = new i.c();
                cVar4.b = iVar.toString();
                bVar.u(cVar4);
                return true;
            } else {
                bVar.k(this);
                return false;
            }
            return true;
        }
    },
    AfterHead {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                    c cVar = c.InBody;
                    bVar.f7123g = iVar;
                    return cVar.c(iVar, bVar);
                } else if (str.equals("body")) {
                    bVar.t(hVar);
                    bVar.t = false;
                    bVar.f7040k = c.InBody;
                    return true;
                } else if (str.equals("frameset")) {
                    bVar.t(hVar);
                    bVar.f7040k = c.InFrameset;
                    return true;
                } else if (k.a.d.a.d(str, x.f7058g)) {
                    bVar.k(this);
                    k.a.e.h hVar2 = bVar.n;
                    bVar.f7121e.add(hVar2);
                    c cVar2 = c.InHead;
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
            } else if (!iVar.e()) {
                d(iVar, bVar);
                return true;
            } else if (k.a.d.a.d(((i.g) iVar).f7084c, x.f7055d)) {
                d(iVar, bVar);
                return true;
            } else {
                bVar.k(this);
                return false;
            }
        }

        public final boolean d(i iVar, b bVar) {
            bVar.e("body");
            bVar.t = true;
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    },
    InBody {
        /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARNING: Code restructure failed: missing block: B:228:0x0458, code lost:
            if (r4.equals("isindex") != false) goto L_0x0571;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:239:0x0484, code lost:
            if (r4.equals("input") != false) goto L_0x05cc;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:58:0x00f6, code lost:
            if (r4.equals("h6") != false) goto L_0x012a;
         */
        /* JADX WARNING: Removed duplicated region for block: B:158:0x02d4  */
        /* JADX WARNING: Removed duplicated region for block: B:182:0x0349  */
        /* JADX WARNING: Removed duplicated region for block: B:186:0x0356  */
        /* JADX WARNING: Removed duplicated region for block: B:192:0x0388 A[LOOP:4: B:191:0x0386->B:192:0x0388, LOOP_END] */
        /* JADX WARNING: Removed duplicated region for block: B:195:0x03a2  */
        /* JADX WARNING: Removed duplicated region for block: B:196:0x03a4  */
        /* JADX WARNING: Removed duplicated region for block: B:559:0x02c8 A[SYNTHETIC] */
        @Override // k.a.f.c
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean c(k.a.f.i r33, k.a.f.b r34) {
            /*
            // Method dump skipped, instructions count: 3228
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.u.c(k.a.f.i, k.a.f.b):boolean");
        }

        public boolean d(i iVar, b bVar) {
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
    },
    Text {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
            } else if (!iVar.e()) {
                return true;
            } else {
                bVar.E();
                bVar.f7040k = bVar.f7041l;
                return true;
            }
        }
    },
    InTable {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (iVar.a()) {
                bVar.r = new ArrayList();
                bVar.f7041l = bVar.f7040k;
                c cVar = c.InTableText;
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
                    bVar.f7040k = c.InCaption;
                } else if (str.equals("colgroup")) {
                    bVar.j();
                    bVar.t(hVar);
                    bVar.f7040k = c.InColumnGroup;
                } else if (str.equals("col")) {
                    bVar.e("colgroup");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (k.a.d.a.d(str, x.u)) {
                    bVar.j();
                    bVar.t(hVar);
                    bVar.f7040k = c.InTableBody;
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
                    c cVar2 = c.InHead;
                    bVar.f7123g = iVar;
                    return cVar2.c(iVar, bVar);
                } else if (str.equals("input")) {
                    if (!hVar.f7091j.g("type").equalsIgnoreCase("hidden")) {
                        return d(iVar, bVar);
                    }
                    bVar.w(hVar);
                } else if (!str.equals("form")) {
                    return d(iVar, bVar);
                } else {
                    bVar.k(this);
                    if (bVar.o != null) {
                        return false;
                    }
                    bVar.x(hVar, false);
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
                } else if (!k.a.d.a.d(str2, x.B)) {
                    return d(iVar, bVar);
                } else {
                    bVar.k(this);
                    return false;
                }
            } else if (!iVar.d()) {
                return d(iVar, bVar);
            } else {
                if (bVar.a().f7018c.b.equals("html")) {
                    bVar.k(this);
                }
                return true;
            }
        }

        public boolean d(i iVar, b bVar) {
            bVar.k(this);
            if (k.a.d.a.d(bVar.a().f7018c.b, x.C)) {
                bVar.u = true;
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                boolean c2 = cVar.c(iVar, bVar);
                bVar.u = false;
                return c2;
            }
            c cVar2 = c.InBody;
            bVar.f7123g = iVar;
            return cVar2.c(iVar, bVar);
        }
    },
    InTableText {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                            c cVar3 = c.InBody;
                            bVar.f7123g = cVar2;
                            cVar3.c(cVar2, bVar);
                            bVar.u = false;
                        } else {
                            i.c cVar4 = new i.c();
                            cVar4.b = str;
                            c cVar5 = c.InBody;
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
    },
    InCaption {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                    bVar.f7040k = c.InTable;
                    return true;
                }
            }
            if ((iVar.f() && k.a.d.a.d(((i.h) iVar).f7084c, x.A)) || (iVar.e() && ((i.g) iVar).f7084c.equals("table"))) {
                bVar.k(this);
                if (!bVar.d("caption")) {
                    return true;
                }
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            } else if (!iVar.e() || !k.a.d.a.d(((i.g) iVar).f7084c, x.L)) {
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else {
                bVar.k(this);
                return false;
            }
        }
    },
    InColumnGroup {
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x0087, code lost:
            if (r4.equals("html") == false) goto L_0x0094;
         */
        /* JADX WARNING: Removed duplicated region for block: B:44:0x0097  */
        /* JADX WARNING: Removed duplicated region for block: B:48:0x00a2  */
        @Override // k.a.f.c
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean c(k.a.f.i r8, k.a.f.b r9) {
            /*
                r7 = this;
                boolean r0 = k.a.f.c.a(r8)
                r1 = 1
                if (r0 == 0) goto L_0x000d
                k.a.f.i$c r8 = (k.a.f.i.c) r8
                r9.u(r8)
                return r1
            L_0x000d:
                k.a.f.i$j r0 = r8.a
                int r0 = r0.ordinal()
                if (r0 == 0) goto L_0x00ab
                r2 = 0
                java.lang.String r3 = "html"
                if (r0 == r1) goto L_0x006f
                r4 = 2
                if (r0 == r4) goto L_0x0043
                r2 = 3
                if (r0 == r2) goto L_0x003c
                r2 = 5
                if (r0 == r2) goto L_0x0028
                boolean r8 = r7.d(r8, r9)
                return r8
            L_0x0028:
                k.a.e.h r0 = r9.a()
                k.a.f.h r0 = r0.f7018c
                java.lang.String r0 = r0.b
                boolean r0 = r0.equals(r3)
                if (r0 == 0) goto L_0x0037
                return r1
            L_0x0037:
                boolean r8 = r7.d(r8, r9)
                return r8
            L_0x003c:
                k.a.f.i$d r8 = (k.a.f.i.d) r8
                r9.v(r8)
                goto L_0x00ae
            L_0x0043:
                r0 = r8
                k.a.f.i$g r0 = (k.a.f.i.g) r0
                java.lang.String r0 = r0.f7084c
                java.lang.String r4 = "colgroup"
                boolean r0 = r0.equals(r4)
                if (r0 == 0) goto L_0x006a
                k.a.e.h r8 = r9.a()
                k.a.f.h r8 = r8.f7018c
                java.lang.String r8 = r8.b
                boolean r8 = r8.equals(r3)
                if (r8 == 0) goto L_0x0062
                r9.k(r7)
                return r2
            L_0x0062:
                r9.E()
                k.a.f.c r8 = k.a.f.c.InTable
                r9.f7040k = r8
                goto L_0x00ae
            L_0x006a:
                boolean r8 = r7.d(r8, r9)
                return r8
            L_0x006f:
                r0 = r8
                k.a.f.i$h r0 = (k.a.f.i.h) r0
                java.lang.String r4 = r0.f7084c
                int r5 = r4.hashCode()
                r6 = 98688(0x18180, float:1.38291E-40)
                if (r5 == r6) goto L_0x008a
                r6 = 3213227(0x3107ab, float:4.50269E-39)
                if (r5 == r6) goto L_0x0083
                goto L_0x0094
            L_0x0083:
                boolean r3 = r4.equals(r3)
                if (r3 == 0) goto L_0x0094
                goto L_0x0095
            L_0x008a:
                java.lang.String r2 = "col"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x0094
                r2 = 1
                goto L_0x0095
            L_0x0094:
                r2 = -1
            L_0x0095:
                if (r2 == 0) goto L_0x00a2
                if (r2 == r1) goto L_0x009e
                boolean r8 = r7.d(r8, r9)
                return r8
            L_0x009e:
                r9.w(r0)
                goto L_0x00ae
            L_0x00a2:
                k.a.f.c r0 = k.a.f.c.InBody
                r9.f7123g = r8
                boolean r8 = r0.c(r8, r9)
                return r8
            L_0x00ab:
                r9.k(r7)
            L_0x00ae:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.C0110c.c(k.a.f.i, k.a.f.b):boolean");
        }

        public final boolean d(i iVar, m mVar) {
            if (!mVar.d("colgroup")) {
                return true;
            }
            b bVar = (b) mVar;
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    },
    InTableBody {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            int ordinal = iVar.a.ordinal();
            if (ordinal == 1) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("template")) {
                    bVar.t(hVar);
                } else if (str.equals("tr")) {
                    bVar.i();
                    bVar.t(hVar);
                    bVar.f7040k = c.InRow;
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
                    bVar.f7040k = c.InTable;
                } else if (str2.equals("table")) {
                    return e(iVar, bVar);
                } else {
                    if (!k.a.d.a.d(str2, x.E)) {
                        return d(iVar, bVar);
                    }
                    bVar.k(this);
                    return false;
                }
            }
            return true;
        }

        public final boolean d(i iVar, b bVar) {
            c cVar = c.InTable;
            bVar.f7123g = iVar;
            return cVar.c(iVar, bVar);
        }

        public final boolean e(i iVar, b bVar) {
            if (bVar.s("tbody") || bVar.s("thead") || bVar.p("tfoot")) {
                bVar.i();
                bVar.d(bVar.a().f7018c.b);
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            }
            bVar.k(this);
            return false;
        }
    },
    InRow {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (iVar.f()) {
                i.h hVar = (i.h) iVar;
                String str = hVar.f7084c;
                if (str.equals("template")) {
                    bVar.t(hVar);
                    return true;
                } else if (k.a.d.a.d(str, x.x)) {
                    bVar.h("tr", "template");
                    bVar.t(hVar);
                    bVar.f7040k = c.InCell;
                    bVar.z();
                    return true;
                } else if (!k.a.d.a.d(str, x.F)) {
                    return d(iVar, bVar);
                } else {
                    if (!bVar.d("tr")) {
                        return false;
                    }
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                }
            } else if (!iVar.e()) {
                return d(iVar, bVar);
            } else {
                String str2 = ((i.g) iVar).f7084c;
                if (str2.equals("tr")) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.h("tr", "template");
                    bVar.E();
                    bVar.f7040k = c.InTableBody;
                    return true;
                } else if (str2.equals("table")) {
                    if (!bVar.d("tr")) {
                        return false;
                    }
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (k.a.d.a.d(str2, x.u)) {
                    if (!bVar.s(str2)) {
                        bVar.k(this);
                        return false;
                    }
                    bVar.d("tr");
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                } else if (!k.a.d.a.d(str2, x.G)) {
                    return d(iVar, bVar);
                } else {
                    bVar.k(this);
                    return false;
                }
            }
        }

        public final boolean d(i iVar, b bVar) {
            c cVar = c.InTable;
            bVar.f7123g = iVar;
            return cVar.c(iVar, bVar);
        }
    },
    InCell {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (iVar.e()) {
                String str = ((i.g) iVar).f7084c;
                if (k.a.d.a.d(str, x.x)) {
                    if (!bVar.s(str)) {
                        bVar.k(this);
                        bVar.f7040k = c.InRow;
                        return false;
                    }
                    bVar.l(null);
                    if (!bVar.a().f7018c.b.equals(str)) {
                        bVar.k(this);
                    }
                    bVar.F(str);
                    bVar.g();
                    bVar.f7040k = c.InRow;
                    return true;
                } else if (k.a.d.a.d(str, x.y)) {
                    bVar.k(this);
                    return false;
                } else if (!k.a.d.a.d(str, x.z)) {
                    c cVar = c.InBody;
                    bVar.f7123g = iVar;
                    return cVar.c(iVar, bVar);
                } else if (!bVar.s(str)) {
                    bVar.k(this);
                    return false;
                } else {
                    if (bVar.s("td")) {
                        bVar.d("td");
                    } else {
                        bVar.d("th");
                    }
                    bVar.f7123g = iVar;
                    return bVar.f7040k.c(iVar, bVar);
                }
            } else if (!iVar.f() || !k.a.d.a.d(((i.h) iVar).f7084c, x.A)) {
                c cVar2 = c.InBody;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            } else if (bVar.s("td") || bVar.s("th")) {
                if (bVar.s("td")) {
                    bVar.d("td");
                } else {
                    bVar.d("th");
                }
                bVar.f7123g = iVar;
                return bVar.f7040k.c(iVar, bVar);
            } else {
                bVar.k(this);
                return false;
            }
        }
    },
    InSelect {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            int ordinal = iVar.a.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    i.h hVar = (i.h) iVar;
                    String str = hVar.f7084c;
                    if (str.equals("html")) {
                        c cVar = c.InBody;
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
                        if (!bVar.q("select")) {
                            return false;
                        }
                        bVar.d("select");
                        bVar.f7123g = hVar;
                        return bVar.f7040k.c(hVar, bVar);
                    } else if (str.equals("script")) {
                        c cVar2 = c.InHead;
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
            bVar.k(this);
            return false;
        }
    },
    InSelectInTable {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (!iVar.f() || !k.a.d.a.d(((i.h) iVar).f7084c, x.I)) {
                if (iVar.e()) {
                    i.g gVar = (i.g) iVar;
                    if (k.a.d.a.d(gVar.f7084c, x.I)) {
                        bVar.k(this);
                        if (!bVar.s(gVar.f7084c)) {
                            return false;
                        }
                        bVar.d("select");
                        bVar.f7123g = iVar;
                        return bVar.f7040k.c(iVar, bVar);
                    }
                }
                c cVar = c.InSelect;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            }
            bVar.k(this);
            bVar.d("select");
            bVar.f7123g = iVar;
            return bVar.f7040k.c(iVar, bVar);
        }
    },
    AfterBody {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (!iVar.e() || !((i.g) iVar).f7084c.equals("html")) {
                if (iVar.d()) {
                    return true;
                }
                bVar.k(this);
                c cVar2 = c.InBody;
                bVar.f7040k = cVar2;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            } else if (bVar.v) {
                bVar.k(this);
                return false;
            } else {
                bVar.f7040k = c.AfterAfterBody;
                return true;
            }
        }
    },
    InFrameset {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                    c cVar = c.InBody;
                    bVar.f7123g = hVar;
                    return cVar.c(hVar, bVar);
                } else if (c2 == 1) {
                    bVar.t(hVar);
                } else if (c2 == 2) {
                    bVar.w(hVar);
                } else if (c2 != 3) {
                    bVar.k(this);
                    return false;
                } else {
                    c cVar2 = c.InHead;
                    bVar.f7123g = hVar;
                    return cVar2.c(hVar, bVar);
                }
            } else if (!iVar.e() || !((i.g) iVar).f7084c.equals("frameset")) {
                if (!iVar.d()) {
                    bVar.k(this);
                    return false;
                } else if (!bVar.a().f7018c.b.equals("html")) {
                    bVar.k(this);
                }
            } else if (bVar.a().f7018c.b.equals("html")) {
                bVar.k(this);
                return false;
            } else {
                bVar.E();
                if (!bVar.v && !bVar.a().f7018c.b.equals("frameset")) {
                    bVar.f7040k = c.AfterFrameset;
                }
            }
            return true;
        }
    },
    AfterFrameset {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
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
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.e() && ((i.g) iVar).f7084c.equals("html")) {
                bVar.f7040k = c.AfterAfterFrameset;
                return true;
            } else if (iVar.f() && ((i.h) iVar).f7084c.equals("noframes")) {
                c cVar2 = c.InHead;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            } else if (iVar.d()) {
                return true;
            } else {
                bVar.k(this);
                return false;
            }
        }
    },
    AfterAfterBody {
        /* JADX DEBUG: Failed to insert an additional move for type inference into block B:61:0x0055 */
        /* JADX DEBUG: Failed to insert an additional move for type inference into block B:68:0x0080 */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v2, types: [k.a.e.l] */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x006b  */
        /* JADX WARNING: Removed duplicated region for block: B:57:0x00ac A[EDGE_INSN: B:57:0x00ac->B:46:0x00ac ?: BREAK  , SYNTHETIC] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // k.a.f.c
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean c(k.a.f.i r12, k.a.f.b r13) {
            /*
                r11 = this;
                boolean r0 = r12.b()
                if (r0 == 0) goto L_0x000d
                k.a.f.i$d r12 = (k.a.f.i.d) r12
                r13.v(r12)
                goto L_0x00b7
            L_0x000d:
                boolean r0 = r12.c()
                if (r0 != 0) goto L_0x00c7
                boolean r0 = r12.f()
                java.lang.String r1 = "html"
                if (r0 == 0) goto L_0x0028
                r0 = r12
                k.a.f.i$h r0 = (k.a.f.i.h) r0
                java.lang.String r0 = r0.f7084c
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0028
                goto L_0x00c7
            L_0x0028:
                boolean r0 = k.a.f.c.a(r12)
                if (r0 == 0) goto L_0x00b1
                k.a.e.h r0 = r13.F(r1)
                k.a.f.i$c r12 = (k.a.f.i.c) r12
                r13.u(r12)
                java.util.ArrayList<k.a.e.h> r12 = r13.f7121e
                r12.add(r0)
                java.util.ArrayList<k.a.e.h> r12 = r13.f7121e
                java.lang.String r13 = "body"
                r1 = 0
                if (r0 == 0) goto L_0x00b0
                j.b.q(r13)
                k.a.g.d r13 = k.a.g.g.h(r13)
                k.a.g.e r2 = k.a.g.e.f7129d
                k.a.g.e r3 = k.a.g.e.SKIP_CHILDREN
                k.a.g.e r4 = k.a.g.e.STOP
                k.a.g.e r5 = k.a.g.e.CONTINUE
                r6 = 0
                r7 = r0
                r8 = 0
            L_0x0055:
                if (r7 == 0) goto L_0x00ac
                boolean r9 = r7 instanceof k.a.e.h
                if (r9 == 0) goto L_0x0067
                r9 = r7
                k.a.e.h r9 = (k.a.e.h) r9
                boolean r10 = r13.a(r0, r9)
                if (r10 == 0) goto L_0x0067
                r1 = r9
                r9 = r4
                goto L_0x0068
            L_0x0067:
                r9 = r5
            L_0x0068:
                if (r9 != r4) goto L_0x006b
                goto L_0x00ac
            L_0x006b:
                if (r9 != r5) goto L_0x0080
                int r10 = r7.f()
                if (r10 <= 0) goto L_0x0080
                java.util.List r7 = r7.l()
                java.lang.Object r7 = r7.get(r6)
                k.a.e.l r7 = (k.a.e.l) r7
                int r8 = r8 + 1
                goto L_0x0055
            L_0x0080:
                k.a.e.l r10 = r7.p()
                if (r10 != 0) goto L_0x0099
                if (r8 <= 0) goto L_0x0099
                if (r9 == r5) goto L_0x008c
                if (r9 != r3) goto L_0x008d
            L_0x008c:
                r9 = r5
            L_0x008d:
                k.a.e.l r10 = r7.a
                int r8 = r8 + -1
                if (r9 != r2) goto L_0x0096
                r7.w()
            L_0x0096:
                r9 = r5
                r7 = r10
                goto L_0x0080
            L_0x0099:
                if (r9 == r5) goto L_0x009d
                if (r9 != r3) goto L_0x009e
            L_0x009d:
                r9 = r5
            L_0x009e:
                if (r7 != r0) goto L_0x00a1
                goto L_0x00ac
            L_0x00a1:
                k.a.e.l r10 = r7.p()
                if (r9 != r2) goto L_0x00aa
                r7.w()
            L_0x00aa:
                r7 = r10
                goto L_0x0055
            L_0x00ac:
                r12.add(r1)
                goto L_0x00b7
            L_0x00b0:
                throw r1
            L_0x00b1:
                boolean r0 = r12.d()
                if (r0 == 0) goto L_0x00b9
            L_0x00b7:
                r12 = 1
                return r12
            L_0x00b9:
                r13.k(r11)
                k.a.f.c r0 = k.a.f.c.InBody
                r13.f7040k = r0
                r13.f7123g = r12
                boolean r12 = r0.c(r12, r13)
                return r12
            L_0x00c7:
                k.a.f.c r0 = k.a.f.c.InBody
                r13.f7123g = r12
                boolean r12 = r0.c(r12, r13)
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.f.c.m.c(k.a.f.i, k.a.f.b):boolean");
        }
    },
    AfterAfterFrameset {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            if (iVar.b()) {
                bVar.v((i.d) iVar);
                return true;
            } else if (iVar.c() || c.a(iVar) || (iVar.f() && ((i.h) iVar).f7084c.equals("html"))) {
                c cVar = c.InBody;
                bVar.f7123g = iVar;
                return cVar.c(iVar, bVar);
            } else if (iVar.d()) {
                return true;
            } else {
                if (!iVar.f() || !((i.h) iVar).f7084c.equals("noframes")) {
                    bVar.k(this);
                    return false;
                }
                c cVar2 = c.InHead;
                bVar.f7123g = iVar;
                return cVar2.c(iVar, bVar);
            }
        }
    },
    ForeignContent {
        @Override // k.a.f.c
        public boolean c(i iVar, b bVar) {
            return true;
        }
    };
    
    public static final String x = String.valueOf((char) 0);

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

    c(k kVar) {
    }

    public static boolean a(i iVar) {
        if (iVar.a()) {
            return k.a.d.a.e(((i.c) iVar).b);
        }
        return false;
    }

    public static void b(i.h hVar, b bVar) {
        bVar.f7119c.f7097c = l.Rawtext;
        bVar.f7041l = bVar.f7040k;
        bVar.f7040k = Text;
        bVar.t(hVar);
    }

    public abstract boolean c(i iVar, b bVar);
}
