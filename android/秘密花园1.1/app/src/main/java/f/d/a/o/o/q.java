package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MultiModelLoader.java */
/* loaded from: classes.dex */
public class q<Model, Data> implements n<Model, Data> {
    public final List<n<Model, Data>> a;
    public final Pools.Pool<List<Throwable>> b;

    /* compiled from: MultiModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> implements f.d.a.o.m.d<Data>, d.a<Data> {
        public final List<f.d.a.o.m.d<Data>> a;
        public final Pools.Pool<List<Throwable>> b;

        /* renamed from: c  reason: collision with root package name */
        public int f3661c;

        /* renamed from: d  reason: collision with root package name */
        public f.d.a.f f3662d;

        /* renamed from: e  reason: collision with root package name */
        public d.a<? super Data> f3663e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public List<Throwable> f3664f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f3665g;

        public a(@NonNull List<f.d.a.o.m.d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.b = pool;
            if (!list.isEmpty()) {
                this.a = list;
                this.f3661c = 0;
                return;
            }
            throw new IllegalArgumentException("Must not be empty.");
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<Data> a() {
            return this.a.get(0).a();
        }

        @Override // f.d.a.o.m.d
        public void b() {
            List<Throwable> list = this.f3664f;
            if (list != null) {
                this.b.release(list);
            }
            this.f3664f = null;
            for (f.d.a.o.m.d<Data> dVar : this.a) {
                dVar.b();
            }
        }

        @Override // f.d.a.o.m.d.a
        public void c(@NonNull Exception exc) {
            List<Throwable> list = this.f3664f;
            c.a.a.b.g.h.s(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // f.d.a.o.m.d
        public void cancel() {
            this.f3665g = true;
            for (f.d.a.o.m.d<Data> dVar : this.a) {
                dVar.cancel();
            }
        }

        @Override // f.d.a.o.m.d.a
        public void d(@Nullable Data data) {
            if (data != null) {
                this.f3663e.d(data);
            } else {
                g();
            }
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public f.d.a.o.a e() {
            return this.a.get(0).e();
        }

        @Override // f.d.a.o.m.d
        public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super Data> aVar) {
            this.f3662d = fVar;
            this.f3663e = aVar;
            this.f3664f = this.b.acquire();
            this.a.get(this.f3661c).f(fVar, this);
            if (this.f3665g) {
                cancel();
            }
        }

        public final void g() {
            if (this.f3665g) {
                return;
            }
            if (this.f3661c < this.a.size() - 1) {
                this.f3661c++;
                f(this.f3662d, this.f3663e);
                return;
            }
            c.a.a.b.g.h.s(this.f3664f, "Argument must not be null");
            this.f3663e.c(new f.d.a.o.n.r("Fetch failed", new ArrayList(this.f3664f)));
        }
    }

    public q(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.a = list;
        this.b = pool;
    }

    @Override // f.d.a.o.o.n
    public n.a<Data> a(@NonNull Model model, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        n.a<Data> a2;
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(size);
        f.d.a.o.f fVar = null;
        for (int i4 = 0; i4 < size; i4++) {
            n<Model, Data> nVar = this.a.get(i4);
            if (nVar.b(model) && (a2 = nVar.a(model, i2, i3, hVar)) != null) {
                fVar = a2.a;
                arrayList.add(a2.f3660c);
            }
        }
        if (arrayList.isEmpty() || fVar == null) {
            return null;
        }
        return new n.a<>(fVar, new a(arrayList, this.b));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Model model) {
        for (n<Model, Data> nVar : this.a) {
            if (nVar.b(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("MultiModelLoader{modelLoaders=");
        o.append(Arrays.toString(this.a.toArray()));
        o.append('}');
        return o.toString();
    }
}
