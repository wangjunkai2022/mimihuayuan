package k.a.g;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* compiled from: CombiningEvaluator.java */
/* loaded from: classes.dex */
public abstract class b extends d {
    public int b = 0;
    public final ArrayList<d> a = new ArrayList<>();

    public void b() {
        this.b = this.a.size();
    }

    /* compiled from: CombiningEvaluator.java */
    /* loaded from: classes.dex */
    public static final class a extends b {
        public a(Collection<d> collection) {
            this.a.addAll(collection);
            b();
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            for (int i2 = 0; i2 < this.b; i2++) {
                if (!this.a.get(i2).a(hVar, hVar2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return k.a.d.a.h(this.a, " ");
        }

        public a(d... dVarArr) {
            this(Arrays.asList(dVarArr));
        }
    }

    /* compiled from: CombiningEvaluator.java */
    /* renamed from: k.a.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0120b extends b {
        public C0120b(d... dVarArr) {
            List asList = Arrays.asList(dVarArr);
            if (this.b > 1) {
                this.a.add(new a(asList));
            } else {
                this.a.addAll(asList);
            }
            b();
        }

        @Override // k.a.g.d
        public boolean a(k.a.e.h hVar, k.a.e.h hVar2) {
            for (int i2 = 0; i2 < this.b; i2++) {
                if (this.a.get(i2).a(hVar, hVar2)) {
                    return true;
                }
            }
            return false;
        }

        public void c(d dVar) {
            this.a.add(dVar);
            b();
        }

        public String toString() {
            return k.a.d.a.h(this.a, ", ");
        }

        public C0120b() {
        }
    }
}
