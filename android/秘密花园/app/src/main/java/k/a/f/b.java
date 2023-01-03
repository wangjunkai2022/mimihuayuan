package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import com.umeng.commonsdk.proguard.e;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import k.a.d.a;
import k.a.e.c;
import k.a.e.d;
import k.a.e.h;
import k.a.e.j;
import k.a.e.l;
import k.a.e.n;
import k.a.f.i;

/* compiled from: HtmlTreeBuilder.java */
/* loaded from: classes.dex */
public class b extends m {

    /* renamed from: k  reason: collision with root package name */
    public c f7040k;

    /* renamed from: l  reason: collision with root package name */
    public c f7041l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7042m;
    public h n;
    public j o;
    public h p;
    public ArrayList<h> q;
    public List<String> r;
    public i.g s;
    public boolean t;
    public boolean u;
    public boolean v;
    public String[] w = {null};
    public static final String[] x = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};
    public static final String[] y = {"ol", "ul"};
    public static final String[] z = {"button"};
    public static final String[] A = {"html", "table"};
    public static final String[] B = {"optgroup", "option"};
    public static final String[] C = {"dd", "dt", "li", "optgroup", "option", e.ao, "rp", "rt"};
    public static final String[] D = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", SupportMenuInflater.XML_MENU, "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", e.ao, "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", NotificationCompatJellybean.KEY_TITLE, "tr", "ul", "wbr", "xmp"};

    public final void A(l lVar) {
        j jVar;
        if (this.f7121e.isEmpty()) {
            this.f7120d.z(lVar);
        } else if (this.u) {
            y(lVar);
        } else {
            a().z(lVar);
        }
        if (lVar instanceof h) {
            h hVar = (h) lVar;
            if (hVar.f7018c.f7076h && (jVar = this.o) != null) {
                jVar.f7030i.add(hVar);
            }
        }
    }

    public final boolean B(ArrayList<h> arrayList, h hVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == hVar) {
                return true;
            }
        }
        return false;
    }

    public boolean C(h hVar) {
        return a.d(hVar.f7018c.b, D);
    }

    public boolean D(h hVar) {
        return B(this.f7121e, hVar);
    }

    public h E() {
        return this.f7121e.remove(this.f7121e.size() - 1);
    }

    public h F(String str) {
        for (int size = this.f7121e.size() - 1; size >= 0; size--) {
            h hVar = this.f7121e.get(size);
            this.f7121e.remove(size);
            if (hVar.f7018c.b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    public void G(h hVar) {
        int size = this.q.size() - 1;
        int i2 = 0;
        while (true) {
            if (size >= 0) {
                h hVar2 = this.q.get(size);
                if (hVar2 == null) {
                    break;
                }
                if (hVar.f7018c.b.equals(hVar2.f7018c.b) && hVar.d().equals(hVar2.d())) {
                    i2++;
                }
                if (i2 == 3) {
                    this.q.remove(size);
                    break;
                }
                size--;
            } else {
                break;
            }
        }
        this.q.add(hVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void H() {
        /*
            r8 = this;
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r0 = r0.size()
            r1 = 0
            if (r0 <= 0) goto L_0x0018
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r2 = r0.size()
            int r2 = r2 + -1
            java.lang.Object r0 = r0.get(r2)
            k.a.e.h r0 = (k.a.e.h) r0
            goto L_0x0019
        L_0x0018:
            r0 = r1
        L_0x0019:
            if (r0 == 0) goto L_0x0088
            java.util.ArrayList<k.a.e.h> r2 = r8.f7121e
            boolean r2 = r8.B(r2, r0)
            if (r2 == 0) goto L_0x0025
            goto L_0x0088
        L_0x0025:
            java.util.ArrayList<k.a.e.h> r2 = r8.q
            int r2 = r2.size()
            r3 = 1
            int r2 = r2 - r3
            r4 = r2
        L_0x002e:
            if (r4 != 0) goto L_0x0033
            r5 = r4
            r4 = r8
            goto L_0x004c
        L_0x0033:
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r4 = r4 + -1
            java.lang.Object r0 = r0.get(r4)
            k.a.e.h r0 = (k.a.e.h) r0
            if (r0 == 0) goto L_0x0047
            java.util.ArrayList<k.a.e.h> r5 = r8.f7121e
            boolean r5 = r8.B(r5, r0)
            if (r5 == 0) goto L_0x002e
        L_0x0047:
            r3 = r8
        L_0x0048:
            r5 = 0
            r5 = r4
            r4 = r3
            r3 = 0
        L_0x004c:
            if (r3 != 0) goto L_0x0058
            java.util.ArrayList<k.a.e.h> r0 = r4.q
            int r5 = r5 + 1
            java.lang.Object r0 = r0.get(r5)
            k.a.e.h r0 = (k.a.e.h) r0
        L_0x0058:
            j.b.s(r0)
            k.a.f.h r3 = r0.f7018c
            java.lang.String r3 = r3.b
            k.a.e.h r6 = new k.a.e.h
            k.a.f.f r7 = r4.f7124h
            k.a.f.h r3 = k.a.f.h.a(r3, r7)
            r6.<init>(r3, r1, r1)
            r4.A(r6)
            java.util.ArrayList<k.a.e.h> r3 = r4.f7121e
            r3.add(r6)
            k.a.e.b r3 = r6.d()
            k.a.e.b r7 = r0.d()
            r3.c(r7)
            java.util.ArrayList<k.a.e.h> r3 = r4.q
            r3.set(r5, r6)
            if (r5 != r2) goto L_0x0085
            goto L_0x0088
        L_0x0085:
            r3 = r4
            r4 = r5
            goto L_0x0048
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.b.H():void");
    }

    public void I(h hVar) {
        int size = this.q.size();
        do {
            size--;
            if (size < 0) {
                return;
            }
        } while (this.q.get(size) != hVar);
        this.q.remove(size);
    }

    public boolean J(h hVar) {
        for (int size = this.f7121e.size() - 1; size >= 0; size--) {
            if (this.f7121e.get(size) == hVar) {
                this.f7121e.remove(size);
                return true;
            }
        }
        return false;
    }

    public void K() {
        boolean z2 = false;
        for (int size = this.f7121e.size() - 1; size >= 0; size--) {
            h hVar = this.f7121e.get(size);
            if (size == 0) {
                hVar = this.p;
                z2 = true;
            }
            String str = hVar.f7018c.b;
            if ("select".equals(str)) {
                this.f7040k = c.InSelect;
                return;
            } else if ("td".equals(str) || ("th".equals(str) && !z2)) {
                this.f7040k = c.InCell;
                return;
            } else if ("tr".equals(str)) {
                this.f7040k = c.InRow;
                return;
            } else if ("tbody".equals(str) || "thead".equals(str) || "tfoot".equals(str)) {
                this.f7040k = c.InTableBody;
                return;
            } else if ("caption".equals(str)) {
                this.f7040k = c.InCaption;
                return;
            } else if ("colgroup".equals(str)) {
                this.f7040k = c.InColumnGroup;
                return;
            } else if ("table".equals(str)) {
                this.f7040k = c.InTable;
                return;
            } else if ("head".equals(str)) {
                this.f7040k = c.InBody;
                return;
            } else if ("body".equals(str)) {
                this.f7040k = c.InBody;
                return;
            } else if ("frameset".equals(str)) {
                this.f7040k = c.InFrameset;
                return;
            } else if ("html".equals(str)) {
                this.f7040k = c.BeforeHead;
                return;
            } else if (z2) {
                this.f7040k = c.InBody;
                return;
            }
        }
    }

    @Override // k.a.f.m
    public void b(Reader reader, String str, g gVar) {
        super.b(reader, str, gVar);
        this.f7040k = c.Initial;
        this.f7041l = null;
        this.f7042m = false;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = new ArrayList<>();
        this.r = new ArrayList();
        this.s = new i.g();
        this.t = true;
        this.u = false;
        this.v = false;
    }

    @Override // k.a.f.m
    public boolean c(i iVar) {
        this.f7123g = iVar;
        return this.f7040k.c(iVar, this);
    }

    public h f(h hVar) {
        for (int size = this.f7121e.size() - 1; size >= 0; size--) {
            if (this.f7121e.get(size) == hVar) {
                return this.f7121e.get(size - 1);
            }
        }
        return null;
    }

    public void g() {
        h hVar;
        while (!this.q.isEmpty()) {
            int size = this.q.size();
            if (size > 0) {
                hVar = this.q.remove(size - 1);
                continue;
            } else {
                hVar = null;
                continue;
            }
            if (hVar == null) {
                return;
            }
        }
    }

    public final void h(String... strArr) {
        int size = this.f7121e.size();
        while (true) {
            size--;
            if (size >= 0) {
                h hVar = this.f7121e.get(size);
                if (!a.c(hVar.f7018c.b, strArr) && !hVar.f7018c.b.equals("html")) {
                    this.f7121e.remove(size);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public void i() {
        h("tbody", "tfoot", "thead", "template");
    }

    public void j() {
        h("table");
    }

    public void k(c cVar) {
        if (this.a.a.b()) {
            this.a.a.add(new d(this.b.t(), "Unexpected token [%s] when in state [%s]", this.f7123g.getClass().getSimpleName(), cVar));
        }
    }

    public void l(String str) {
        while (str != null && !a().f7018c.b.equals(str) && a.d(a().f7018c.b, C)) {
            E();
        }
    }

    public h m(String str) {
        for (int size = this.q.size() - 1; size >= 0; size--) {
            h hVar = this.q.get(size);
            if (hVar == null) {
                return null;
            }
            if (hVar.f7018c.b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    public h n(String str) {
        h hVar;
        int size = this.f7121e.size();
        do {
            size--;
            if (size < 0) {
                return null;
            }
            hVar = this.f7121e.get(size);
        } while (!hVar.f7018c.b.equals(str));
        return hVar;
    }

    public boolean o(String str) {
        String[] strArr = z;
        String[] strArr2 = x;
        String[] strArr3 = this.w;
        strArr3[0] = str;
        return r(strArr3, strArr2, strArr);
    }

    public boolean p(String str) {
        String[] strArr = x;
        String[] strArr2 = this.w;
        strArr2[0] = str;
        return r(strArr2, strArr, null);
    }

    public boolean q(String str) {
        for (int size = this.f7121e.size() - 1; size >= 0; size--) {
            String str2 = this.f7121e.get(size).f7018c.b;
            if (str2.equals(str)) {
                return true;
            }
            if (!a.d(str2, B)) {
                return false;
            }
        }
        throw new IllegalArgumentException("Should not be reachable");
    }

    public final boolean r(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f7121e.size() - 1;
        int i2 = size > 100 ? size - 100 : 0;
        while (size >= i2) {
            String str = this.f7121e.get(size).f7018c.b;
            if (a.d(str, strArr)) {
                return true;
            }
            if (a.d(str, strArr2)) {
                return false;
            }
            if (strArr3 != null && a.d(str, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    public boolean s(String str) {
        String[] strArr = A;
        String[] strArr2 = this.w;
        strArr2[0] = str;
        return r(strArr2, strArr, null);
    }

    public h t(i.h hVar) {
        k.a.e.b bVar = hVar.f7091j;
        if (bVar != null) {
            int i2 = 0;
            if (!(bVar.a == 0)) {
                k.a.e.b bVar2 = hVar.f7091j;
                f fVar = this.f7124h;
                if (!(bVar2.a == 0)) {
                    boolean z2 = fVar.b;
                    int i3 = 0;
                    while (i2 < bVar2.b.length) {
                        int i4 = i2 + 1;
                        int i5 = i4;
                        while (true) {
                            String[] strArr = bVar2.b;
                            if (i5 < strArr.length && strArr[i5] != null) {
                                if (!z2 || !strArr[i2].equals(strArr[i5])) {
                                    if (!z2) {
                                        String[] strArr2 = bVar2.b;
                                        if (!strArr2[i2].equalsIgnoreCase(strArr2[i5])) {
                                        }
                                    }
                                    i5++;
                                }
                                i3++;
                                bVar2.p(i5);
                                i5--;
                                i5++;
                            }
                        }
                        i2 = i4;
                    }
                    i2 = i3;
                }
                if (i2 > 0) {
                    e eVar = this.a.a;
                    if (eVar.b()) {
                        eVar.add(new d(this.b.t(), "Duplicate attribute"));
                    }
                }
            }
        }
        if (hVar.f7090i) {
            h w = w(hVar);
            this.f7121e.add(w);
            k kVar = this.f7119c;
            kVar.f7097c = l.Data;
            i.g gVar = this.s;
            gVar.g();
            gVar.q(w.f7018c.a);
            kVar.g(gVar);
            return w;
        }
        h a = h.a(hVar.p(), this.f7124h);
        f fVar2 = this.f7124h;
        k.a.e.b bVar3 = hVar.f7091j;
        fVar2.a(bVar3);
        h hVar2 = new h(a, null, bVar3);
        A(hVar2);
        this.f7121e.add(hVar2);
        return hVar2;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("TreeBuilder{currentToken=");
        o.append(this.f7123g);
        o.append(", state=");
        o.append(this.f7040k);
        o.append(", currentElement=");
        o.append(a());
        o.append('}');
        return o.toString();
    }

    public void u(i.c cVar) {
        l lVar;
        h a = a();
        if (a == null) {
            a = this.f7120d;
        }
        String str = a.f7018c.b;
        String str2 = cVar.b;
        if (cVar instanceof i.b) {
            lVar = new c(str2);
        } else if (str.equals("script") || str.equals("style")) {
            lVar = new k.a.e.e(str2);
        } else {
            lVar = new n(str2);
        }
        a.z(lVar);
    }

    public void v(i.d dVar) {
        String str = dVar.f7078c;
        if (str == null) {
            str = dVar.b.toString();
        }
        A(new d(str));
    }

    public h w(i.h hVar) {
        h a = h.a(hVar.p(), this.f7124h);
        f fVar = this.f7124h;
        k.a.e.b bVar = hVar.f7091j;
        fVar.a(bVar);
        h hVar2 = new h(a, null, bVar);
        A(hVar2);
        if (hVar.f7090i) {
            if (!h.f7067j.containsKey(a.a)) {
                a.f7074f = true;
            } else if (!a.f7073e) {
                this.f7119c.j("Tag cannot be self closing; not a void tag");
            }
        }
        return hVar2;
    }

    public j x(i.h hVar, boolean z2) {
        h a = h.a(hVar.p(), this.f7124h);
        f fVar = this.f7124h;
        k.a.e.b bVar = hVar.f7091j;
        fVar.a(bVar);
        j jVar = new j(a, null, bVar);
        this.o = jVar;
        A(jVar);
        if (z2) {
            this.f7121e.add(jVar);
        }
        return jVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00b0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void y(k.a.e.l r10) {
        /*
            r9 = this;
            java.lang.String r0 = "table"
            k.a.e.h r0 = r9.n(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x001a
            k.a.e.l r3 = r0.a
            r4 = r3
            k.a.e.h r4 = (k.a.e.h) r4
            if (r4 == 0) goto L_0x0015
            k.a.e.h r3 = (k.a.e.h) r3
            r4 = 1
            goto L_0x0023
        L_0x0015:
            k.a.e.h r3 = r9.f(r0)
            goto L_0x0022
        L_0x001a:
            java.util.ArrayList<k.a.e.h> r3 = r9.f7121e
            java.lang.Object r3 = r3.get(r1)
            k.a.e.h r3 = (k.a.e.h) r3
        L_0x0022:
            r4 = 0
        L_0x0023:
            if (r4 == 0) goto L_0x00b0
            j.b.s(r0)
            j.b.s(r10)
            k.a.e.l r3 = r0.a
            j.b.s(r3)
            k.a.e.l r3 = r0.a
            int r0 = r0.b
            k.a.e.l[] r4 = new k.a.e.l[r2]
            r4[r1] = r10
            r10 = 0
            if (r3 == 0) goto L_0x00af
            j.b.s(r4)
            java.util.List r5 = r3.l()
            r6 = r4[r1]
            k.a.e.l r6 = r6.u()
            if (r6 == 0) goto L_0x007c
            int r7 = r6.f()
            if (r7 != r2) goto L_0x007c
            java.util.List r10 = r6.g()
            r1 = 1
        L_0x0055:
            int r7 = r1 + -1
            if (r1 <= 0) goto L_0x0064
            r1 = r4[r7]
            java.lang.Object r8 = r10.get(r7)
            if (r1 == r8) goto L_0x0062
            goto L_0x0064
        L_0x0062:
            r1 = r7
            goto L_0x0055
        L_0x0064:
            r6.k()
            java.util.List r10 = java.util.Arrays.asList(r4)
            r5.addAll(r0, r10)
        L_0x006e:
            int r10 = r2 + -1
            if (r2 <= 0) goto L_0x0078
            r1 = r4[r10]
            r1.a = r3
            r2 = r10
            goto L_0x006e
        L_0x0078:
            r3.v(r0)
            goto L_0x00b3
        L_0x007c:
            r6 = 0
        L_0x007d:
            if (r6 >= r2) goto L_0x008e
            r7 = r4[r6]
            if (r7 == 0) goto L_0x0086
            int r6 = r6 + 1
            goto L_0x007d
        L_0x0086:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Array must not contain any null objects"
            r10.<init>(r0)
            throw r10
        L_0x008e:
            if (r1 >= r2) goto L_0x00a4
            r6 = r4[r1]
            if (r6 == 0) goto L_0x00a3
            j.b.s(r3)
            k.a.e.l r7 = r6.a
            if (r7 == 0) goto L_0x009e
            r7.x(r6)
        L_0x009e:
            r6.a = r3
            int r1 = r1 + 1
            goto L_0x008e
        L_0x00a3:
            throw r10
        L_0x00a4:
            java.util.List r10 = java.util.Arrays.asList(r4)
            r5.addAll(r0, r10)
            r3.v(r0)
            goto L_0x00b3
        L_0x00af:
            throw r10
        L_0x00b0:
            r3.z(r10)
        L_0x00b3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.b.y(k.a.e.l):void");
    }

    public void z() {
        this.q.add(null);
    }
}
