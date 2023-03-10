package f.d.a.o.m;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: DataFetcher.java */
/* loaded from: classes.dex */
public interface d<T> {

    /* compiled from: DataFetcher.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        void c(@NonNull Exception exc);

        void d(@Nullable T t);
    }

    @NonNull
    Class<T> a();

    void b();

    void cancel();

    @NonNull
    f.d.a.o.a e();

    void f(@NonNull f.d.a.f fVar, @NonNull a<? super T> aVar);
}
