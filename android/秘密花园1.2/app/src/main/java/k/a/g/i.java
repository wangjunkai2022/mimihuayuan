package k.a.g;

import java.util.Iterator;
import k.a.e.l;
import k.a.g.d;

/* compiled from: StructuralEvaluator.java */
/* loaded from: classes2.dex */
public abstract class i extends k.a.g.d {
    public k.a.g.d a;

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes2.dex */
    public static class a extends i {
        public a(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            if (hVar2 != null) {
                Iterator<k.a.e.h> it = j.b.j(new d.a(), hVar2).iterator();
                while (it.hasNext()) {
                    k.a.e.h next = it.next();
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
    /* loaded from: classes2.dex */
    public static class b extends i {
        public b(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h hVar3;
            return (hVar == hVar2 || (hVar3 = (k.a.e.h) hVar2.a) == null || !this.a.a(hVar, hVar3)) ? false : true;
        }

        public String toString() {
            return String.format(":ImmediateParent%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes2.dex */
    public static class c extends i {
        public c(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            k.a.e.h N;
            return (hVar == hVar2 || (N = hVar2.N()) == null || !this.a.a(hVar, N)) ? false : true;
        }

        public String toString() {
            return String.format(":prev%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes2.dex */
    public static class d extends i {
        public d(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return !this.a.a(hVar, hVar2);
        }

        public String toString() {
            return String.format(":not%s", this.a);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* loaded from: classes2.dex */
    public static class e extends i {
        public e(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            if (hVar == hVar2) {
                return false;
            }
            l lVar = hVar2.a;
            while (true) {
                k.a.e.h hVar3 = (k.a.e.h) lVar;
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
    /* loaded from: classes2.dex */
    public static class f extends i {
        public f(k.a.g.d dVar) {
            this.a = dVar;
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            if (hVar == hVar2) {
                return false;
            }
            for (k.a.e.h N = hVar2.N(); N != null; N = N.N()) {
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
    /* loaded from: classes2.dex */
    public static class g extends k.a.g.d {
        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            return hVar == hVar2;
        }
    }
}
