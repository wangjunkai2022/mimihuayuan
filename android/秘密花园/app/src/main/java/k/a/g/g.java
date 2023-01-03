package k.a.g;

import j.b;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import k.a.d.a;
import k.a.f.j;
import k.a.g.b;
import k.a.g.d;
import k.a.g.i;

/* compiled from: QueryParser.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f7132d = {",", ">", "+", "~", " "};

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f7133e = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f7134f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f7135g = Pattern.compile("([+-])?(\\d+)");
    public j a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public List<d> f7136c = new ArrayList();

    public g(String str) {
        b.q(str);
        String trim = str.trim();
        this.b = trim;
        this.a = new j(trim);
    }

    public static d h(String str) {
        try {
            return new g(str).g();
        } catch (IllegalArgumentException e2) {
            throw new h(e2.getMessage(), new Object[0]);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x012a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(char r11) {
        /*
        // Method dump skipped, instructions count: 330
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.g.g.a(char):void");
    }

    public final int b() {
        String trim = this.a.b(")").trim();
        if (a.f(trim)) {
            return Integer.parseInt(trim);
        }
        throw new IllegalArgumentException("Index must be numeric");
    }

    public final void c(boolean z) {
        this.a.d(z ? ":containsOwn" : ":contains");
        String m2 = j.m(this.a.a('(', ')'));
        b.r(m2, ":contains(text) query must not be empty");
        if (z) {
            this.f7136c.add(new d.m(m2));
        } else {
            this.f7136c.add(new d.n(m2));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0090  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(boolean r9, boolean r10) {
        /*
            r8 = this;
            k.a.f.j r0 = r8.a
            java.lang.String r1 = ")"
            java.lang.String r0 = r0.b(r1)
            java.lang.String r0 = j.b.p(r0)
            java.util.regex.Pattern r1 = k.a.g.g.f7134f
            java.util.regex.Matcher r1 = r1.matcher(r0)
            java.util.regex.Pattern r2 = k.a.g.g.f7135g
            java.util.regex.Matcher r2 = r2.matcher(r0)
            java.lang.String r3 = "odd"
            boolean r3 = r3.equals(r0)
            r4 = 0
            r5 = 1
            r6 = 2
            if (r3 == 0) goto L_0x0026
            r0 = 1
        L_0x0024:
            r4 = 2
            goto L_0x0076
        L_0x0026:
            java.lang.String r3 = "even"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0030
            r0 = 0
            goto L_0x0024
        L_0x0030:
            boolean r3 = r1.matches()
            java.lang.String r6 = ""
            java.lang.String r7 = "^\\+"
            if (r3 == 0) goto L_0x0064
            r0 = 3
            java.lang.String r0 = r1.group(r0)
            if (r0 == 0) goto L_0x004d
            java.lang.String r0 = r1.group(r5)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r5 = java.lang.Integer.parseInt(r0)
        L_0x004d:
            r0 = 4
            java.lang.String r2 = r1.group(r0)
            if (r2 == 0) goto L_0x0061
            java.lang.String r0 = r1.group(r0)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
            r4 = r0
        L_0x0061:
            r0 = r4
            r4 = r5
            goto L_0x0076
        L_0x0064:
            boolean r1 = r2.matches()
            if (r1 == 0) goto L_0x00a8
            java.lang.String r0 = r2.group()
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
        L_0x0076:
            if (r10 == 0) goto L_0x0090
            if (r9 == 0) goto L_0x0085
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$b0 r10 = new k.a.g.d$b0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto L_0x00a7
        L_0x0085:
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$c0 r10 = new k.a.g.d$c0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto L_0x00a7
        L_0x0090:
            if (r9 == 0) goto L_0x009d
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$a0 r10 = new k.a.g.d$a0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto L_0x00a7
        L_0x009d:
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$z r10 = new k.a.g.d$z
            r10.<init>(r4, r0)
            r9.add(r10)
        L_0x00a7:
            return
        L_0x00a8:
            k.a.g.h r9 = new k.a.g.h
            java.lang.Object[] r10 = new java.lang.Object[r5]
            r10[r4] = r0
            java.lang.String r0 = "Could not parse nth-index '%s': unexpected format"
            r9.<init>(r0, r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.g.g.d(boolean, boolean):void");
    }

    public final void e() {
        if (this.a.h("#")) {
            String e2 = this.a.e();
            b.q(e2);
            this.f7136c.add(new d.p(e2));
        } else if (this.a.h(".")) {
            String e3 = this.a.e();
            b.q(e3);
            this.f7136c.add(new d.k(e3.trim()));
        } else if (this.a.k() || this.a.i("*|")) {
            j jVar = this.a;
            int i2 = jVar.b;
            while (!jVar.g() && (jVar.k() || jVar.j("*|", "|", "_", "-"))) {
                jVar.b++;
            }
            String p = b.p(jVar.a.substring(i2, jVar.b));
            b.q(p);
            if (p.startsWith("*|")) {
                this.f7136c.add(new b.C0113b(new d.j0(p), new d.k0(p.replace("*|", ":"))));
                return;
            }
            if (p.contains("|")) {
                p = p.replace("|", ":");
            }
            this.f7136c.add(new d.j0(p));
        } else if (this.a.i("[")) {
            j jVar2 = new j(this.a.a('[', ']'));
            String[] strArr = f7133e;
            int i3 = jVar2.b;
            while (!jVar2.g() && !jVar2.j(strArr)) {
                jVar2.b++;
            }
            String substring = jVar2.a.substring(i3, jVar2.b);
            j.b.q(substring);
            jVar2.f();
            if (jVar2.g()) {
                if (substring.startsWith("^")) {
                    this.f7136c.add(new d.C0114d(substring.substring(1)));
                } else {
                    this.f7136c.add(new d.b(substring));
                }
            } else if (jVar2.h("=")) {
                this.f7136c.add(new d.e(substring, jVar2.l()));
            } else if (jVar2.h("!=")) {
                this.f7136c.add(new d.i(substring, jVar2.l()));
            } else if (jVar2.h("^=")) {
                this.f7136c.add(new d.j(substring, jVar2.l()));
            } else if (jVar2.h("$=")) {
                this.f7136c.add(new d.g(substring, jVar2.l()));
            } else if (jVar2.h("*=")) {
                this.f7136c.add(new d.f(substring, jVar2.l()));
            } else if (jVar2.h("~=")) {
                this.f7136c.add(new d.h(substring, Pattern.compile(jVar2.l())));
            } else {
                throw new h("Could not parse attribute query '%s': unexpected token at '%s'", this.b, jVar2.l());
            }
        } else if (this.a.h("*")) {
            this.f7136c.add(new d.a());
        } else if (this.a.h(":lt(")) {
            this.f7136c.add(new d.t(b()));
        } else if (this.a.h(":gt(")) {
            this.f7136c.add(new d.s(b()));
        } else if (this.a.h(":eq(")) {
            this.f7136c.add(new d.q(b()));
        } else if (this.a.i(":has(")) {
            this.a.d(":has");
            String a = this.a.a('(', ')');
            j.b.r(a, ":has(el) subselect must not be empty");
            this.f7136c.add(new i.a(h(a)));
        } else if (this.a.i(":contains(")) {
            c(false);
        } else if (this.a.i(":containsOwn(")) {
            c(true);
        } else if (this.a.i(":containsData(")) {
            this.a.d(":containsData");
            String m2 = j.m(this.a.a('(', ')'));
            j.b.r(m2, ":containsData(text) query must not be empty");
            this.f7136c.add(new d.l(m2));
        } else if (this.a.i(":matches(")) {
            f(false);
        } else if (this.a.i(":matchesOwn(")) {
            f(true);
        } else if (this.a.i(":not(")) {
            this.a.d(":not");
            String a2 = this.a.a('(', ')');
            j.b.r(a2, ":not(selector) subselect must not be empty");
            this.f7136c.add(new i.d(h(a2)));
        } else if (this.a.h(":nth-child(")) {
            d(false, false);
        } else if (this.a.h(":nth-last-child(")) {
            d(true, false);
        } else if (this.a.h(":nth-of-type(")) {
            d(false, true);
        } else if (this.a.h(":nth-last-of-type(")) {
            d(true, true);
        } else if (this.a.h(":first-child")) {
            this.f7136c.add(new d.v());
        } else if (this.a.h(":last-child")) {
            this.f7136c.add(new d.x());
        } else if (this.a.h(":first-of-type")) {
            this.f7136c.add(new d.w());
        } else if (this.a.h(":last-of-type")) {
            this.f7136c.add(new d.y());
        } else if (this.a.h(":only-child")) {
            this.f7136c.add(new d.d0());
        } else if (this.a.h(":only-of-type")) {
            this.f7136c.add(new d.e0());
        } else if (this.a.h(":empty")) {
            this.f7136c.add(new d.u());
        } else if (this.a.h(":root")) {
            this.f7136c.add(new d.f0());
        } else if (this.a.h(":matchText")) {
            this.f7136c.add(new d.g0());
        } else {
            throw new h("Could not parse query '%s': unexpected token at '%s'", this.b, this.a.l());
        }
    }

    public final void f(boolean z) {
        this.a.d(z ? ":matchesOwn" : ":matches");
        String a = this.a.a('(', ')');
        j.b.r(a, ":matches(regex) query must not be empty");
        if (z) {
            this.f7136c.add(new d.i0(Pattern.compile(a)));
        } else {
            this.f7136c.add(new d.h0(Pattern.compile(a)));
        }
    }

    public d g() {
        this.a.f();
        if (this.a.j(f7132d)) {
            this.f7136c.add(new i.g());
            a(this.a.c());
        } else {
            e();
        }
        while (!this.a.g()) {
            boolean f2 = this.a.f();
            if (this.a.j(f7132d)) {
                a(this.a.c());
            } else if (f2) {
                a(' ');
            } else {
                e();
            }
        }
        if (this.f7136c.size() == 1) {
            return this.f7136c.get(0);
        }
        return new b.a(this.f7136c);
    }
}
