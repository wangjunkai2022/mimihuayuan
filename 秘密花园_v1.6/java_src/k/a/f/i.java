package k.a.f;
/* compiled from: Token.java */
/* loaded from: classes2.dex */
public abstract class i {
    public j a;

    /* compiled from: Token.java */
    /* loaded from: classes2.dex */
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
    /* loaded from: classes2.dex */
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
    /* loaded from: classes2.dex */
    public static final class d extends i {
        public final StringBuilder b;

        /* renamed from: c  reason: collision with root package name */
        public String f7162c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f7163d;

        public d() {
            super(null);
            this.b = new StringBuilder();
            this.a = j.Comment;
        }

        @Override // k.a.f.i
        public i g() {
            i.h(this.b);
            this.f7162c = null;
            return this;
        }

        public final d i(char c2) {
            String str = this.f7162c;
            if (str != null) {
                this.b.append(str);
                this.f7162c = null;
            }
            this.b.append(c2);
            return this;
        }

        public final d j(String str) {
            String str2 = this.f7162c;
            if (str2 != null) {
                this.b.append(str2);
                this.f7162c = null;
            }
            if (this.b.length() == 0) {
                this.f7162c = str;
            } else {
                this.b.append(str);
            }
            return this;
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("<!--");
            String str = this.f7162c;
            if (str == null) {
                str = this.b.toString();
            }
            return f.b.a.a.a.l(o, str, "-->");
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes2.dex */
    public static final class e extends i {
        public final StringBuilder b;

        /* renamed from: c  reason: collision with root package name */
        public String f7164c;

        /* renamed from: d  reason: collision with root package name */
        public final StringBuilder f7165d;

        /* renamed from: e  reason: collision with root package name */
        public final StringBuilder f7166e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7167f;

        public e() {
            super(null);
            this.b = new StringBuilder();
            this.f7164c = null;
            this.f7165d = new StringBuilder();
            this.f7166e = new StringBuilder();
            this.f7167f = false;
            this.a = j.Doctype;
        }

        @Override // k.a.f.i
        public i g() {
            i.h(this.b);
            this.f7164c = null;
            i.h(this.f7165d);
            i.h(this.f7166e);
            this.f7167f = false;
            return this;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes2.dex */
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
    /* loaded from: classes2.dex */
    public static final class g extends AbstractC0118i {
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
    /* loaded from: classes2.dex */
    public static final class h extends AbstractC0118i {
        public h() {
            this.a = j.StartTag;
        }

        @Override // k.a.f.i.AbstractC0118i, k.a.f.i
        public /* bridge */ /* synthetic */ i g() {
            s();
            return this;
        }

        @Override // k.a.f.i.AbstractC0118i
        public AbstractC0118i s() {
            super.g();
            this.f7175j = null;
            return this;
        }

        public String toString() {
            k.a.e.b bVar = this.f7175j;
            if (bVar != null && bVar.size() > 0) {
                StringBuilder o = f.b.a.a.a.o("<");
                o.append(p());
                o.append(" ");
                o.append(this.f7175j.toString());
                o.append(">");
                return o.toString();
            }
            StringBuilder o2 = f.b.a.a.a.o("<");
            o2.append(p());
            o2.append(">");
            return o2.toString();
        }
    }

    /* compiled from: Token.java */
    /* renamed from: k.a.f.i$i  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0118i extends i {
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public String f7168c;

        /* renamed from: d  reason: collision with root package name */
        public String f7169d;

        /* renamed from: e  reason: collision with root package name */
        public StringBuilder f7170e;

        /* renamed from: f  reason: collision with root package name */
        public String f7171f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f7172g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f7173h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f7174i;

        /* renamed from: j  reason: collision with root package name */
        public k.a.e.b f7175j;

        public AbstractC0118i() {
            super(null);
            this.f7170e = new StringBuilder();
            this.f7172g = false;
            this.f7173h = false;
            this.f7174i = false;
        }

        public final void i(char c2) {
            String valueOf = String.valueOf(c2);
            String str = this.f7169d;
            if (str != null) {
                valueOf = str.concat(valueOf);
            }
            this.f7169d = valueOf;
        }

        public final void j(char c2) {
            o();
            this.f7170e.append(c2);
        }

        public final void k(String str) {
            o();
            if (this.f7170e.length() == 0) {
                this.f7171f = str;
            } else {
                this.f7170e.append(str);
            }
        }

        public final void l(int[] iArr) {
            o();
            for (int i2 : iArr) {
                this.f7170e.appendCodePoint(i2);
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
            this.f7168c = j.b.o(str);
        }

        public final void o() {
            this.f7173h = true;
            String str = this.f7171f;
            if (str != null) {
                this.f7170e.append(str);
                this.f7171f = null;
            }
        }

        public final String p() {
            String str = this.b;
            j.b.m(str == null || str.length() == 0);
            return this.b;
        }

        public final AbstractC0118i q(String str) {
            this.b = str;
            this.f7168c = j.b.o(str);
            return this;
        }

        public final void r() {
            String str;
            if (this.f7175j == null) {
                this.f7175j = new k.a.e.b();
            }
            String str2 = this.f7169d;
            if (str2 != null) {
                String trim = str2.trim();
                this.f7169d = trim;
                if (trim.length() > 0) {
                    if (this.f7173h) {
                        str = this.f7170e.length() > 0 ? this.f7170e.toString() : this.f7171f;
                    } else {
                        str = this.f7172g ? "" : null;
                    }
                    this.f7175j.b(this.f7169d, str);
                }
            }
            this.f7169d = null;
            this.f7172g = false;
            this.f7173h = false;
            i.h(this.f7170e);
            this.f7171f = null;
        }

        @Override // k.a.f.i
        /* renamed from: s */
        public AbstractC0118i g() {
            this.b = null;
            this.f7168c = null;
            this.f7169d = null;
            i.h(this.f7170e);
            this.f7171f = null;
            this.f7172g = false;
            this.f7173h = false;
            this.f7174i = false;
            this.f7175j = null;
            return this;
        }
    }

    /* compiled from: Token.java */
    /* loaded from: classes2.dex */
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
