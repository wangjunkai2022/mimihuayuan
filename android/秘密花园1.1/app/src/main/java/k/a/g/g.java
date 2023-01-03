package k.a.g;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
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
        j.b.q(str);
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

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(char r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.g.g.a(char):void");
    }

    public final int b() {
        String trim = this.a.b(")").trim();
        if (k.a.d.a.f(trim)) {
            return Integer.parseInt(trim);
        }
        throw new IllegalArgumentException("Index must be numeric");
    }

    public final void c(boolean z) {
        this.a.d(z ? ":containsOwn" : ":contains");
        String m2 = j.m(this.a.a('(', ')'));
        j.b.r(m2, ":contains(text) query must not be empty");
        if (z) {
            this.f7136c.add(new d.m(m2));
        } else {
            this.f7136c.add(new d.n(m2));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
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
            if (r3 == 0) goto L26
            r0 = 1
        L24:
            r4 = 2
            goto L76
        L26:
            java.lang.String r3 = "even"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L30
            r0 = 0
            goto L24
        L30:
            boolean r3 = r1.matches()
            java.lang.String r6 = ""
            java.lang.String r7 = "^\\+"
            if (r3 == 0) goto L64
            r0 = 3
            java.lang.String r0 = r1.group(r0)
            if (r0 == 0) goto L4d
            java.lang.String r0 = r1.group(r5)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r5 = java.lang.Integer.parseInt(r0)
        L4d:
            r0 = 4
            java.lang.String r2 = r1.group(r0)
            if (r2 == 0) goto L61
            java.lang.String r0 = r1.group(r0)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
            r4 = r0
        L61:
            r0 = r4
            r4 = r5
            goto L76
        L64:
            boolean r1 = r2.matches()
            if (r1 == 0) goto La8
            java.lang.String r0 = r2.group()
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
        L76:
            if (r10 == 0) goto L90
            if (r9 == 0) goto L85
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$b0 r10 = new k.a.g.d$b0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L85:
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$c0 r10 = new k.a.g.d$c0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L90:
            if (r9 == 0) goto L9d
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$a0 r10 = new k.a.g.d$a0
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L9d:
            java.util.List<k.a.g.d> r9 = r8.f7136c
            k.a.g.d$z r10 = new k.a.g.d$z
            r10.<init>(r4, r0)
            r9.add(r10)
        La7:
            return
        La8:
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
            j.b.q(e2);
            this.f7136c.add(new d.p(e2));
        } else if (this.a.h(".")) {
            String e3 = this.a.e();
            j.b.q(e3);
            this.f7136c.add(new d.k(e3.trim()));
        } else if (!this.a.k() && !this.a.i("*|")) {
            if (this.a.i("[")) {
                j jVar = new j(this.a.a('[', ']'));
                String[] strArr = f7133e;
                int i2 = jVar.b;
                while (!jVar.g() && !jVar.j(strArr)) {
                    jVar.b++;
                }
                String substring = jVar.a.substring(i2, jVar.b);
                j.b.q(substring);
                jVar.f();
                if (jVar.g()) {
                    if (substring.startsWith("^")) {
                        this.f7136c.add(new d.C0121d(substring.substring(1)));
                    } else {
                        this.f7136c.add(new d.b(substring));
                    }
                } else if (jVar.h("=")) {
                    this.f7136c.add(new d.e(substring, jVar.l()));
                } else if (jVar.h("!=")) {
                    this.f7136c.add(new d.i(substring, jVar.l()));
                } else if (jVar.h("^=")) {
                    this.f7136c.add(new d.j(substring, jVar.l()));
                } else if (jVar.h("$=")) {
                    this.f7136c.add(new d.g(substring, jVar.l()));
                } else if (jVar.h("*=")) {
                    this.f7136c.add(new d.f(substring, jVar.l()));
                } else if (jVar.h("~=")) {
                    this.f7136c.add(new d.h(substring, Pattern.compile(jVar.l())));
                } else {
                    throw new h("Could not parse attribute query '%s': unexpected token at '%s'", this.b, jVar.l());
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
        } else {
            j jVar2 = this.a;
            int i3 = jVar2.b;
            while (!jVar2.g() && (jVar2.k() || jVar2.j("*|", "|", "_", "-"))) {
                jVar2.b++;
            }
            String p = j.b.p(jVar2.a.substring(i3, jVar2.b));
            j.b.q(p);
            if (p.startsWith("*|")) {
                this.f7136c.add(new b.C0120b(new d.j0(p), new d.k0(p.replace("*|", ":"))));
                return;
            }
            if (p.contains("|")) {
                p = p.replace("|", ":");
            }
            this.f7136c.add(new d.j0(p));
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
