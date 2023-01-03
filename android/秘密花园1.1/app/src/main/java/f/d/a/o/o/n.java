package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader.java */
/* loaded from: classes.dex */
public interface n<Model, Data> {

    /* compiled from: ModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> {
        public final f.d.a.o.f a;
        public final List<f.d.a.o.f> b;

        /* renamed from: c  reason: collision with root package name */
        public final f.d.a.o.m.d<Data> f3660c;

        public a(@NonNull f.d.a.o.f fVar, @NonNull f.d.a.o.m.d<Data> dVar) {
            List<f.d.a.o.f> emptyList = Collections.emptyList();
            c.a.a.b.g.h.s(fVar, "Argument must not be null");
            this.a = fVar;
            c.a.a.b.g.h.s(emptyList, "Argument must not be null");
            this.b = emptyList;
            c.a.a.b.g.h.s(dVar, "Argument must not be null");
            this.f3660c = dVar;
        }
    }

    @Nullable
    a<Data> a(@NonNull Model model, int i2, int i3, @NonNull f.d.a.o.h hVar);

    boolean b(@NonNull Model model);
}
