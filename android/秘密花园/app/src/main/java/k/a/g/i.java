package k.a.g;

import java.util.Iterator;
import k.a.e.h;
import k.a.e.l;
import k.a.g.d;

/* compiled from: StructuralEvaluator.java */
/* loaded from: classes.dex */
public abstract class i extends d {
    public d a;

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class a extends i {
        public a(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            if (hVar2 != null) {
                Iterator<h> it = j.b.j(new d.a(), hVar2).iterator();
                while (it.hasNext()) {
                    h next = it.next();
                    if (next != hVar2 && this.a.a(hVar2, next)) {
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }

        public String toString() {
            return String.format(":has(%s)", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class b extends i {
        public b(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            h hVar3;
            if (hVar == hVar2 || (hVar3 = (h) hVar2.a) == null || !this.a.a(hVar, hVar3)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return String.format(":ImmediateParent%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class c extends i {
        public c(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            h N;
            if (hVar == hVar2 || (N = hVar2.N()) == null || !this.a.a(hVar, N)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return String.format(":prev%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class d extends i {
        public d(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            return !this.a.a(hVar, hVar2);
        }

        public String toString() {
            return String.format(":not%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class e extends i {
        public e(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            if (hVar == hVar2) {
                return false;
            }
            l lVar = hVar2.a;
            while (true) {
                h hVar3 = (h) lVar;
                if (this.a.a(hVar, hVar3)) {
                    return true;
                }
                if (hVar3 == hVar) {
                    return false;
                }
                lVar = hVar3.a;
            }
        }

        public String toString() {
            return String.format(":parent%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class f extends i {
        public f(d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            if (hVar == hVar2) {
                return false;
            }
            for (h N = hVar2.N(); N != null; N = N.N()) {
                if (this.a.a(hVar, N)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":prev*%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes.dex */
    public static class g extends d {
        @Override // k.a.g.d
        public boolean a(h hVar, h hVar2) {
            return hVar == hVar2;
        }
    }
}
