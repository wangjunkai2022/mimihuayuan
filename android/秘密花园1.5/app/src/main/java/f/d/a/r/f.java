package f.d.a.r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.k;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResourceEncoderRegistry.java */
/* loaded from: classes.dex */
public class f {
    public final List<a<?>> a = new ArrayList();

    /* compiled from: ResourceEncoderRegistry.java */
    /* loaded from: classes.dex */
    public static final class a<T> {
        public final Class<T> a;
        public final k<T> b;

        public a(@NonNull Class<T> cls, @NonNull k<T> kVar) {
            this.a = cls;
            this.b = kVar;
        }
    }

    @Nullable
    public synchronized <Z> k<Z> a(@NonNull Class<Z> cls) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a<?> aVar = this.a.get(i2);
            if (aVar.a.isAssignableFrom(cls)) {
                return (k<Z>) aVar.b;
            }
        }
        return null;
    }
}
