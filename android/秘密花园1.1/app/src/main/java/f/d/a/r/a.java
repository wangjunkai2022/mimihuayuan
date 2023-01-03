package f.d.a.r;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EncoderRegistry.java */
/* loaded from: classes.dex */
public class a {
    public final List<C0051a<?>> a = new ArrayList();

    /* compiled from: EncoderRegistry.java */
    /* renamed from: f.d.a.r.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0051a<T> {
        public final Class<T> a;
        public final f.d.a.o.d<T> b;

        public C0051a(@NonNull Class<T> cls, @NonNull f.d.a.o.d<T> dVar) {
            this.a = cls;
            this.b = dVar;
        }
    }
}
