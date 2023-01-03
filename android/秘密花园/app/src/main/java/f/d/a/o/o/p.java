package f.d.a.o.o;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ModelLoaderRegistry.java */
/* loaded from: classes.dex */
public class p {
    public final r a;
    public final a b = new a();

    /* compiled from: ModelLoaderRegistry.java */
    /* loaded from: classes.dex */
    public static class a {
        public final Map<Class<?>, C0038a<?>> a = new HashMap();

        /* compiled from: ModelLoaderRegistry.java */
        /* renamed from: f.d.a.o.o.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0038a<Model> {
            public final List<n<Model, ?>> a;

            public C0038a(List<n<Model, ?>> list) {
                this.a = list;
            }
        }
    }

    public p(@NonNull Pools.Pool<List<Throwable>> pool) {
        r rVar = new r(pool);
        this.a = rVar;
    }
}
