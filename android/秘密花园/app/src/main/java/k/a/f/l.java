package k.a.f;

import java.util.Locale;
import k.a.f.i;

/* compiled from: TokeniserState.java */
/* loaded from: classes.dex */
public enum l {
    Data {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                kVar.e(aVar.d());
            } else if (k2 == '&') {
                l lVar = l.CharacterReferenceInData;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                l lVar2 = l.TagOpen;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.e());
            } else {
                kVar.g(new i.f());
            }
        }
    },
    CharacterReferenceInData {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.a(kVar, l.Data);
        }
    },
    Rcdata {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e(65533);
            } else if (k2 == '&') {
                l lVar = l.CharacterReferenceInRcdata;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                l lVar2 = l.RcdataLessthanSign;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.e());
            } else {
                kVar.g(new i.f());
            }
        }
    },
    CharacterReferenceInRcdata {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.a(kVar, l.Rcdata);
        }
    },
    Rawtext {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.b(kVar, aVar, this, l.RawtextLessthanSign);
        }
    },
    ScriptData {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.b(kVar, aVar, this, l.ScriptDataLessthanSign);
        }
    },
    PLAINTEXT {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e(65533);
            } else if (k2 != 65535) {
                kVar.f(aVar.g(0));
            } else {
                kVar.g(new i.f());
            }
        }
    },
    TagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == '!') {
                l lVar = l.MarkupDeclarationOpen;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '/') {
                l lVar2 = l.EndTagOpen;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 == '?') {
                kVar.c();
                l lVar3 = l.BogusComment;
                kVar.a.a();
                kVar.f7097c = lVar3;
            } else if (aVar.r()) {
                kVar.d(true);
                kVar.f7097c = l.TagName;
            } else {
                kVar.k(this);
                kVar.e('<');
                kVar.f7097c = l.Data;
            }
        }
    },
    EndTagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f("</");
                kVar.f7097c = l.Data;
            } else if (aVar.r()) {
                kVar.d(false);
                kVar.f7097c = l.TagName;
            } else if (aVar.p('>')) {
                kVar.k(this);
                l lVar = l.Data;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else {
                kVar.k(this);
                kVar.c();
                l lVar2 = l.BogusComment;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    },
    TagName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            aVar.b();
            int i2 = aVar.f7035e;
            int i3 = aVar.f7033c;
            char[] cArr = aVar.a;
            int i4 = i2;
            while (i4 < i3 && (r12 = cArr[i4]) != 0 && r12 != ' ' && r12 != '/' && r12 != '<' && r12 != '>' && r12 != '\t' && r12 != '\n' && r12 != '\f' && r12 != '\r') {
                i4++;
            }
            aVar.f7035e = i4;
            kVar.f7103i.n(i4 > i2 ? a.c(aVar.a, aVar.f7038h, i2, i4 - i2) : "");
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
                                kVar.f7097c = l.Data;
                                return;
                            } else if (!(d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r')) {
                                kVar.f7103i.m(d2);
                                return;
                            }
                        }
                        kVar.h();
                        kVar.f7097c = l.Data;
                        return;
                    }
                    kVar.f7097c = l.SelfClosingStartTag;
                    return;
                }
                kVar.f7097c = l.BeforeAttributeName;
                return;
            }
            kVar.f7103i.n(l.t0);
        }
    },
    RcdataLessthanSign {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.p('/')) {
                i.h(kVar.f7102h);
                l lVar = l.RCDATAEndTagOpen;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            if (aVar.r() && kVar.o != null) {
                StringBuilder o = f.b.a.a.a.o("</");
                o.append(kVar.o);
                String sb = o.toString();
                if (!(aVar.s(sb.toLowerCase(Locale.ENGLISH)) > -1 || aVar.s(sb.toUpperCase(Locale.ENGLISH)) > -1)) {
                    i.AbstractC0111i d2 = kVar.d(false);
                    d2.q(kVar.o);
                    kVar.f7103i = d2;
                    kVar.h();
                    aVar.v();
                    kVar.f7097c = l.Data;
                    return;
                }
            }
            kVar.f("<");
            kVar.f7097c = l.Rcdata;
        }
    },
    RCDATAEndTagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                kVar.d(false);
                kVar.f7103i.m(aVar.k());
                kVar.f7102h.append(aVar.k());
                l lVar = l.RCDATAEndTagName;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f("</");
            kVar.f7097c = l.Rcdata;
        }
    },
    RCDATAEndTagName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                String f2 = aVar.f();
                kVar.f7103i.n(f2);
                kVar.f7102h.append(f2);
                return;
            }
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                if (kVar.l()) {
                    kVar.f7097c = l.BeforeAttributeName;
                } else {
                    g(kVar, aVar);
                }
            } else if (d2 != '/') {
                if (d2 != '>') {
                    g(kVar, aVar);
                } else if (kVar.l()) {
                    kVar.h();
                    kVar.f7097c = l.Data;
                } else {
                    g(kVar, aVar);
                }
            } else if (kVar.l()) {
                kVar.f7097c = l.SelfClosingStartTag;
            } else {
                g(kVar, aVar);
            }
        }

        public final void g(k kVar, a aVar) {
            StringBuilder o = f.b.a.a.a.o("</");
            o.append(kVar.f7102h.toString());
            kVar.f(o.toString());
            aVar.v();
            kVar.f7097c = l.Rcdata;
        }
    },
    RawtextLessthanSign {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.p('/')) {
                i.h(kVar.f7102h);
                l lVar = l.RawtextEndTagOpen;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.e('<');
            kVar.f7097c = l.Rawtext;
        }
    },
    RawtextEndTagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.c(kVar, aVar, l.RawtextEndTagName, l.Rawtext);
        }
    },
    RawtextEndTagName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.d(kVar, aVar, l.Rawtext);
        }
    },
    ScriptDataLessthanSign {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '!') {
                kVar.f("<!");
                kVar.f7097c = l.ScriptDataEscapeStart;
            } else if (d2 == '/') {
                i.h(kVar.f7102h);
                kVar.f7097c = l.ScriptDataEndTagOpen;
            } else if (d2 != 65535) {
                kVar.f("<");
                aVar.v();
                kVar.f7097c = l.ScriptData;
            } else {
                kVar.f("<");
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    ScriptDataEndTagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.c(kVar, aVar, l.ScriptDataEndTagName, l.ScriptData);
        }
    },
    ScriptDataEndTagName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.d(kVar, aVar, l.ScriptData);
        }
    },
    ScriptDataEscapeStart {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.p('-')) {
                kVar.e('-');
                l lVar = l.ScriptDataEscapeStartDash;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.ScriptData;
        }
    },
    ScriptDataEscapeStartDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.p('-')) {
                kVar.e('-');
                l lVar = l.ScriptDataEscapedDashDash;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.ScriptData;
        }
    },
    ScriptDataEscaped {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.Data;
                return;
            }
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e(65533);
            } else if (k2 == '-') {
                kVar.e('-');
                l lVar = l.ScriptDataEscapedDash;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 != '<') {
                kVar.f(aVar.h('-', '<', 0));
            } else {
                l lVar2 = l.ScriptDataEscapedLessthanSign;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    },
    ScriptDataEscapedDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.Data;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e(65533);
                kVar.f7097c = l.ScriptDataEscaped;
            } else if (d2 == '-') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataEscapedDashDash;
            } else if (d2 != '<') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataEscaped;
            } else {
                kVar.f7097c = l.ScriptDataEscapedLessthanSign;
            }
        }
    },
    ScriptDataEscapedDashDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                kVar.f7097c = l.Data;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e(65533);
                kVar.f7097c = l.ScriptDataEscaped;
            } else if (d2 == '-') {
                kVar.e(d2);
            } else if (d2 == '<') {
                kVar.f7097c = l.ScriptDataEscapedLessthanSign;
            } else if (d2 != '>') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataEscaped;
            } else {
                kVar.e(d2);
                kVar.f7097c = l.ScriptData;
            }
        }
    },
    ScriptDataEscapedLessthanSign {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                i.h(kVar.f7102h);
                kVar.f7102h.append(aVar.k());
                kVar.f("<" + aVar.k());
                l lVar = l.ScriptDataDoubleEscapeStart;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (aVar.p('/')) {
                i.h(kVar.f7102h);
                l lVar2 = l.ScriptDataEscapedEndTagOpen;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else {
                kVar.e('<');
                kVar.f7097c = l.ScriptDataEscaped;
            }
        }
    },
    ScriptDataEscapedEndTagOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                kVar.d(false);
                kVar.f7103i.m(aVar.k());
                kVar.f7102h.append(aVar.k());
                l lVar = l.ScriptDataEscapedEndTagName;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f("</");
            kVar.f7097c = l.ScriptDataEscaped;
        }
    },
    ScriptDataEscapedEndTagName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.d(kVar, aVar, l.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.e(kVar, aVar, l.ScriptDataDoubleEscaped, l.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.e(65533);
            } else if (k2 == '-') {
                kVar.e(k2);
                l lVar = l.ScriptDataDoubleEscapedDash;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 == '<') {
                kVar.e(k2);
                l lVar2 = l.ScriptDataDoubleEscapedLessthanSign;
                kVar.a.a();
                kVar.f7097c = lVar2;
            } else if (k2 != 65535) {
                kVar.f(aVar.h('-', '<', 0));
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    ScriptDataDoubleEscapedDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e(65533);
                kVar.f7097c = l.ScriptDataDoubleEscaped;
            } else if (d2 == '-') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataDoubleEscapedDashDash;
            } else if (d2 == '<') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataDoubleEscapedLessthanSign;
            } else if (d2 != 65535) {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataDoubleEscaped;
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    ScriptDataDoubleEscapedDashDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.e(65533);
                kVar.f7097c = l.ScriptDataDoubleEscaped;
            } else if (d2 == '-') {
                kVar.e(d2);
            } else if (d2 == '<') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataDoubleEscapedLessthanSign;
            } else if (d2 == '>') {
                kVar.e(d2);
                kVar.f7097c = l.ScriptData;
            } else if (d2 != 65535) {
                kVar.e(d2);
                kVar.f7097c = l.ScriptDataDoubleEscaped;
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.p('/')) {
                kVar.e('/');
                i.h(kVar.f7102h);
                l lVar = l.ScriptDataDoubleEscapeEnd;
                kVar.a.a();
                kVar.f7097c = lVar;
                return;
            }
            kVar.f7097c = l.ScriptDataDoubleEscaped;
        }
    },
    ScriptDataDoubleEscapeEnd {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            l.e(kVar, aVar, l.ScriptDataEscaped, l.ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                aVar.v();
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7097c = l.AttributeName;
            } else if (d2 != ' ') {
                if (!(d2 == '\"' || d2 == '\'')) {
                    if (d2 == '/') {
                        kVar.f7097c = l.SelfClosingStartTag;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        kVar.f7097c = l.Data;
                        return;
                    } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                        switch (d2) {
                            case '<':
                                aVar.v();
                                kVar.k(this);
                                kVar.h();
                                kVar.f7097c = l.Data;
                                return;
                            case '=':
                                break;
                            case '>':
                                kVar.h();
                                kVar.f7097c = l.Data;
                                return;
                            default:
                                kVar.f7103i.r();
                                aVar.v();
                                kVar.f7097c = l.AttributeName;
                                return;
                        }
                    } else {
                        return;
                    }
                }
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7103i.i(d2);
                kVar.f7097c = l.AttributeName;
            }
        }
    },
    AttributeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            String i2 = aVar.i(l.r0);
            i.AbstractC0111i iVar = kVar.f7103i;
            String str = iVar.f7085d;
            if (str != null) {
                i2 = str.concat(i2);
            }
            iVar.f7085d = i2;
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (!(d2 == '\"' || d2 == '\'')) {
                        if (d2 == '/') {
                            kVar.f7097c = l.SelfClosingStartTag;
                            return;
                        } else if (d2 == 65535) {
                            kVar.i(this);
                            kVar.f7097c = l.Data;
                            return;
                        } else if (!(d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r')) {
                            switch (d2) {
                                case '<':
                                    break;
                                case '=':
                                    kVar.f7097c = l.BeforeAttributeValue;
                                    return;
                                case '>':
                                    kVar.h();
                                    kVar.f7097c = l.Data;
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
                kVar.f7097c = l.AfterAttributeName;
                return;
            }
            kVar.k(this);
            kVar.f7103i.i(65533);
        }
    },
    AfterAttributeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.i(65533);
                kVar.f7097c = l.AttributeName;
            } else if (d2 != ' ') {
                if (!(d2 == '\"' || d2 == '\'')) {
                    if (d2 == '/') {
                        kVar.f7097c = l.SelfClosingStartTag;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        kVar.f7097c = l.Data;
                        return;
                    } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                        switch (d2) {
                            case '<':
                                break;
                            case '=':
                                kVar.f7097c = l.BeforeAttributeValue;
                                return;
                            case '>':
                                kVar.h();
                                kVar.f7097c = l.Data;
                                return;
                            default:
                                kVar.f7103i.r();
                                aVar.v();
                                kVar.f7097c = l.AttributeName;
                                return;
                        }
                    } else {
                        return;
                    }
                }
                kVar.k(this);
                kVar.f7103i.r();
                kVar.f7103i.i(d2);
                kVar.f7097c = l.AttributeName;
            }
        }
    },
    BeforeAttributeValue {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j(65533);
                kVar.f7097c = l.AttributeValue_unquoted;
            } else if (d2 == ' ') {
            } else {
                if (d2 != '\"') {
                    if (d2 != '`') {
                        if (d2 == 65535) {
                            kVar.i(this);
                            kVar.h();
                            kVar.f7097c = l.Data;
                            return;
                        } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                            if (d2 == '&') {
                                aVar.v();
                                kVar.f7097c = l.AttributeValue_unquoted;
                                return;
                            } else if (d2 != '\'') {
                                switch (d2) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        kVar.k(this);
                                        kVar.h();
                                        kVar.f7097c = l.Data;
                                        return;
                                    default:
                                        aVar.v();
                                        kVar.f7097c = l.AttributeValue_unquoted;
                                        return;
                                }
                            } else {
                                kVar.f7097c = l.AttributeValue_singleQuoted;
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    kVar.k(this);
                    kVar.f7103i.j(d2);
                    kVar.f7097c = l.AttributeValue_unquoted;
                    return;
                }
                kVar.f7097c = l.AttributeValue_doubleQuoted;
            }
        }
    },
    AttributeValue_doubleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            String i2 = aVar.i(l.q0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            } else {
                kVar.f7103i.f7088g = true;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j(65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.AfterAttributeValue_quoted;
            } else if (d2 == '&') {
                int[] b = kVar.b('\"', true);
                if (b != null) {
                    kVar.f7103i.l(b);
                } else {
                    kVar.f7103i.j('&');
                }
            } else if (d2 != 65535) {
                kVar.f7103i.j(d2);
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    AttributeValue_singleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            String i2 = aVar.i(l.p0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            } else {
                kVar.f7103i.f7088g = true;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7103i.j(65533);
            } else if (d2 == 65535) {
                kVar.i(this);
                kVar.f7097c = l.Data;
            } else if (d2 == '&') {
                int[] b = kVar.b('\'', true);
                if (b != null) {
                    kVar.f7103i.l(b);
                } else {
                    kVar.f7103i.j('&');
                }
            } else if (d2 != '\'') {
                kVar.f7103i.j(d2);
            } else {
                kVar.f7097c = l.AfterAttributeValue_quoted;
            }
        }
    },
    AttributeValue_unquoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            String i2 = aVar.i(l.s0);
            if (i2.length() > 0) {
                kVar.f7103i.k(i2);
            }
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (!(d2 == '\"' || d2 == '`')) {
                        if (d2 == 65535) {
                            kVar.i(this);
                            kVar.f7097c = l.Data;
                            return;
                        } else if (!(d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r')) {
                            if (d2 == '&') {
                                int[] b = kVar.b('>', true);
                                if (b != null) {
                                    kVar.f7103i.l(b);
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
                                        kVar.f7097c = l.Data;
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
                kVar.f7097c = l.BeforeAttributeName;
                return;
            }
            kVar.k(this);
            kVar.f7103i.j(65533);
        }
    },
    AfterAttributeValue_quoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.BeforeAttributeName;
            } else if (d2 == '/') {
                kVar.f7097c = l.SelfClosingStartTag;
            } else if (d2 == '>') {
                kVar.h();
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.k(this);
                kVar.f7097c = l.BeforeAttributeName;
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    SelfClosingStartTag {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '>') {
                kVar.f7103i.f7090i = true;
                kVar.h();
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.k(this);
                kVar.f7097c = l.BeforeAttributeName;
            } else {
                kVar.i(this);
                kVar.f7097c = l.Data;
            }
        }
    },
    BogusComment {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            aVar.v();
            kVar.n.j(aVar.g('>'));
            char d2 = aVar.d();
            if (d2 == '>' || d2 == 65535) {
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    MarkupDeclarationOpen {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.n("--")) {
                kVar.n.g();
                kVar.f7097c = l.CommentStart;
            } else if (aVar.o("DOCTYPE")) {
                kVar.f7097c = l.Doctype;
            } else if (aVar.n("[CDATA[")) {
                i.h(kVar.f7102h);
                kVar.f7097c = l.CdataSection;
            } else {
                kVar.k(this);
                kVar.c();
                l lVar = l.BogusComment;
                kVar.a.a();
                kVar.f7097c = lVar;
            }
        }
    },
    CommentStart {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.n.i(65533);
                kVar.f7097c = l.Comment;
            } else if (d2 == '-') {
                kVar.f7097c = l.CommentStartDash;
            } else if (d2 == '>') {
                kVar.k(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                aVar.v();
                kVar.f7097c = l.Comment;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    CommentStartDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.n.i(65533);
                kVar.f7097c = l.Comment;
            } else if (d2 == '-') {
                kVar.f7097c = l.CommentStartDash;
            } else if (d2 == '>') {
                kVar.k(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.n.i(d2);
                kVar.f7097c = l.Comment;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    Comment {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char k2 = aVar.k();
            if (k2 == 0) {
                kVar.k(this);
                aVar.a();
                kVar.n.i(65533);
            } else if (k2 == '-') {
                l lVar = l.CommentEndDash;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (k2 != 65535) {
                kVar.n.j(aVar.h('-', 0));
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    CommentEndDash {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.i('-');
                dVar.i(65533);
                kVar.f7097c = l.Comment;
            } else if (d2 == '-') {
                kVar.f7097c = l.CommentEnd;
            } else if (d2 != 65535) {
                i.d dVar2 = kVar.n;
                dVar2.i('-');
                dVar2.i(d2);
                kVar.f7097c = l.Comment;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    CommentEnd {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.j("--");
                dVar.i(65533);
                kVar.f7097c = l.Comment;
            } else if (d2 == '!') {
                kVar.k(this);
                kVar.f7097c = l.CommentEndBang;
            } else if (d2 == '-') {
                kVar.k(this);
                kVar.n.i('-');
            } else if (d2 == '>') {
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.k(this);
                i.d dVar2 = kVar.n;
                dVar2.j("--");
                dVar2.i(d2);
                kVar.f7097c = l.Comment;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    CommentEndBang {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                i.d dVar = kVar.n;
                dVar.j("--!");
                dVar.i(65533);
                kVar.f7097c = l.Comment;
            } else if (d2 == '-') {
                kVar.n.j("--!");
                kVar.f7097c = l.CommentEndDash;
            } else if (d2 == '>') {
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                i.d dVar2 = kVar.n;
                dVar2.j("--!");
                dVar2.i(d2);
                kVar.f7097c = l.Comment;
            } else {
                kVar.i(this);
                kVar.g(kVar.n);
                kVar.f7097c = l.Data;
            }
        }
    },
    Doctype {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.BeforeDoctypeName;
                return;
            }
            if (d2 != '>') {
                if (d2 != 65535) {
                    kVar.k(this);
                    kVar.f7097c = l.BeforeDoctypeName;
                    return;
                }
                kVar.i(this);
            }
            kVar.k(this);
            kVar.f7107m.g();
            i.e eVar = kVar.f7107m;
            eVar.f7083f = true;
            kVar.g(eVar);
            kVar.f7097c = l.Data;
        }
    },
    BeforeDoctypeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                kVar.f7107m.g();
                kVar.f7097c = l.DoctypeName;
                return;
            }
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.g();
                kVar.f7107m.b.append((char) 65533);
                kVar.f7097c = l.DoctypeName;
            } else if (d2 == ' ') {
            } else {
                if (d2 == 65535) {
                    kVar.i(this);
                    kVar.f7107m.g();
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.Data;
                } else if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r') {
                    kVar.f7107m.g();
                    kVar.f7107m.b.append(d2);
                    kVar.f7097c = l.DoctypeName;
                }
            }
        }
    },
    DoctypeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.r()) {
                kVar.f7107m.b.append(aVar.f());
                return;
            }
            char d2 = aVar.d();
            if (d2 != 0) {
                if (d2 != ' ') {
                    if (d2 == '>') {
                        kVar.g(kVar.f7107m);
                        kVar.f7097c = l.Data;
                        return;
                    } else if (d2 == 65535) {
                        kVar.i(this);
                        i.e eVar = kVar.f7107m;
                        eVar.f7083f = true;
                        kVar.g(eVar);
                        kVar.f7097c = l.Data;
                        return;
                    } else if (!(d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r')) {
                        kVar.f7107m.b.append(d2);
                        return;
                    }
                }
                kVar.f7097c = l.AfterDoctypeName;
                return;
            }
            kVar.k(this);
            kVar.f7107m.b.append((char) 65533);
        }
    },
    AfterDoctypeName {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            if (aVar.l()) {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (aVar.q('\t', '\n', '\r', '\f', ' ')) {
                aVar.a();
            } else if (aVar.p('>')) {
                kVar.g(kVar.f7107m);
                l lVar = l.Data;
                kVar.a.a();
                kVar.f7097c = lVar;
            } else if (aVar.o("PUBLIC")) {
                kVar.f7107m.f7080c = "PUBLIC";
                kVar.f7097c = l.AfterDoctypePublicKeyword;
            } else if (aVar.o("SYSTEM")) {
                kVar.f7107m.f7080c = "SYSTEM";
                kVar.f7097c = l.AfterDoctypeSystemKeyword;
            } else {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                l lVar2 = l.BogusDoctype;
                kVar.a.a();
                kVar.f7097c = lVar2;
            }
        }
    },
    AfterDoctypePublicKeyword {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.BeforeDoctypePublicIdentifier;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.DoctypePublicIdentifier_doubleQuoted;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.DoctypePublicIdentifier_singleQuoted;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.BogusDoctype;
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.Data;
            }
        }
    },
    BeforeDoctypePublicIdentifier {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ') {
                if (d2 == '\"') {
                    kVar.f7097c = l.DoctypePublicIdentifier_doubleQuoted;
                } else if (d2 == '\'') {
                    kVar.f7097c = l.DoctypePublicIdentifier_singleQuoted;
                } else if (d2 == '>') {
                    kVar.k(this);
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.Data;
                } else if (d2 != 65535) {
                    kVar.k(this);
                    kVar.f7107m.f7083f = true;
                    kVar.f7097c = l.BogusDoctype;
                } else {
                    kVar.i(this);
                    i.e eVar2 = kVar.f7107m;
                    eVar2.f7083f = true;
                    kVar.g(eVar2);
                    kVar.f7097c = l.Data;
                }
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7081d.append((char) 65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.AfterDoctypePublicIdentifier;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.f7107m.f7081d.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.Data;
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7081d.append((char) 65533);
            } else if (d2 == '\'') {
                kVar.f7097c = l.AfterDoctypePublicIdentifier;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.f7107m.f7081d.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.Data;
            }
        }
    },
    AfterDoctypePublicIdentifier {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.BetweenDoctypePublicAndSystemIdentifiers;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.DoctypeSystemIdentifier_doubleQuoted;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.DoctypeSystemIdentifier_singleQuoted;
            } else if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.k(this);
                kVar.f7107m.f7083f = true;
                kVar.f7097c = l.BogusDoctype;
            } else {
                kVar.i(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ') {
                if (d2 == '\"') {
                    kVar.k(this);
                    kVar.f7097c = l.DoctypeSystemIdentifier_doubleQuoted;
                } else if (d2 == '\'') {
                    kVar.k(this);
                    kVar.f7097c = l.DoctypeSystemIdentifier_singleQuoted;
                } else if (d2 == '>') {
                    kVar.g(kVar.f7107m);
                    kVar.f7097c = l.Data;
                } else if (d2 != 65535) {
                    kVar.k(this);
                    kVar.f7107m.f7083f = true;
                    kVar.f7097c = l.BogusDoctype;
                } else {
                    kVar.i(this);
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.Data;
                }
            }
        }
    },
    AfterDoctypeSystemKeyword {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ') {
                kVar.f7097c = l.BeforeDoctypeSystemIdentifier;
            } else if (d2 == '\"') {
                kVar.k(this);
                kVar.f7097c = l.DoctypeSystemIdentifier_doubleQuoted;
            } else if (d2 == '\'') {
                kVar.k(this);
                kVar.f7097c = l.DoctypeSystemIdentifier_singleQuoted;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
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
                kVar.f7097c = l.Data;
            }
        }
    },
    BeforeDoctypeSystemIdentifier {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ') {
                if (d2 == '\"') {
                    kVar.f7097c = l.DoctypeSystemIdentifier_doubleQuoted;
                } else if (d2 == '\'') {
                    kVar.f7097c = l.DoctypeSystemIdentifier_singleQuoted;
                } else if (d2 == '>') {
                    kVar.k(this);
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.Data;
                } else if (d2 != 65535) {
                    kVar.k(this);
                    kVar.f7107m.f7083f = true;
                    kVar.f7097c = l.BogusDoctype;
                } else {
                    kVar.i(this);
                    i.e eVar2 = kVar.f7107m;
                    eVar2.f7083f = true;
                    kVar.g(eVar2);
                    kVar.f7097c = l.Data;
                }
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7082e.append((char) 65533);
            } else if (d2 == '\"') {
                kVar.f7097c = l.AfterDoctypeSystemIdentifier;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.f7107m.f7082e.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.Data;
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == 0) {
                kVar.k(this);
                kVar.f7107m.f7082e.append((char) 65533);
            } else if (d2 == '\'') {
                kVar.f7097c = l.AfterDoctypeSystemIdentifier;
            } else if (d2 == '>') {
                kVar.k(this);
                i.e eVar = kVar.f7107m;
                eVar.f7083f = true;
                kVar.g(eVar);
                kVar.f7097c = l.Data;
            } else if (d2 != 65535) {
                kVar.f7107m.f7082e.append(d2);
            } else {
                kVar.i(this);
                i.e eVar2 = kVar.f7107m;
                eVar2.f7083f = true;
                kVar.g(eVar2);
                kVar.f7097c = l.Data;
            }
        }
    },
    AfterDoctypeSystemIdentifier {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 != '\t' && d2 != '\n' && d2 != '\f' && d2 != '\r' && d2 != ' ') {
                if (d2 == '>') {
                    kVar.g(kVar.f7107m);
                    kVar.f7097c = l.Data;
                } else if (d2 != 65535) {
                    kVar.k(this);
                    kVar.f7097c = l.BogusDoctype;
                } else {
                    kVar.i(this);
                    i.e eVar = kVar.f7107m;
                    eVar.f7083f = true;
                    kVar.g(eVar);
                    kVar.f7097c = l.Data;
                }
            }
        }
    },
    BogusDoctype {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            char d2 = aVar.d();
            if (d2 == '>') {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.Data;
            } else if (d2 == 65535) {
                kVar.g(kVar.f7107m);
                kVar.f7097c = l.Data;
            }
        }
    },
    CdataSection {
        @Override // k.a.f.l
        public void f(k kVar, a aVar) {
            String str;
            int s = aVar.s("]]>");
            if (s != -1) {
                str = a.c(aVar.a, aVar.f7038h, aVar.f7035e, s);
                aVar.f7035e += s;
            } else {
                int i2 = aVar.f7033c;
                int i3 = aVar.f7035e;
                if (i2 - i3 < 3) {
                    str = aVar.j();
                } else {
                    int i4 = (i2 - 3) + 1;
                    str = a.c(aVar.a, aVar.f7038h, i3, i4 - i3);
                    aVar.f7035e = i4;
                }
            }
            kVar.f7102h.append(str);
            if (aVar.n("]]>") || aVar.l()) {
                kVar.g(new i.b(kVar.f7102h.toString()));
                kVar.f7097c = l.Data;
            }
        }
    };
    
    public static final char[] p0 = {0, '&', '\''};
    public static final char[] q0 = {0, '\"', '&'};
    public static final char[] r0 = {0, '\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>'};
    public static final char[] s0 = {0, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
    public static final String t0 = String.valueOf((char) 65533);

    l(k kVar) {
    }

    public static void a(k kVar, l lVar) {
        int[] b2 = kVar.b(null, false);
        if (b2 == null) {
            kVar.e('&');
        } else {
            kVar.f(new String(b2, 0, b2.length));
        }
        kVar.f7097c = lVar;
    }

    public static void b(k kVar, a aVar, l lVar, l lVar2) {
        char k2 = aVar.k();
        if (k2 == 0) {
            kVar.k(lVar);
            aVar.a();
            kVar.e(65533);
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
            kVar.f(i4 > i2 ? a.c(aVar.a, aVar.f7038h, i2, i4 - i2) : "");
        } else {
            kVar.g(new i.f());
        }
    }

    public static void c(k kVar, a aVar, l lVar, l lVar2) {
        if (aVar.r()) {
            kVar.d(false);
            kVar.f7097c = lVar;
            return;
        }
        kVar.f("</");
        kVar.f7097c = lVar2;
    }

    public static void d(k kVar, a aVar, l lVar) {
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
                kVar.f7097c = BeforeAttributeName;
            } else if (d2 == '/') {
                kVar.f7097c = SelfClosingStartTag;
            } else if (d2 != '>') {
                kVar.f7102h.append(d2);
                z2 = true;
            } else {
                kVar.h();
                kVar.f7097c = Data;
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

    public static void e(k kVar, a aVar, l lVar, l lVar2) {
        if (aVar.r()) {
            String f2 = aVar.f();
            kVar.f7102h.append(f2);
            kVar.f(f2);
            return;
        }
        char d2 = aVar.d();
        if (d2 == '\t' || d2 == '\n' || d2 == '\f' || d2 == '\r' || d2 == ' ' || d2 == '/' || d2 == '>') {
            if (kVar.f7102h.toString().equals("script")) {
                kVar.f7097c = lVar;
            } else {
                kVar.f7097c = lVar2;
            }
            kVar.e(d2);
            return;
        }
        aVar.v();
        kVar.f7097c = lVar2;
    }

    public abstract void f(k kVar, a aVar);
}
