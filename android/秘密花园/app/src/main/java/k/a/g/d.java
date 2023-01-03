package k.a.g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: Evaluator.java */
/* loaded from: classes.dex */
public abstract class d {

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class a extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class a0 extends o {
        public a0(int i2, int i3) {
            super(i2, i3);
        }

        @Override // k.a.g.d.o
        public int b(k.a.e.h hVar, k.a.e.h hVar2) {
            return ((k.a.e.h) hVar2.a).D().size() - hVar2.G();
        }

        @Override // k.a.g.d.o
        public String c() {
            return "nth-last-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class b extends d {
        public String a;

        public b(String str) {
            this.a = str;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a);
        }

        public String toString() {
            return String.format("[%s]", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static class b0 extends o {
        public b0(int i2, int i3) {
            super(i2, i3);
        }

        @Override // k.a.g.d.o
        public int b(k.a.e.h hVar, k.a.e.h hVar2) {
            c D = ((k.a.e.h) hVar2.a).D();
            int i2 = 0;
            for (int G = hVar2.G(); G < D.size(); G++) {
                if (D.get(G).f7018c.equals(hVar2.f7018c)) {
                    i2++;
                }
            }
            return i2;
        }

        @Override // k.a.g.d.o
        public String c() {
            return "nth-last-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static abstract class c extends d {
        public String a;
        public String b;

        public c(String str, String str2, boolean z) {
            String str3;
            j.b.q(str);
            j.b.q(str2);
            this.a = j.b.p(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            if (z) {
                str3 = j.b.p(str2);
            } else {
                str3 = z2 ? j.b.o(str2) : j.b.p(str2);
            }
            this.b = str3;
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static class c0 extends o {
        public c0(int i2, int i3) {
            super(i2, i3);
        }

        @Override // k.a.g.d.o
        public int b(k.a.e.h hVar, k.a.e.h hVar2) {
            Iterator<k.a.e.h> it = ((k.a.e.h) hVar2.a).D().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                k.a.e.h next = it.next();
                if (next.f7018c.equals(hVar2.f7018c)) {
                    i2++;
                    continue;
                }
                if (next == hVar2) {
                    break;
                }
            }
            return i2;
        }

        @Override // k.a.g.d.o
        public String c() {
            return "nth-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: k.a.g.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0114d extends d {
        public String a;

        public C0114d(String str) {
            j.b.q(str);
            this.a = j.b.o(str);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.b d2 = hVar2.d();
            if (d2 != null) {
                ArrayList arrayList = new ArrayList(d2.a);
                for (int i2 = 0; i2 < d2.a; i2++) {
                    if (!d2.m(d2.b[i2])) {
                        arrayList.add(new k.a.e.a(d2.b[i2], d2.f7003c[i2], d2));
                    }
                }
                for (k.a.e.a aVar : Collections.unmodifiableList(arrayList)) {
                    if (j.b.o(aVar.a).startsWith(this.a)) {
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }

        public String toString() {
            return String.format("[^%s]", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class d0 extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            c cVar;
            k.a.e.l lVar = hVar2.a;
            k.a.e.h hVar3 = (k.a.e.h) lVar;
            if (hVar3 == null || (hVar3 instanceof k.a.e.f)) {
                return false;
            }
            if (lVar == null) {
                cVar = new c(0);
            } else {
                List<k.a.e.h> C = ((k.a.e.h) lVar).C();
                c cVar2 = new c(C.size() - 1);
                for (k.a.e.h hVar4 : C) {
                    if (hVar4 != hVar2) {
                        cVar2.add(hVar4);
                    }
                }
                cVar = cVar2;
            }
            if (cVar.isEmpty()) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":only-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class e extends c {
        public e(String str, String str2) {
            super(str, str2, true);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a) && this.b.equalsIgnoreCase(hVar2.b(this.a).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.a, this.b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class e0 extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h hVar3 = (k.a.e.h) hVar2.a;
            if (hVar3 == null || (hVar3 instanceof k.a.e.f)) {
                return false;
            }
            Iterator<k.a.e.h> it = hVar3.D().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (it.next().f7018c.equals(hVar2.f7018c)) {
                    i2++;
                }
            }
            if (i2 == 1) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class f extends c {
        public f(String str, String str2) {
            super(str, str2, true);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a) && j.b.o(hVar2.b(this.a)).contains(this.b);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.a, this.b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class f0 extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            if (hVar instanceof k.a.e.f) {
                hVar = hVar.C().get(0);
            }
            if (hVar2 == hVar) {
                return true;
            }
            return false;
        }

        public String toString() {
            return ":root";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class g extends c {
        public g(String str, String str2) {
            super(str, str2, false);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a) && j.b.o(hVar2.b(this.a)).endsWith(this.b);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.a, this.b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class g0 extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            if (hVar2 instanceof k.a.e.m) {
                return true;
            }
            if (hVar2 != null) {
                ArrayList arrayList = new ArrayList();
                for (k.a.e.l lVar : hVar2.f7020e) {
                    if (lVar instanceof k.a.e.n) {
                        arrayList.add((k.a.e.n) lVar);
                    }
                }
                Iterator it = Collections.unmodifiableList(arrayList).iterator();
                while (true) {
                    boolean z = false;
                    if (!it.hasNext()) {
                        return false;
                    }
                    k.a.e.n nVar = (k.a.e.n) it.next();
                    k.a.e.m mVar = new k.a.e.m(k.a.f.h.a(hVar2.f7018c.a, k.a.f.f.f7066d), hVar2.e(), hVar2.d());
                    if (nVar != null) {
                        j.b.s(mVar);
                        j.b.s(nVar.a);
                        k.a.e.l lVar2 = nVar.a;
                        if (lVar2 != null) {
                            if (lVar2 == lVar2) {
                                z = true;
                            }
                            j.b.n(z);
                            j.b.s(mVar);
                            k.a.e.l lVar3 = mVar.a;
                            if (lVar3 != null) {
                                lVar3.x(mVar);
                            }
                            int i2 = nVar.b;
                            lVar2.l().set(i2, mVar);
                            mVar.a = lVar2;
                            mVar.b = i2;
                            nVar.a = null;
                            mVar.z(nVar);
                        } else {
                            throw null;
                        }
                    } else {
                        throw null;
                    }
                }
            } else {
                throw null;
            }
        }

        public String toString() {
            return ":matchText";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class h extends d {
        public String a;
        public Pattern b;

        public h(String str, Pattern pattern) {
            this.a = j.b.p(str);
            this.b = pattern;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a) && this.b.matcher(hVar2.b(this.a)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.a, this.b.toString());
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class h0 extends d {
        public Pattern a;

        public h0(Pattern pattern) {
            this.a = pattern;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return this.a.matcher(hVar2.O()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class i extends c {
        public i(String str, String str2) {
            super(str, str2, true);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return !this.b.equalsIgnoreCase(hVar2.b(this.a));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.a, this.b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class i0 extends d {
        public Pattern a;

        public i0(Pattern pattern) {
            this.a = pattern;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return this.a.matcher(hVar2.L()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class j extends c {
        public j(String str, String str2) {
            super(str, str2, false);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.m(this.a) && j.b.o(hVar2.b(this.a)).startsWith(this.b);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.a, this.b);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class j0 extends d {
        public String a;

        public j0(String str) {
            this.a = str;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.f7018c.b.equals(this.a);
        }

        public String toString() {
            return String.format("%s", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class k extends d {
        public String a;

        public k(String str) {
            this.a = str;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            String str = this.a;
            if (hVar2.n()) {
                String h2 = hVar2.f7021f.h("class");
                int length = h2.length();
                int length2 = str.length();
                if (length != 0 && length >= length2) {
                    if (length == length2) {
                        return str.equalsIgnoreCase(h2);
                    }
                    boolean z = false;
                    int i2 = 0;
                    for (int i3 = 0; i3 < length; i3++) {
                        if (Character.isWhitespace(h2.charAt(i3))) {
                            if (!z) {
                                continue;
                            } else if (i3 - i2 == length2 && h2.regionMatches(true, i2, str, 0, length2)) {
                                return true;
                            } else {
                                z = false;
                            }
                        } else if (!z) {
                            i2 = i3;
                            z = true;
                        }
                    }
                    if (z && length - i2 == length2) {
                        return h2.regionMatches(true, i2, str, 0, length2);
                    }
                }
            }
            return false;
        }

        public String toString() {
            return String.format(".%s", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class k0 extends d {
        public String a;

        public k0(String str) {
            this.a = str;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.f7018c.b.endsWith(this.a);
        }

        public String toString() {
            return String.format("%s", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class l extends d {
        public String a;

        public l(String str) {
            this.a = j.b.o(str);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return j.b.o(hVar2.F()).contains(this.a);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class m extends d {
        public String a;

        public m(String str) {
            this.a = j.b.o(str);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return j.b.o(hVar2.L()).contains(this.a);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class n extends d {
        public String a;

        public n(String str) {
            this.a = j.b.o(str);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return j.b.o(hVar2.O()).contains(this.a);
        }

        public String toString() {
            return String.format(":contains(%s)", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static abstract class o extends d {
        public final int a;
        public final int b;

        public o(int i2, int i3) {
            this.a = i2;
            this.b = i3;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h hVar3 = (k.a.e.h) hVar2.a;
            if (hVar3 == null || (hVar3 instanceof k.a.e.f)) {
                return false;
            }
            int b = b(hVar, hVar2);
            int i2 = this.a;
            if (i2 != 0) {
                int i3 = this.b;
                if ((b - i3) * i2 < 0 || (b - i3) % i2 != 0) {
                    return false;
                }
                return true;
            } else if (b == this.b) {
                return true;
            } else {
                return false;
            }
        }

        public abstract int b(k.a.e.h hVar, k.a.e.h hVar2);

        public abstract String c();

        public String toString() {
            if (this.a == 0) {
                return String.format(":%s(%d)", c(), Integer.valueOf(this.b));
            }
            if (this.b == 0) {
                return String.format(":%s(%dn)", c(), Integer.valueOf(this.a));
            }
            return String.format(":%s(%dn%+d)", c(), Integer.valueOf(this.a), Integer.valueOf(this.b));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class p extends d {
        public String a;

        public p(String str) {
            this.a = str;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return this.a.equals(hVar2.n() ? hVar2.f7021f.h("id") : "");
        }

        public String toString() {
            return String.format("#%s", this.a);
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class q extends r {
        public q(int i2) {
            super(i2);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.G() == this.a;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static abstract class r extends d {
        public int a;

        public r(int i2) {
            this.a = i2;
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class s extends r {
        public s(int i2) {
            super(i2);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.G() > this.a;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class t extends r {
        public t(int i2) {
            super(i2);
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar != hVar2 && hVar2.G() < this.a;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.a));
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class u extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            for (k.a.e.l lVar : hVar2.g()) {
                if (!((lVar instanceof k.a.e.d) || (lVar instanceof k.a.e.g))) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class v extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h hVar3 = (k.a.e.h) hVar2.a;
            return hVar3 != null && !(hVar3 instanceof k.a.e.f) && hVar2.G() == 0;
        }

        public String toString() {
            return ":first-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class w extends c0 {
        public w() {
            super(0, 1);
        }

        @Override // k.a.g.d.o
        public String toString() {
            return ":first-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class x extends d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h hVar3 = (k.a.e.h) hVar2.a;
            if (hVar3 == null || (hVar3 instanceof k.a.e.f) || hVar2.G() != hVar3.D().size() - 1) {
                return false;
            }
            return true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class y extends b0 {
        public y() {
            super(0, 1);
        }

        @Override // k.a.g.d.o
        public String toString() {
            return ":last-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* loaded from: classes.dex */
    public static final class z extends o {
        public z(int i2, int i3) {
            super(i2, i3);
        }

        @Override // k.a.g.d.o
        public int b(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar2.G() + 1;
        }

        @Override // k.a.g.d.o
        public String c() {
            return "nth-child";
        }
    }

    public abstract boolean a(k.a.e.h hVar, k.a.e.h hVar2);
}
