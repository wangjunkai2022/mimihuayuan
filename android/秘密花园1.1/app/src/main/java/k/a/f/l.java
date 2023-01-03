package k.a.f;

import java.util.Locale;
import k.a.f.i;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: TokeniserState.java */
/* loaded from: classes.dex */
public abstract class l {
    public static final l o0;
    public static final char[] p0;
    public static final char[] q0;
    public static final char[] r0;
    public static final char[] s0;
    public static final String t0;
    public static final /* synthetic */ l[] u0;
    public static final l a = new k("Data", 0);
    public static final l b = new l("CharacterReferenceInData", 1) { // from class: k.a.f.l.v
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.a(kVar, l.a);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final l f7108c = new l("Rcdata", 2) { // from class: k.a.f.l.g0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e((char) 65533);
            } else if (k2 == '&') {
                l lVar = l.f7109d;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                l lVar2 = l.f7116k;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.e());
            } else {
                kVar.g(new i.f());
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final l f7109d = new l("CharacterReferenceInRcdata", 3) { // from class: k.a.f.l.r0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.a(kVar, l.f7108c);
        }
    };

    /* renamed from: e  reason: collision with root package name */
    public static final l f7110e = new l("Rawtext", 4) { // from class: k.a.f.l.c1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.b(kVar, aVar, this, l.n);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final l f7111f = new l("ScriptData", 5) { // from class: k.a.f.l.l1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.b(kVar, aVar, this, l.q);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final l f7112g = new l("PLAINTEXT", 6) { // from class: k.a.f.l.m1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e((char) 65533);
            } else if (k2 != 65535) {
                kVar.f(aVar.g((char) 0));
            } else {
                kVar.g(new i.f());
            }
        }
    };

    /* renamed from: h  reason: collision with root package name */
    public static final l f7113h = new l("TagOpen", 7) { // from class: k.a.f.l.n1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == '!') {
                l lVar = l.R;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '/') {
                l lVar2 = l.f7114i;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != '?') {
                if (aVar.r()) {
                    kVar.d(true);
                    kVar.f7097c = l.f7115j;
                    return;
                }
                kVar.k(this);
                kVar.e('<');
                kVar.f7097c = l.a;
            } else {
                kVar.c();
                l lVar3 = l.Q;
                kVar.a.a();
                kVar.f7097c = lVar3;
            }
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final l f7114i = new l("EndTagOpen", 8) { // from class: k.a.f.l.o1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f("</");
                kVar.f7097c = l.a;
            } else if (aVar.r()) {
                kVar.d(false);
                kVar.f7097c = l.f7115j;
            } else if (aVar.p('>')) {
                kVar.k(this);
                l lVar = l.a;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else {
                kVar.k(this);
                kVar.c();
                l lVar2 = l.Q;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    };

    /* renamed from: j  reason: collision with root package name */
    public static final l f7115j = new l("TagName", 9) { // from class: k.a.f.l.a
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char c2;
            aVar.b();
            int i2 = aVar.f7035e;
            int i3 = aVar.f7033c;
            char[] cArr = aVar.a;
            int i4 = i2;
            while (i4 < i3 && (c2 = cArr[i4]) != 0 && c2 != ' ' && c2 != '/' && c2 != '<' && c2 != '>' && c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r') {
                i4++;
            }
            aVar.f7035e = i4;
            kVar.f7103i.n(i4 > i2 ? k.a.f.a.c(aVar.a, aVar.f7038h, i2, i4 - i2) : "");
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (d2 != '/') {
                        if (d2 == '<') {
                            aVar.v();
                            kVar.k(this);
                        } else if (d2 != '>') {
                            if (d2 == 65535) {
                                kVar.i(this);
                                kVar.f7097c = l.a;
                                return;
                            } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                                kVar.f7103i.m(d2);
                                return;
                            }
                        }
                        kVar.h();
                        kVar.f7097c = l.a;
                        return;
                    }
                    kVar.f7097c = l.P;
                    return;
                }
                kVar.f7097c = l.H;
                return;
            }
            kVar.f7103i.n(l.t0);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    public static final l f7116k = new l("RcdataLessthanSign", 10) { // from class: k.a.f.l.b
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.p('/')) {
                k.a.f.i.h(kVar.f7102h);
                l lVar = l.f7117l;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            if (aVar.r() && kVar.o != null) {
                StringBuilder o2 = f.b.a.a.a.o("</");
                o2.append(kVar.o);
                String sb = o2.toString();
                if (!(aVar.s(sb.toLowerCase(Locale.ENGLISH)) > -1 || aVar.s(sb.toUpperCase(Locale.ENGLISH)) > -1)) {
                    i.AbstractC0118i d2 = kVar.d(false);
                    d2.q(kVar.o);
                    kVar.f7103i = d2;
                    kVar.h();
                    aVar.v();
                    kVar.f7097c = l.a;
                    return;
                }
            }
            kVar.f("<");
            kVar.f7097c = l.f7108c;
        }
    };

    /* renamed from: l  reason: collision with root package name */
    public static final l f7117l = new l("RCDATAEndTagOpen", 11) { // from class: k.a.f.l.c
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                kVar.d(false);
                kVar.f7103i.m(aVar.k());
                kVar.f7102h.append(aVar.k());
                l lVar = l.f7118m;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f("</");
            kVar.f7097c = l.f7108c;
        }
    };

    /* renamed from: m  reason: collision with root package name */
    public static final l f7118m = new l("RCDATAEndTagName", 12) { // from class: k.a.f.l.d
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                String f2 = aVar.f();
                kVar.f7103i.n(f2);
                kVar.f7102h.append(f2);
                return;
            }
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                if (kVar.l()) {
                    kVar.f7097c = l.H;
                } else {
                    g(kVar, aVar);
                }
            } else if (d2 == '/') {
                if (kVar.l()) {
                    kVar.f7097c = l.P;
                } else {
                    g(kVar, aVar);
                }
            } else if (d2 != '>') {
                g(kVar, aVar);
            } else if (kVar.l()) {
                kVar.h();
                kVar.f7097c = l.a;
            } else {
                g(kVar, aVar);
            }
        }

        public final void g(k.a.f.k kVar, k.a.f.a aVar) {
            StringBuilder o2 = f.b.a.a.a.o("</");
            o2.append(kVar.f7102h.toString());
            kVar.f(o2.toString());
            aVar.v();
            kVar.f7097c = l.f7108c;
        }
    };
    public static final l n = new l("RawtextLessthanSign", 13) { // from class: k.a.f.l.e
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.p('/')) {
                k.a.f.i.h(kVar.f7102h);
                l lVar = l.o;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.e('<');
            kVar.f7097c = l.f7110e;
        }
    };
    public static final l o = new l("RawtextEndTagOpen", 14) { // from class: k.a.f.l.f
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.c(kVar, aVar, l.p, l.f7110e);
        }
    };
    public static final l p = new l("RawtextEndTagName", 15) { // from class: k.a.f.l.g
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.d(kVar, aVar, l.f7110e);
        }
    };
    public static final l q = new l("ScriptDataLessthanSign", 16) { // from class: k.a.f.l.h
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '!') {
                kVar.f("<!");
                kVar.f7097c = l.t;
            } else if (d2 == '/') {
                k.a.f.i.h(kVar.f7102h);
                kVar.f7097c = l.r;
            } else if (d2 != 65535) {
                kVar.f("<");
                aVar.v();
                kVar.f7097c = l.f7111f;
            } else {
                kVar.f("<");
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l r = new l("ScriptDataEndTagOpen", 17) { // from class: k.a.f.l.i
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.c(kVar, aVar, l.s, l.f7111f);
        }
    };
    public static final l s = new l("ScriptDataEndTagName", 18) { // from class: k.a.f.l.j
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.d(kVar, aVar, l.f7111f);
        }
    };
    public static final l t = new l("ScriptDataEscapeStart", 19) { // from class: k.a.f.l.l
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.p('-')) {
                kVar.e('-');
                l lVar = l.u;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.f7111f;
        }
    };
    public static final l u = new l("ScriptDataEscapeStartDash", 20) { // from class: k.a.f.l.m
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.p('-')) {
                kVar.e('-');
                l lVar = l.x;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.f7111f;
        }
    };
    public static final l v = new l("ScriptDataEscaped", 21) { // from class: k.a.f.l.n
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.a;
                return;
            }
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e((char) 65533);
            } else if (k2 == '-') {
                kVar.e('-');
                l lVar = l.w;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 != '<') {
                kVar.f(aVar.h('-', '<', 0));
            } else {
                l lVar2 = l.y;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    };
    public static final l w = new l("ScriptDataEscapedDash", 22) { // from class: k.a.f.l.o
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.a;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e((char) 65533);
                kVar.f7097c = l.v;
            } else if (d2 == '-') {
                kVar.e(d2);
                kVar.f7097c = l.x;
            } else if (d2 != '<') {
                kVar.e(d2);
                kVar.f7097c = l.v;
            } else {
                kVar.f7097c = l.y;
            }
        }
    };
    public static final l x = new l("ScriptDataEscapedDashDash", 23) { // from class: k.a.f.l.p
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.a;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e((char) 65533);
                kVar.f7097c = l.v;
            } else if (d2 == '-') {
                kVar.e(d2);
            } else if (d2 == '<') {
                kVar.f7097c = l.y;
            } else if (d2 != '>') {
                kVar.e(d2);
                kVar.f7097c = l.v;
            } else {
                kVar.e(d2);
                kVar.f7097c = l.f7111f;
            }
        }
    };
    public static final l y = new l("ScriptDataEscapedLessthanSign", 24) { // from class: k.a.f.l.q
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                k.a.f.i.h(kVar.f7102h);
                kVar.f7102h.append(aVar.k());
                kVar.f("<" + aVar.k());
                l lVar = l.B;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (aVar.p('/')) {
                k.a.f.i.h(kVar.f7102h);
                l lVar2 = l.z;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else {
                kVar.e('<');
                kVar.f7097c = l.v;
            }
        }
    };
    public static final l z = new l("ScriptDataEscapedEndTagOpen", 25) { // from class: k.a.f.l.r
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                kVar.d(false);
                kVar.f7103i.m(aVar.k());
                kVar.f7102h.append(aVar.k());
                l lVar = l.A;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f("</");
            kVar.f7097c = l.v;
        }
    };
    public static final l A = new l("ScriptDataEscapedEndTagName", 26) { // from class: k.a.f.l.s
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.d(kVar, aVar, l.v);
        }
    };
    public static final l B = new l("ScriptDataDoubleEscapeStart", 27) { // from class: k.a.f.l.t
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.e(kVar, aVar, l.C, l.v);
        }
    };
    public static final l C = new l("ScriptDataDoubleEscaped", 28) { // from class: k.a.f.l.u
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e((char) 65533);
            } else if (k2 == '-') {
                kVar.e(k2);
                l lVar = l.D;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                kVar.e(k2);
                l lVar2 = l.F;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.h('-', '<', 0));
            } else {
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l D = new l("ScriptDataDoubleEscapedDash", 29) { // from class: k.a.f.l.w
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e((char) 65533);
                kVar.f7097c = l.C;
            } else if (d2 == '-') {
                kVar.e(d2);
                kVar.f7097c = l.E;
            } else if (d2 == '<') {
                kVar.e(d2);
                kVar.f7097c = l.F;
            } else if (d2 != 65535) {
                kVar.e(d2);
                kVar.f7097c = l.C;
            } else {
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l E = new l("ScriptDataDoubleEscapedDashDash", 30) { // from class: k.a.f.l.x
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e((char) 65533);
                kVar.f7097c = l.C;
            } else if (d2 == '-') {
                kVar.e(d2);
            } else if (d2 == '<') {
                kVar.e(d2);
                kVar.f7097c = l.F;
            } else if (d2 == '>') {
                kVar.e(d2);
                kVar.f7097c = l.f7111f;
            } else if (d2 != 65535) {
                kVar.e(d2);
                kVar.f7097c = l.C;
            } else {
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l F = new l("ScriptDataDoubleEscapedLessthanSign", 31) { // from class: k.a.f.l.y
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.p('/')) {
                kVar.e('/');
                k.a.f.i.h(kVar.f7102h);
                l lVar = l.G;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.C;
        }
    };
    public static final l G = new l("ScriptDataDoubleEscapeEnd", 32) { // from class: k.a.f.l.z
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            l.e(kVar, aVar, l.v, l.C);
        }
    };
    public static final l H = new l("BeforeAttributeName", 33) { // from class: k.a.f.l.a0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                aVar.v();
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7097c = l.I;
            } else if (d2 != ' ') {
                if (d2 != '\"' && d2 != '\'') {
                    if (d2 == '/') {
                        kVar.f7097c = l.P;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        kVar.f7097c = l.a;
                        return;
                    } else if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r') {
                        return;
                    } else {
                        switch (d2) {
                            case '<':
                                aVar.v();
                                kVar.k(this);
                                kVar.h();
                                kVar.f7097c = l.a;
                                return;
                            case '=':
                                break;
                            case '>':
                                kVar.h();
                                kVar.f7097c = l.a;
                                return;
                            default:
                                kVar.f7103i.r();
                                aVar.v();
                                kVar.f7097c = l.I;
                                return;
                        }
                    }
                }
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7103i.i(d2);
                kVar.f7097c = l.I;
            }
        }
    };
    public static final l I = new l("AttributeName", 34) { // from class: k.a.f.l.b0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            String i2 = aVar.i(l.r0);
            i.AbstractC0118i abstractC0118i = kVar.f7103i;
            String str = abstractC0118i.f7085d;
            if (str != null) {
                i2 = str.concat(i2);
            }
            abstractC0118i.f7085d = i2;
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (d2 != '\"' && d2 != '\'') {
                        if (d2 == '/') {
                            kVar.f7097c = l.P;
                            return;
                        } else if (d2 == 65535) {
                            kVar.i(this);
                            kVar.f7097c = l.a;
                            return;
                        } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                            switch (d2) {
                                case '<':
                                    break;
                                case '=':
                                    kVar.f7097c = l.K;
                                    return;
                                case '>':
                                    kVar.h();
                                    kVar.f7097c = l.a;
                                    return;
                                default:
                                    kVar.f7103i.i(d2);
                                    return;
                            }
                        }
                    }
                    kVar.k(this);
                    kVar.f7103i.i(d2);
                    return;
                }
                kVar.f7097c = l.J;
                return;
            }
            kVar.k(this);
            kVar.f7103i.i((char) 65533);
        }
    };
    public static final l J = new l("AfterAttributeName", 35) { // from class: k.a.f.l.c0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.i((char) 65533);
                kVar.f7097c = l.I;
            } else if (d2 != ' ') {
                if (d2 != '\"' && d2 != '\'') {
                    if (d2 == '/') {
                        kVar.f7097c = l.P;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        kVar.f7097c = l.a;
                        return;
                    } else if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r') {
                        return;
                    } else {
                        switch (d2) {
                            case '<':
                                break;
                            case '=':
                                kVar.f7097c = l.K;
                                return;
                            case '>':
                                kVar.h();
                                kVar.f7097c = l.a;
                                return;
                            default:
                                kVar.f7103i.r();
                                aVar.v();
                                kVar.f7097c = l.I;
                                return;
                        }
                    }
                }
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7103i.i(d2);
                kVar.f7097c = l.I;
            }
        }
    };
    public static final l K = new l("BeforeAttributeValue", 36) { // from class: k.a.f.l.d0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j((char) 65533);
                kVar.f7097c = l.N;
            } else if (d2 != ' ') {
                if (d2 != '\"') {
                    if (d2 != '`') {
                        if (d2 == 65535) {
                            kVar.i(this);
                            kVar.h();
                            kVar.f7097c = l.a;
                            return;
                        } else if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r') {
                            return;
                        } else {
                            if (d2 == '&') {
                                aVar.v();
                                kVar.f7097c = l.N;
                                return;
                            } else if (d2 != '\'') {
                                switch (d2) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        kVar.k(this);
                                        kVar.h();
                                        kVar.f7097c = l.a;
                                        return;
                                    default:
                                        aVar.v();
                                        kVar.f7097c = l.N;
                                        return;
                                }
                            } else {
                                kVar.f7097c = l.M;
                                return;
                            }
                        }
                    }
                    kVar.k(this);
                    kVar.f7103i.j(d2);
                    kVar.f7097c = l.N;
                    return;
                }
                kVar.f7097c = l.L;
            }
        }
    };
    public static final l L = new l("AttributeValue_doubleQuoted", 37) { // from class: k.a.f.l.e0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            String i2 = aVar.i(l.q0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            } else {
                kVar.f7103i.f7088g = true;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j((char) 65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.O;
            } else if (d2 != '&') {
                if (d2 != 65535) {
                    kVar.f7103i.j(d2);
                    return;
                }
                kVar.i(this);
                kVar.f7097c = l.a;
            } else {
                int[] b2 = kVar.b('\"', true);
                if (b2 != null) {
                    kVar.f7103i.l(b2);
                } else {
                    kVar.f7103i.j('&');
                }
            }
        }
    };
    public static final l M = new l("AttributeValue_singleQuoted", 38) { // from class: k.a.f.l.f0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            String i2 = aVar.i(l.p0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            } else {
                kVar.f7103i.f7088g = true;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j((char) 65533);
            } else if (d2 == 65535) {
                kVar.i(this);
                kVar.f7097c = l.a;
            } else if (d2 != '&') {
                if (d2 != '\'') {
                    kVar.f7103i.j(d2);
                } else {
                    kVar.f7097c = l.O;
                }
            } else {
                int[] b2 = kVar.b('\'', true);
                if (b2 != null) {
                    kVar.f7103i.l(b2);
                } else {
                    kVar.f7103i.j('&');
                }
            }
        }
    };
    public static final l N = new l("AttributeValue_unquoted", 39) { // from class: k.a.f.l.h0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            String i2 = aVar.i(l.s0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            }
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (d2 != '\"' && d2 != '`') {
                        if (d2 == 65535) {
                            kVar.i(this);
                            kVar.f7097c = l.a;
                            return;
                        } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                            if (d2 == '&') {
                                int[] b2 = kVar.b('>', true);
                                if (b2 != null) {
                                    kVar.f7103i.l(b2);
                                    return;
                                } else {
                                    kVar.f7103i.j('&');
                                    return;
                                }
                            } else if (d2 != '\'') {
                                switch (d2) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        kVar.h();
                                        kVar.f7097c = l.a;
                                        return;
                                    default:
                                        kVar.f7103i.j(d2);
                                        return;
                                }
                            }
                        }
                    }
                    kVar.k(this);
                    kVar.f7103i.j(d2);
                    return;
                }
                kVar.f7097c = l.H;
                return;
            }
            kVar.k(this);
            kVar.f7103i.j((char) 65533);
        }
    };
    public static final l O = new l("AfterAttributeValue_quoted", 40) { // from class: k.a.f.l.i0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.H;
            } else if (d2 == '/') {
                kVar.f7097c = l.P;
            } else if (d2 == '>') {
                kVar.h();
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.k(this);
                kVar.f7097c = l.H;
            } else {
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l P = new l("SelfClosingStartTag", 41) { // from class: k.a.f.l.j0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '>') {
                kVar.f7103i.f7090i = true;
                kVar.h();
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.k(this);
                kVar.f7097c = l.H;
            } else {
                kVar.i(this);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l Q = new l("BogusComment", 42) { // from class: k.a.f.l.k0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            aVar.v();
            kVar.n.j(aVar.g('>'));
            char d2 = aVar.d();
            if (d2 == '>' || d2 == 65535) {
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l R = new l("MarkupDeclarationOpen", 43) { // from class: k.a.f.l.l0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.n("--")) {
                kVar.n.g();
                kVar.f7097c = l.S;
            } else if (aVar.o("DOCTYPE")) {
                kVar.f7097c = l.Y;
            } else if (aVar.n("[CDATA[")) {
                k.a.f.i.h(kVar.f7102h);
                kVar.f7097c = l.o0;
            } else {
                kVar.k(this);
                kVar.c();
                l lVar = l.Q;
                kVar.a.a();
                kVar.f7097c = lVar;
            }
        }
    };
    public static final l S = new l("CommentStart", 44) { // from class: k.a.f.l.m0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.n.i((char) 65533);
                kVar.f7097c = l.U;
            } else if (d2 == '-') {
                kVar.f7097c = l.T;
            } else if (d2 == '>') {
                kVar.k(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.f7097c = l.U;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l T = new l("CommentStartDash", 45) { // from class: k.a.f.l.n0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.n.i((char) 65533);
                kVar.f7097c = l.U;
            } else if (d2 == '-') {
                kVar.f7097c = l.T;
            } else if (d2 == '>') {
                kVar.k(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.n.i(d2);
                kVar.f7097c = l.U;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l U = new l("Comment", 46) { // from class: k.a.f.l.o0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.n.i((char) 65533);
            } else if (k2 == '-') {
                l lVar = l.V;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 != 65535) {
                kVar.n.j(aVar.h('-', 0));
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l V = new l("CommentEndDash", 47) { // from class: k.a.f.l.p0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.i('-');
                dVar.i((char) 65533);
                kVar.f7097c = l.U;
            } else if (d2 == '-') {
                kVar.f7097c = l.W;
            } else if (d2 != 65535) {
                i.d dVar2 = kVar.n;
                dVar2.i('-');
                dVar2.i(d2);
                kVar.f7097c = l.U;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l W = new l("CommentEnd", 48) { // from class: k.a.f.l.q0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.j("--");
                dVar.i((char) 65533);
                kVar.f7097c = l.U;
            } else if (d2 == '!') {
                kVar.k(this);
                kVar.f7097c = l.X;
            } else if (d2 == '-') {
                kVar.k(this);
                kVar.n.i('-');
            } else if (d2 == '>') {
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                i.d dVar2 = kVar.n;
                dVar2.j("--");
                dVar2.i(d2);
                kVar.f7097c = l.U;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l X = new l("CommentEndBang", 49) { // from class: k.a.f.l.s0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.j("--!");
                dVar.i((char) 65533);
                kVar.f7097c = l.U;
            } else if (d2 == '-') {
                kVar.n.j("--!");
                kVar.f7097c = l.V;
            } else if (d2 == '>') {
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                i.d dVar2 = kVar.n;
                dVar2.j("--!");
                dVar2.i(d2);
                kVar.f7097c = l.U;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l Y = new l("Doctype", 50) { // from class: k.a.f.l.t0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ') {
                if (d2 != '>') {
                    if (d2 != 65535) {
                        kVar.k(this);
                        kVar.f7097c = l.Z;
                        return;
                    }
                    kVar.i(this);
                }
                kVar.k(this);
                kVar.f7107m.g();
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
                return;
            }
            kVar.f7097c = l.Z;
        }
    };
    public static final l Z = new l("BeforeDoctypeName", 51) { // from class: k.a.f.l.u0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                kVar.f7107m.g();
                kVar.f7097c = l.a0;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.g();
                kVar.f7107m.b.append((char) 65533);
                kVar.f7097c = l.a0;
            } else if (d2 != ' ') {
                if (d2 == 65535) {
                    kVar.i(this);
                    kVar.f7107m.g();
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.a;
                } else if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r') {
                } else {
                    kVar.f7107m.g();
                    kVar.f7107m.b.append(d2);
                    kVar.f7097c = l.a0;
                }
            }
        }
    };
    public static final l a0 = new l("DoctypeName", 52) { // from class: k.a.f.l.v0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.r()) {
                kVar.f7107m.b.append(aVar.f());
                return;
            }
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (d2 == '>') {
                        kVar.g(kVar.f7107m);
                        kVar.f7097c = l.a;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        i.e eVar = kVar.f7107m;
                        eVar.f7083f = true;
                        kVar.g(eVar);
                        kVar.f7097c = l.a;
                        return;
                    } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                        kVar.f7107m.b.append(d2);
                        return;
                    }
                }
                kVar.f7097c = l.b0;
                return;
            }
            kVar.k(this);
            kVar.f7107m.b.append((char) 65533);
        }
    };
    public static final l b0 = new l("AfterDoctypeName", 53) { // from class: k.a.f.l.w0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (aVar.q('\t', '\n', '\r', '\f', ' ')) {
                aVar.a();
            } else if (aVar.p('>')) {
                kVar.g(kVar.f7107m);
                l lVar = l.a;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (aVar.o("PUBLIC")) {
                kVar.f7107m.f7080c = "PUBLIC";
                kVar.f7097c = l.c0;
            } else if (aVar.o("SYSTEM")) {
                kVar.f7107m.f7080c = "SYSTEM";
                kVar.f7097c = l.i0;
            } else {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                l lVar2 = l.n0;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    };
    public static final l c0 = new l("AfterDoctypePublicKeyword", 54) { // from class: k.a.f.l.x0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.d0;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.e0;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.f0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l d0 = new l("BeforeDoctypePublicIdentifier", 55) { // from class: k.a.f.l.y0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                return;
            }
            if (d2 == '\"') {
                kVar.f7097c = l.e0;
            } else if (d2 == '\'') {
                kVar.f7097c = l.f0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l e0 = new l("DoctypePublicIdentifier_doubleQuoted", 56) { // from class: k.a.f.l.z0
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7081d.append((char) 65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.g0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.f7107m.f7081d.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l f0 = new l("DoctypePublicIdentifier_singleQuoted", 57) { // from class: k.a.f.l.a1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7081d.append((char) 65533);
            } else if (d2 == '\'') {
                kVar.f7097c = l.g0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.f7107m.f7081d.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l g0 = new l("AfterDoctypePublicIdentifier", 58) { // from class: k.a.f.l.b1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.h0;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.k0;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.l0;
            } else if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l h0 = new l("BetweenDoctypePublicAndSystemIdentifiers", 59) { // from class: k.a.f.l.d1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                return;
            }
            if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.k0;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.l0;
            } else if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l i0 = new l("AfterDoctypeSystemKeyword", 60) { // from class: k.a.f.l.e1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.j0;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.k0;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.l0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
            } else {
                kVar.i(this);
                i.e eVar3 = kVar.f7107m;
                eVar3.f7083f = true;
                kVar.g(eVar3);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l j0 = new l("BeforeDoctypeSystemIdentifier", 61) { // from class: k.a.f.l.f1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                return;
            }
            if (d2 == '\"') {
                kVar.f7097c = l.k0;
            } else if (d2 == '\'') {
                kVar.f7097c = l.l0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l k0 = new l("DoctypeSystemIdentifier_doubleQuoted", 62) { // from class: k.a.f.l.g1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7082e.append((char) 65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.m0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.f7107m.f7082e.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l l0 = new l("DoctypeSystemIdentifier_singleQuoted", 63) { // from class: k.a.f.l.h1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7082e.append((char) 65533);
            } else if (d2 == '\'') {
                kVar.f7097c = l.m0;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.f7107m.f7082e.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l m0 = new l("AfterDoctypeSystemIdentifier", 64) { // from class: k.a.f.l.i1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                return;
            }
            if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7097c = l.n0;
            } else {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.a;
            }
        }
    };
    public static final l n0 = new l("BogusDoctype", 65) { // from class: k.a.f.l.j1
        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char d2 = aVar.d();
            if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.a;
            } else if (d2 != 65535) {
            } else {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.a;
            }
        }
    };

    /* compiled from: TokeniserState.java */
    /* loaded from: classes.dex */
    public enum k extends l {
        public k(String str, int i2) {
            super(str, i2, null);
        }

        @Override // k.a.f.l
        public void f(k.a.f.k kVar, k.a.f.a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                kVar.e(aVar.d());
            } else if (k2 == '&') {
                l lVar = l.b;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                l lVar2 = l.f7113h;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.e());
            } else {
                kVar.g(new i.f());
            }
        }
    }

    static {
        l lVar = new l("CdataSection", 66) { // from class: k.a.f.l.k1
            @Override // k.a.f.l
            public void f(k.a.f.k kVar, k.a.f.a aVar) {
                String c2;
                int s2 = aVar.s("]]>");
                if (s2 != -1) {
                    c2 = k.a.f.a.c(aVar.a, aVar.f7038h, aVar.f7035e, s2);
                    aVar.f7035e += s2;
                } else {
                    int i2 = aVar.f7033c;
                    int i3 = aVar.f7035e;
                    if (i2 - i3 < 3) {
                        c2 = aVar.j();
                    } else {
                        int i4 = (i2 - 3) + 1;
                        c2 = k.a.f.a.c(aVar.a, aVar.f7038h, i3, i4 - i3);
                        aVar.f7035e = i4;
                    }
                }
                kVar.f7102h.append(c2);
                if (aVar.n("]]>") || aVar.l()) {
                    kVar.g(new i.b(kVar.f7102h.toString()));
                    kVar.f7097c = l.a;
                }
            }
        };
        o0 = lVar;
        u0 = new l[]{a, b, f7108c, f7109d, f7110e, f7111f, f7112g, f7113h, f7114i, f7115j, f7116k, f7117l, f7118m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0, e0, f0, g0, h0, i0, j0, k0, l0, m0, n0, lVar};
        p0 = new char[]{0, '&', '\''};
        q0 = new char[]{0, '\"', '&'};
        r0 = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>'};
        s0 = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
        t0 = String.valueOf((char) 65533);
    }

    public l(String str, int i2, k kVar) {
    }

    public static void a(k.a.f.k kVar, l lVar) {
        int[] b2 = kVar.b(null, false);
        if (b2 == null) {
            kVar.e('&');
        } else {
            kVar.f(new String(b2, 0, b2.length));
        }
        kVar.f7097c = lVar;
    }

    public static void b(k.a.f.k kVar, k.a.f.a aVar, l lVar, l lVar2) {
        char k2 = aVar.k();
        if (k2 == 0) {
            kVar.k(lVar);
            aVar.a();
            kVar.e((char) 65533);
        } else if (k2 == '<') {
            kVar.a.a();
            kVar.f7097c = lVar2;
        } else if (k2 != 65535) {
            int i2 = aVar.f7035e;
            int i3 = aVar.f7033c;
            char[] cArr = aVar.a;
            int i4 = i2;
            while (i4 < i3) {
                char c2 = cArr[i4];
                if (c2 == 0 || c2 == '<') {
                    break;
                }
                i4++;
            }
            aVar.f7035e = i4;
            kVar.f(i4 > i2 ? k.a.f.a.c(aVar.a, aVar.f7038h, i2, i4 - i2) : "");
        } else {
            kVar.g(new i.f());
        }
    }

    public static void c(k.a.f.k kVar, k.a.f.a aVar, l lVar, l lVar2) {
        if (aVar.r()) {
            kVar.d(false);
            kVar.f7097c = lVar;
            return;
        }
        kVar.f("</");
        kVar.f7097c = lVar2;
    }

    public static void d(k.a.f.k kVar, k.a.f.a aVar, l lVar) {
        if (aVar.r()) {
            String f2 = aVar.f();
            kVar.f7103i.n(f2);
            kVar.f7102h.append(f2);
            return;
        }
        boolean z2 = false;
        boolean z3 = true;
        if (kVar.l() && !aVar.l()) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = H;
            } else if (d2 == '/') {
                kVar.f7097c = P;
            } else if (d2 != '>') {
                kVar.f7102h.append(d2);
                z2 = true;
            } else {
                kVar.h();
                kVar.f7097c = a;
            }
            z3 = z2;
        }
        if (z3) {
            StringBuilder o2 = f.b.a.a.a.o("</");
            o2.append(kVar.f7102h.toString());
            kVar.f(o2.toString());
            kVar.f7097c = lVar;
        }
    }

    public static void e(k.a.f.k kVar, k.a.f.a aVar, l lVar, l lVar2) {
        if (aVar.r()) {
            String f2 = aVar.f();
            kVar.f7102h.append(f2);
            kVar.f(f2);
            return;
        }
        char d2 = aVar.d();
        if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ' && d2 != '/' && d2 != '>') {
            aVar.v();
            kVar.f7097c = lVar2;
            return;
        }
        if (kVar.f7102h.toString().equals("script")) {
            kVar.f7097c = lVar;
        } else {
            kVar.f7097c = lVar2;
        }
        kVar.e(d2);
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) u0.clone();
    }

    public abstract void f(k.a.f.k kVar, k.a.f.a aVar);
}
