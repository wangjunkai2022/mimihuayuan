package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import k.a.e.n;
import k.a.f.i;

/* compiled from: HtmlTreeBuilder.java */
/* loaded from: classes2.dex */
public class b extends m {

    /* renamed from: k  reason: collision with root package name */
    public c f7115k;

    /* renamed from: l  reason: collision with root package name */
    public c f7116l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7117m;
    public k.a.e.h n;
    public k.a.e.j o;
    public k.a.e.h p;
    public ArrayList<k.a.e.h> q;
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
    public static final String[] C = {"dd", "dt", "li", "optgroup", "option", com.umeng.commonsdk.proguard.e.ao, "rp", "rt"};
    public static final String[] D = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", SupportMenuInflater.XML_MENU, "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", com.umeng.commonsdk.proguard.e.ao, "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", NotificationCompatJellybean.KEY_TITLE, "tr", "ul", "wbr", "xmp"};

    public final void A(k.a.e.l lVar) {
        k.a.e.j jVar;
        if (this.f7196e.isEmpty()) {
            this.f7195d.z(lVar);
        } else if (this.u) {
            y(lVar);
        } else {
            a().z(lVar);
        }
        if (lVar instanceof k.a.e.h) {
            k.a.e.h hVar = (k.a.e.h) lVar;
            if (!hVar.f7093c.f7151h || (jVar = this.o) == null) {
                return;
            }
            jVar.f7105i.add(hVar);
        }
    }

    public final boolean B(ArrayList<k.a.e.h> arrayList, k.a.e.h hVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == hVar) {
                return true;
            }
        }
        return false;
    }

    public boolean C(k.a.e.h hVar) {
        return k.a.d.a.d(hVar.f7093c.b, D);
    }

    public boolean D(k.a.e.h hVar) {
        return B(this.f7196e, hVar);
    }

    public k.a.e.h E() {
        return this.f7196e.remove(this.f7196e.size() - 1);
    }

    public k.a.e.h F(String str) {
        for (int size = this.f7196e.size() - 1; size >= 0; size--) {
            k.a.e.h hVar = this.f7196e.get(size);
            this.f7196e.remove(size);
            if (hVar.f7093c.b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    public void G(k.a.e.h hVar) {
        int size = this.q.size() - 1;
        int i2 = 0;
        while (true) {
            if (size >= 0) {
                k.a.e.h hVar2 = this.q.get(size);
                if (hVar2 == null) {
                    break;
                }
                if (hVar.f7093c.b.equals(hVar2.f7093c.b) && hVar.d().equals(hVar2.d())) {
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

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0048 -> B:19:0x004c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void H() {
        /*
            r8 = this;
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r0 = r0.size()
            r1 = 0
            if (r0 <= 0) goto L18
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r2 = r0.size()
            int r2 = r2 + (-1)
            java.lang.Object r0 = r0.get(r2)
            k.a.e.h r0 = (k.a.e.h) r0
            goto L19
        L18:
            r0 = r1
        L19:
            if (r0 == 0) goto L88
            java.util.ArrayList<k.a.e.h> r2 = r8.f7196e
            boolean r2 = r8.B(r2, r0)
            if (r2 == 0) goto L25
            goto L88
        L25:
            java.util.ArrayList<k.a.e.h> r2 = r8.q
            int r2 = r2.size()
            r3 = 1
            int r2 = r2 - r3
            r4 = r2
        L2e:
            if (r4 != 0) goto L33
            r5 = r4
            r4 = r8
            goto L4c
        L33:
            java.util.ArrayList<k.a.e.h> r0 = r8.q
            int r4 = r4 + (-1)
            java.lang.Object r0 = r0.get(r4)
            k.a.e.h r0 = (k.a.e.h) r0
            if (r0 == 0) goto L47
            java.util.ArrayList<k.a.e.h> r5 = r8.f7196e
            boolean r5 = r8.B(r5, r0)
            if (r5 == 0) goto L2e
        L47:
            r3 = r8
        L48:
            r5 = 0
            r5 = r4
            r4 = r3
            r3 = 0
        L4c:
            if (r3 != 0) goto L58
            java.util.ArrayList<k.a.e.h> r0 = r4.q
            int r5 = r5 + 1
            java.lang.Object r0 = r0.get(r5)
            k.a.e.h r0 = (k.a.e.h) r0
        L58:
            j.b.s(r0)
            k.a.f.h r3 = r0.f7093c
            java.lang.String r3 = r3.b
            k.a.e.h r6 = new k.a.e.h
            k.a.f.f r7 = r4.f7199h
            k.a.f.h r3 = k.a.f.h.a(r3, r7)
            r6.<init>(r3, r1, r1)
            r4.A(r6)
            java.util.ArrayList<k.a.e.h> r3 = r4.f7196e
            r3.add(r6)
            k.a.e.b r3 = r6.d()
            k.a.e.b r7 = r0.d()
            r3.c(r7)
            java.util.ArrayList<k.a.e.h> r3 = r4.q
            r3.set(r5, r6)
            if (r5 != r2) goto L85
            goto L88
        L85:
            r3 = r4
            r4 = r5
            goto L48
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.b.H():void");
    }

    public void I(k.a.e.h hVar) {
        int size = this.q.size();
        do {
            size--;
            if (size < 0) {
                return;
            }
        } while (this.q.get(size) != hVar);
        this.q.remove(size);
    }

    public boolean J(k.a.e.h hVar) {
        for (int size = this.f7196e.size() - 1; size >= 0; size--) {
            if (this.f7196e.get(size) == hVar) {
                this.f7196e.remove(size);
                return true;
            }
        }
        return false;
    }

    public void K() {
        boolean z2 = false;
        for (int size = this.f7196e.size() - 1; size >= 0; size--) {
            k.a.e.h hVar = this.f7196e.get(size);
            if (size == 0) {
                hVar = this.p;
                z2 = true;
            }
            String str = hVar.f7093c.b;
            if ("select".equals(str)) {
                this.f7115k = c.p;
                return;
            } else if (!"td".equals(str) && (!"th".equals(str) || z2)) {
                if ("tr".equals(str)) {
                    this.f7115k = c.n;
                    return;
                } else if (!"tbody".equals(str) && !"thead".equals(str) && !"tfoot".equals(str)) {
                    if ("caption".equals(str)) {
                        this.f7115k = c.f7126k;
                        return;
                    } else if ("colgroup".equals(str)) {
                        this.f7115k = c.f7127l;
                        return;
                    } else if ("table".equals(str)) {
                        this.f7115k = c.f7124i;
                        return;
                    } else if ("head".equals(str)) {
                        this.f7115k = c.f7122g;
                        return;
                    } else if ("body".equals(str)) {
                        this.f7115k = c.f7122g;
                        return;
                    } else if ("frameset".equals(str)) {
                        this.f7115k = c.s;
                        return;
                    } else if ("html".equals(str)) {
                        this.f7115k = c.f7118c;
                        return;
                    } else if (z2) {
                        this.f7115k = c.f7122g;
                        return;
                    }
                } else {
                    this.f7115k = c.f7128m;
                    return;
                }
            } else {
                this.f7115k = c.o;
                return;
            }
        }
    }

    @Override // k.a.f.m
    public void b(Reader reader, String str, g gVar) {
        super.b(reader, str, gVar);
        this.f7115k = c.a;
        this.f7116l = null;
        this.f7117m = false;
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
        this.f7198g = iVar;
        return this.f7115k.c(iVar, this);
    }

    public k.a.e.h f(k.a.e.h hVar) {
        for (int size = this.f7196e.size() - 1; size >= 0; size--) {
            if (this.f7196e.get(size) == hVar) {
                return this.f7196e.get(size - 1);
            }
        }
        return null;
    }

    public void g() {
        k.a.e.h hVar;
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
        int size = this.f7196e.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            k.a.e.h hVar = this.f7196e.get(size);
            if (k.a.d.a.c(hVar.f7093c.b, strArr) || hVar.f7093c.b.equals("html")) {
                return;
            }
            this.f7196e.remove(size);
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
            this.a.a.add(new d(this.b.t(), "Unexpected token [%s] when in state [%s]", this.f7198g.getClass().getSimpleName(), cVar));
        }
    }

    public void l(String str) {
        while (str != null && !a().f7093c.b.equals(str) && k.a.d.a.d(a().f7093c.b, C)) {
            E();
        }
    }

    public k.a.e.h m(String str) {
        for (int size = this.q.size() - 1; size >= 0; size--) {
            k.a.e.h hVar = this.q.get(size);
            if (hVar == null) {
                return null;
            }
            if (hVar.f7093c.b.equals(str)) {
                return hVar;
            }
        }
        return null;
    }

    public k.a.e.h n(String str) {
        k.a.e.h hVar;
        int size = this.f7196e.size();
        do {
            size--;
            if (size < 0) {
                return null;
            }
            hVar = this.f7196e.get(size);
        } while (!hVar.f7093c.b.equals(str));
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
        for (int size = this.f7196e.size() - 1; size >= 0; size--) {
            String str2 = this.f7196e.get(size).f7093c.b;
            if (str2.equals(str)) {
                return true;
            }
            if (!k.a.d.a.d(str2, B)) {
                return false;
            }
        }
        throw new IllegalArgumentException("Should not be reachable");
    }

    public final boolean r(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f7196e.size() - 1;
        int i2 = size > 100 ? size - 100 : 0;
        while (size >= i2) {
            String str = this.f7196e.get(size).f7093c.b;
            if (k.a.d.a.d(str, strArr)) {
                return true;
            }
            if (k.a.d.a.d(str, strArr2)) {
                return false;
            }
            if (strArr3 != null && k.a.d.a.d(str, strArr3)) {
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

    public k.a.e.h t(i.h hVar) {
        k.a.e.b bVar = hVar.f7166j;
        if (bVar != null) {
            int i2 = 0;
            if (!(bVar.a == 0)) {
                k.a.e.b bVar2 = hVar.f7166j;
                f fVar = this.f7199h;
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
        if (hVar.f7165i) {
            k.a.e.h w = w(hVar);
            this.f7196e.add(w);
            k kVar = this.f7194c;
            kVar.f7172c = l.a;
            i.g gVar = this.s;
            gVar.g();
            gVar.q(w.f7093c.a);
            kVar.g(gVar);
            return w;
        }
        h a = h.a(hVar.p(), this.f7199h);
        f fVar2 = this.f7199h;
        k.a.e.b bVar3 = hVar.f7166j;
        fVar2.a(bVar3);
        k.a.e.h hVar2 = new k.a.e.h(a, null, bVar3);
        A(hVar2);
        this.f7196e.add(hVar2);
        return hVar2;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("TreeBuilder{currentToken=");
        o.append(this.f7198g);
        o.append(", state=");
        o.append(this.f7115k);
        o.append(", currentElement=");
        o.append(a());
        o.append('}');
        return o.toString();
    }

    public void u(i.c cVar) {
        k.a.e.l eVar;
        k.a.e.h a = a();
        if (a == null) {
            a = this.f7195d;
        }
        String str = a.f7093c.b;
        String str2 = cVar.b;
        if (cVar instanceof i.b) {
            eVar = new k.a.e.c(str2);
        } else if (!str.equals("script") && !str.equals("style")) {
            eVar = new n(str2);
        } else {
            eVar = new k.a.e.e(str2);
        }
        a.z(eVar);
    }

    public void v(i.d dVar) {
        String str = dVar.f7153c;
        if (str == null) {
            str = dVar.b.toString();
        }
        A(new k.a.e.d(str));
    }

    public k.a.e.h w(i.h hVar) {
        h a = h.a(hVar.p(), this.f7199h);
        f fVar = this.f7199h;
        k.a.e.b bVar = hVar.f7166j;
        fVar.a(bVar);
        k.a.e.h hVar2 = new k.a.e.h(a, null, bVar);
        A(hVar2);
        if (hVar.f7165i) {
            if (h.f7142j.containsKey(a.a)) {
                if (!a.f7148e) {
                    this.f7194c.j("Tag cannot be self closing; not a void tag");
                }
            } else {
                a.f7149f = true;
            }
        }
        return hVar2;
    }

    public k.a.e.j x(i.h hVar, boolean z2) {
        h a = h.a(hVar.p(), this.f7199h);
        f fVar = this.f7199h;
        k.a.e.b bVar = hVar.f7166j;
        fVar.a(bVar);
        k.a.e.j jVar = new k.a.e.j(a, null, bVar);
        this.o = jVar;
        A(jVar);
        if (z2) {
            this.f7196e.add(jVar);
        }
        return jVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void y(k.a.e.l r10) {
        /*
            r9 = this;
            java.lang.String r0 = "table"
            k.a.e.h r0 = r9.n(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1a
            k.a.e.l r3 = r0.a
            r4 = r3
            k.a.e.h r4 = (k.a.e.h) r4
            if (r4 == 0) goto L15
            k.a.e.h r3 = (k.a.e.h) r3
            r4 = 1
            goto L23
        L15:
            k.a.e.h r3 = r9.f(r0)
            goto L22
        L1a:
            java.util.ArrayList<k.a.e.h> r3 = r9.f7196e
            java.lang.Object r3 = r3.get(r1)
            k.a.e.h r3 = (k.a.e.h) r3
        L22:
            r4 = 0
        L23:
            if (r4 == 0) goto Lb0
            j.b.s(r0)
            j.b.s(r10)
            k.a.e.l r3 = r0.a
            j.b.s(r3)
            k.a.e.l r3 = r0.a
            int r0 = r0.b
            k.a.e.l[] r4 = new k.a.e.l[r2]
            r4[r1] = r10
            r10 = 0
            if (r3 == 0) goto Laf
            j.b.s(r4)
            java.util.List r5 = r3.l()
            r6 = r4[r1]
            k.a.e.l r6 = r6.u()
            if (r6 == 0) goto L7c
            int r7 = r6.f()
            if (r7 != r2) goto L7c
            java.util.List r10 = r6.g()
            r1 = 1
        L55:
            int r7 = r1 + (-1)
            if (r1 <= 0) goto L64
            r1 = r4[r7]
            java.lang.Object r8 = r10.get(r7)
            if (r1 == r8) goto L62
            goto L64
        L62:
            r1 = r7
            goto L55
        L64:
            r6.k()
            java.util.List r10 = java.util.Arrays.asList(r4)
            r5.addAll(r0, r10)
        L6e:
            int r10 = r2 + (-1)
            if (r2 <= 0) goto L78
            r1 = r4[r10]
            r1.a = r3
            r2 = r10
            goto L6e
        L78:
            r3.v(r0)
            goto Lb3
        L7c:
            r6 = 0
        L7d:
            if (r6 >= r2) goto L8e
            r7 = r4[r6]
            if (r7 == 0) goto L86
            int r6 = r6 + 1
            goto L7d
        L86:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Array must not contain any null objects"
            r10.<init>(r0)
            throw r10
        L8e:
            if (r1 >= r2) goto La4
            r6 = r4[r1]
            if (r6 == 0) goto La3
            j.b.s(r3)
            k.a.e.l r7 = r6.a
            if (r7 == 0) goto L9e
            r7.x(r6)
        L9e:
            r6.a = r3
            int r1 = r1 + 1
            goto L8e
        La3:
            throw r10
        La4:
            java.util.List r10 = java.util.Arrays.asList(r4)
            r5.addAll(r0, r10)
            r3.v(r0)
            goto Lb3
        Laf:
            throw r10
        Lb0:
            r3.z(r10)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.b.y(k.a.e.l):void");
    }

    public void z() {
        this.q.add(null);
    }
}
