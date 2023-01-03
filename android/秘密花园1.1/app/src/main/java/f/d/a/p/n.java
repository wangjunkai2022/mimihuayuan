package f.d.a.p;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker.java */
/* loaded from: classes.dex */
public class n {
    public final Set<f.d.a.s.b> a = Collections.newSetFromMap(new WeakHashMap());
    public final List<f.d.a.s.b> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public boolean f3747c;

    public boolean a(@Nullable f.d.a.s.b bVar) {
        boolean z = true;
        if (bVar == null) {
            return true;
        }
        boolean remove = this.a.remove(bVar);
        if (!this.b.remove(bVar) && !remove) {
            z = false;
        }
        if (z) {
            bVar.clear();
        }
        return z;
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.a.size() + ", isPaused=" + this.f3747c + "}";
    }
}
