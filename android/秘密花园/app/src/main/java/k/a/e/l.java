package k.a.e;

import j.b;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import k.a.e.f;
import k.a.f.g;
import k.a.g.f;

/* compiled from: Node.java */
/* loaded from: classes.dex */
public abstract class l implements Cloneable {
    public l a;
    public int b;

    /* compiled from: Node.java */
    /* loaded from: classes.dex */
    public static class a implements f {
        public Appendable a;
        public f.a b;

        public a(Appendable appendable, f.a aVar) {
            this.a = appendable;
            this.b = aVar;
            aVar.b();
        }

        @Override // k.a.g.f
        public void a(l lVar, int i2) {
            try {
                lVar.s(this.a, i2, this.b);
            } catch (IOException e2) {
                throw new k.a.a(e2);
            }
        }

        @Override // k.a.g.f
        public void b(l lVar, int i2) {
            if (!lVar.q().equals("#text")) {
                try {
                    lVar.t(this.a, i2, this.b);
                } catch (IOException e2) {
                    throw new k.a.a(e2);
                }
            }
        }
    }

    public String a(String str) {
        b.q(str);
        if (!m(str)) {
            return "";
        }
        return k.a.d.a.k(e(), b(str));
    }

    public String b(String str) {
        b.s(str);
        if (!n()) {
            return "";
        }
        String h2 = d().h(str);
        if (h2.length() > 0) {
            return h2;
        }
        if (str.startsWith("abs:")) {
            return a(str.substring(4));
        }
        return "";
    }

    public l c(String str, String str2) {
        g gVar;
        l y = y();
        f fVar = y instanceof f ? (f) y : null;
        if (fVar == null || (gVar = fVar.f7005j) == null) {
            gVar = new g(new k.a.f.b());
        }
        k.a.f.f fVar2 = gVar.b;
        if (fVar2 != null) {
            String trim = str.trim();
            if (!fVar2.b) {
                trim = b.o(trim);
            }
            b d2 = d();
            int l2 = d2.l(trim);
            if (l2 != -1) {
                d2.f7003c[l2] = str2;
                if (!d2.b[l2].equals(trim)) {
                    d2.b[l2] = trim;
                }
            } else {
                d2.b(trim, str2);
            }
            return this;
        }
        throw null;
    }

    public abstract b d();

    public abstract String e();

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        return this == obj;
    }

    public abstract int f();

    public List<l> g() {
        return Collections.unmodifiableList(l());
    }

    /* renamed from: h */
    public l clone() {
        l i2 = i(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(i2);
        while (!linkedList.isEmpty()) {
            l lVar = (l) linkedList.remove();
            int f2 = lVar.f();
            for (int i3 = 0; i3 < f2; i3++) {
                List<l> l2 = lVar.l();
                l i4 = l2.get(i3).i(lVar);
                l2.set(i3, i4);
                linkedList.add(i4);
            }
        }
        return i2;
    }

    public l i(l lVar) {
        int i2;
        try {
            l lVar2 = (l) super.clone();
            lVar2.a = lVar;
            if (lVar == null) {
                i2 = 0;
            } else {
                i2 = this.b;
            }
            lVar2.b = i2;
            return lVar2;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public abstract void j(String str);

    public abstract l k();

    public abstract List<l> l();

    public boolean m(String str) {
        b.s(str);
        if (str.startsWith("abs:")) {
            String substring = str.substring(4);
            if ((d().l(substring) != -1) && !a(substring).equals("")) {
                return true;
            }
        }
        if (d().l(str) != -1) {
            return true;
        }
        return false;
    }

    public abstract boolean n();

    public void o(Appendable appendable, int i2, f.a aVar) throws IOException {
        appendable.append('\n').append(k.a.d.a.i(i2 * aVar.f7011g));
    }

    public l p() {
        l lVar = this.a;
        if (lVar == null) {
            return null;
        }
        List<l> l2 = lVar.l();
        int i2 = this.b + 1;
        if (l2.size() > i2) {
            return l2.get(i2);
        }
        return null;
    }

    public abstract String q();

    public String r() {
        StringBuilder b = k.a.d.a.b();
        b.D(new a(b, b.t(this)), this);
        return k.a.d.a.j(b);
    }

    public abstract void s(Appendable appendable, int i2, f.a aVar) throws IOException;

    public abstract void t(Appendable appendable, int i2, f.a aVar) throws IOException;

    @Override // java.lang.Object
    public String toString() {
        return r();
    }

    public l u() {
        return this.a;
    }

    public final void v(int i2) {
        List<l> l2 = l();
        while (i2 < l2.size()) {
            l2.get(i2).b = i2;
            i2++;
        }
    }

    public void w() {
        b.s(this.a);
        this.a.x(this);
    }

    public void x(l lVar) {
        b.n(lVar.a == this);
        int i2 = lVar.b;
        l().remove(i2);
        v(i2);
        lVar.a = null;
    }

    public l y() {
        l lVar = this;
        while (true) {
            l lVar2 = lVar.a;
            if (lVar2 == null) {
                return lVar;
            }
            lVar = lVar2;
        }
    }
}
