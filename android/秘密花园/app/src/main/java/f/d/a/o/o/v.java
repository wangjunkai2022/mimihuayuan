package f.d.a.o.o;

import androidx.annotation.NonNull;
import f.d.a.f;
import f.d.a.o.h;
import f.d.a.o.m.d;
import f.d.a.o.o.n;

/* compiled from: UnitModelLoader.java */
/* loaded from: classes.dex */
public class v<Model> implements n<Model, Model> {
    public static final v<?> a = new v<>();

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Model> implements o<Model, Model> {
        public static final a<?> a = new a<>();

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Model, Model> b(r rVar) {
            return v.a;
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: UnitModelLoader.java */
    /* loaded from: classes.dex */
    public static class b<Model> implements d<Model> {
        public final Model a;

        public b(Model model) {
            this.a = model;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<Model> a() {
            return (Class<Model>) this.a.getClass();
        }

        @Override // f.d.a.o.m.d
        public void b() {
        }

        @Override // f.d.a.o.m.d
        public void cancel() {
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public f.d.a.o.a e() {
            return f.d.a.o.a.LOCAL;
        }

        /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: Model, ? super Model */
        @Override // f.d.a.o.m.d
        public void f(@NonNull f fVar, @NonNull d.a<? super Model> aVar) {
            aVar.d((Model) this.a);
        }
    }

    @Override // f.d.a.o.o.n
    public n.a<Model> a(@NonNull Model model, int i2, int i3, @NonNull h hVar) {
        return new n.a<>(new f.d.a.t.d(model), new b(model));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Model model) {
        return true;
    }
}
