package k.a.e;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import k.a.e.i;
import k.a.e.l;

/* compiled from: Document.java */
/* loaded from: classes2.dex */
public class f extends h {

    /* renamed from: i  reason: collision with root package name */
    public a f7079i;

    /* renamed from: j  reason: collision with root package name */
    public k.a.f.g f7080j;

    /* renamed from: k  reason: collision with root package name */
    public b f7081k;

    /* compiled from: Document.java */
    /* loaded from: classes2.dex */
    public static class a implements Cloneable {

        /* renamed from: d  reason: collision with root package name */
        public i.a f7083d;
        public i.b a = i.b.base;

        /* renamed from: c  reason: collision with root package name */
        public ThreadLocal<CharsetEncoder> f7082c = new ThreadLocal<>();

        /* renamed from: e  reason: collision with root package name */
        public boolean f7084e = true;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7085f = false;

        /* renamed from: g  reason: collision with root package name */
        public int f7086g = 1;

        /* renamed from: h  reason: collision with root package name */
        public EnumC0116a f7087h = EnumC0116a.html;
        public Charset b = Charset.forName("UTF8");

        /* compiled from: Document.java */
        /* renamed from: k.a.e.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public enum EnumC0116a {
            html,
            xml
        }

        /* renamed from: a */
        public a clone() {
            try {
                a aVar = (a) super.clone();
                String name = this.b.name();
                if (aVar != null) {
                    aVar.b = Charset.forName(name);
                    aVar.a = i.b.valueOf(this.a.name());
                    return aVar;
                }
                throw null;
            } catch (CloneNotSupportedException e2) {
                throw new RuntimeException(e2);
            }
        }

        public CharsetEncoder b() {
            i.a aVar;
            CharsetEncoder newEncoder = this.b.newEncoder();
            this.f7082c.set(newEncoder);
            String name = newEncoder.charset().name();
            if (name.equals("US-ASCII")) {
                aVar = i.a.ascii;
            } else if (name.startsWith("UTF-")) {
                aVar = i.a.utf;
            } else {
                aVar = i.a.fallback;
            }
            this.f7083d = aVar;
            return newEncoder;
        }
    }

    /* compiled from: Document.java */
    /* loaded from: classes2.dex */
    public enum b {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public f(String str) {
        super(k.a.f.h.a("#root", k.a.f.f.f7140c), str, null);
        this.f7079i = new a();
        this.f7081k = b.noQuirks;
    }

    @Override // k.a.e.h, k.a.e.l
    /* renamed from: P */
    public f h() {
        f fVar = (f) super.h();
        fVar.f7079i = this.f7079i.clone();
        return fVar;
    }

    @Override // k.a.e.h, k.a.e.l
    public String q() {
        return "#document";
    }

    @Override // k.a.e.l
    public String r() {
        StringBuilder b2 = k.a.d.a.b();
        int size = this.f7095e.size();
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.f7095e.get(i2);
            if (lVar == null) {
                throw null;
            }
            j.b.D(new l.a(b2, j.b.t(lVar)), lVar);
        }
        String j2 = k.a.d.a.j(b2);
        return j.b.t(this).f7084e ? j2.trim() : j2;
    }
}
