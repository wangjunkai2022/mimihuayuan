package k.a.f;

/* compiled from: Token.java */
/* loaded from: classes.dex */
public abstract class i {
    public j a;

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class b extends c {
        public b(String str) {
            this.b = str;
        }

        @Override // k.a.f.i.c
        public String toString() {
            return f.b.a.a.a.l(f.b.a.a.a.o("<![CDATA["), this.b, "]]>");
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static class c extends i {
        public String b;

        public c() {
            super(null);
            this.a = j.Character;
        }

        @Override // k.a.f.i
        public i g() {
            this.b = null;
            return this;
        }

        public String toString() {
            return this.b;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class d extends i {
        public final StringBuilder b = new StringBuilder();

        /* renamed from: c  reason: collision with root package name */
        public String f7078c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f7079d;

        public d() {
            super(null);
            this.a = j.Comment;
        }

        @Override // k.a.f.i
        public i g() {
            i.h(this.b);
            this.f7078c = null;
            return this;
        }

        public final d i(char c2) {
            String str = this.f7078c;
            if (str != null) {
                this.b.append(str);
                this.f7078c = null;
            }
            this.b.append(c2);
            return this;
        }

        public final d j(String str) {
            String str2 = this.f7078c;
            if (str2 != null) {
                this.b.append(str2);
                this.f7078c = null;
            }
            if (this.b.length() == 0) {
                this.f7078c = str;
            } else {
                this.b.append(str);
            }
            return this;
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("<!--");
            String str = this.f7078c;
            if (str == null) {
                str = this.b.toString();
            }
            return f.b.a.a.a.l(o, str, "-->");
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class e extends i {
        public final StringBuilder b = new StringBuilder();

        /* renamed from: c  reason: collision with root package name */
        public String f7080c = null;

        /* renamed from: d  reason: collision with root package name */
        public final StringBuilder f7081d = new StringBuilder();

        /* renamed from: e  reason: collision with root package name */
        public final StringBuilder f7082e = new StringBuilder();

        /* renamed from: f  reason: collision with root package name */
        public boolean f7083f = false;

        public e() {
            super(null);
            this.a = j.Doctype;
        }

        @Override // k.a.f.i
        public i g() {
            i.h(this.b);
            this.f7080c = null;
            i.h(this.f7081d);
            i.h(this.f7082e);
            this.f7083f = false;
            return this;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class f extends i {
        public f() {
            super(null);
            this.a = j.EOF;
        }

        @Override // k.a.f.i
        public i g() {
            return this;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class g extends AbstractC0111i {
        public g() {
            this.a = j.EndTag;
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("</");
            String str = this.b;
            if (str == null) {
                str = "(unset)";
            }
            return f.b.a.a.a.l(o, str, ">");
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public static final class h extends AbstractC0111i {
        public h() {
            this.a = j.StartTag;
        }

        @Override // k.a.f.i.AbstractC0111i, k.a.f.i
        public /* bridge */ /* synthetic */ i g() {
            s();
            return this;
        }

        @Override // k.a.f.i.AbstractC0111i
        public AbstractC0111i s() {
            super.g();
            this.f7091j = null;
            return this;
        }

        public String toString() {
            k.a.e.b bVar = this.f7091j;
            if (bVar == null || bVar.size() <= 0) {
                StringBuilder o = f.b.a.a.a.o("<");
                o.append(p());
                o.append(">");
                return o.toString();
            }
            StringBuilder o2 = f.b.a.a.a.o("<");
            o2.append(p());
            o2.append(" ");
            o2.append(this.f7091j.toString());
            o2.append(">");
            return o2.toString();
        }
    }

    /* compiled from: Token.java */
    /* renamed from: k.a.f.i$i  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0111i extends i {
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f7084c;

        /* renamed from: d  reason: collision with root package name */
        public String f7085d;

        /* renamed from: f  reason: collision with root package name */
        public String f7087f;

        /* renamed from: j  reason: collision with root package name */
        public k.a.e.b f7091j;

        /* renamed from: e  reason: collision with root package name */
        public StringBuilder f7086e = new StringBuilder();

        /* renamed from: g  reason: collision with root package name */
        public boolean f7088g = false;

        /* renamed from: h  reason: collision with root package name */
        public boolean f7089h = false;

        /* renamed from: i  reason: collision with root package name */
        public boolean f7090i = false;

        public AbstractC0111i() {
            super(null);
        }

        public final void i(char c2) {
            String valueOf = String.valueOf(c2);
            String str = this.f7085d;
            if (str != null) {
                valueOf = str.concat(valueOf);
            }
            this.f7085d = valueOf;
        }

        public final void j(char c2) {
            o();
            this.f7086e.append(c2);
        }

        public final void k(String str) {
            o();
            if (this.f7086e.length() == 0) {
                this.f7087f = str;
            } else {
                this.f7086e.append(str);
            }
        }

        public final void l(int[] iArr) {
            o();
            for (int i2 : iArr) {
                this.f7086e.appendCodePoint(i2);
            }
        }

        public final void m(char c2) {
            n(String.valueOf(c2));
        }

        public final void n(String str) {
            String str2 = this.b;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.b = str;
            this.f7084c = j.b.o(str);
        }

        public final void o() {
            this.f7089h = true;
            String str = this.f7087f;
            if (str != null) {
                this.f7086e.append(str);
                this.f7087f = null;
            }
        }

        public final String p() {
            String str = this.b;
            j.b.m(str == null || str.length() == 0);
            return this.b;
        }

        public final AbstractC0111i q(String str) {
            this.b = str;
            this.f7084c = j.b.o(str);
            return this;
        }

        public final void r() {
            String str;
            if (this.f7091j == null) {
                this.f7091j = new k.a.e.b();
            }
            String str2 = this.f7085d;
            if (str2 != null) {
                String trim = str2.trim();
                this.f7085d = trim;
                if (trim.length() > 0) {
                    if (this.f7089h) {
                        str = this.f7086e.length() > 0 ? this.f7086e.toString() : this.f7087f;
                    } else {
                        str = this.f7088g ? "" : null;
                    }
                    this.f7091j.b(this.f7085d, str);
                }
            }
            this.f7085d = null;
            this.f7088g = false;
            this.f7089h = false;
            i.h(this.f7086e);
            this.f7087f = null;
        }

        /* renamed from: s */
        public AbstractC0111i g() {
            this.b = null;
            this.f7084c = null;
            this.f7085d = null;
            i.h(this.f7086e);
            this.f7087f = null;
            this.f7088g = false;
            this.f7089h = false;
            this.f7090i = false;
            this.f7091j = null;
            return this;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes.dex */
    public enum j {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    public i(a aVar) {
    }

    public static void h(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public final boolean a() {
        return this.a == j.Character;
    }

    public final boolean b() {
        return this.a == j.Comment;
    }

    public final boolean c() {
        return this.a == j.Doctype;
    }

    public final boolean d() {
        return this.a == j.EOF;
    }

    public final boolean e() {
        return this.a == j.EndTag;
    }

    public final boolean f() {
        return this.a == j.StartTag;
    }

    public abstract i g();
}
