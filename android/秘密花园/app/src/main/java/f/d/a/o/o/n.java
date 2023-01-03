package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.d.a.o.f;
import f.d.a.o.m.d;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader.java */
/* loaded from: classes.dex */
public interface n<Model, Data> {

    /* compiled from: ModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> {
        public final f a;
        public final List<f> b;

        /* renamed from: c  reason: collision with root package name */
        public final d<Data> f3660c;

        public a(@NonNull f fVar, @NonNull d<Data> dVar) {
            List<f> emptyList = Collections.emptyList();
            h.s(fVar, "Argument must not be null");
            this.a = fVar;
            h.s(emptyList, "Argument must not be null");
            this.b = emptyList;
            h.s(dVar, "Argument must not be null");
            this.f3660c = dVar;
        }
    }

    @Nullable
    a<Data> a(@NonNull Model model, int i2, int i3, @NonNull f.d.a.o.h hVar);

    boolean b(@NonNull Model model);
}
