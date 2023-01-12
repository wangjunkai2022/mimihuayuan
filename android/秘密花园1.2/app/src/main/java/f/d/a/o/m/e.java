package f.d.a.o.m;

import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: DataRewinder.java */
/* loaded from: classes.dex */
public interface e<T> {

    /* compiled from: DataRewinder.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        @NonNull
        Class<T> a();

        @NonNull
        e<T> b(@NonNull T t);
    }

    @NonNull
    T a() throws IOException;

    void b();
}
