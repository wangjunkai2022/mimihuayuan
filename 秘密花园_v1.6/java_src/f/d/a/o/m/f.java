package f.d.a.o.m;

import androidx.annotation.NonNull;
import f.d.a.o.m.e;
import java.util.HashMap;
import java.util.Map;
/* compiled from: DataRewinderRegistry.java */
/* loaded from: classes.dex */
public class f {
    public static final e.a<?> b = new a();
    public final Map<Class<?>, e.a<?>> a = new HashMap();

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    public class a implements e.a<Object> {
        @Override // f.d.a.o.m.e.a
        @NonNull
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // f.d.a.o.m.e.a
        @NonNull
        public e<Object> b(@NonNull Object obj) {
            return new b(obj);
        }
    }

    /* compiled from: DataRewinderRegistry.java */
    /* loaded from: classes.dex */
    public static final class b implements e<Object> {
        public final Object a;

        public b(@NonNull Object obj) {
            this.a = obj;
        }

        @Override // f.d.a.o.m.e
        @NonNull
        public Object a() {
            return this.a;
        }

        @Override // f.d.a.o.m.e
        public void b() {
        }
    }
}
