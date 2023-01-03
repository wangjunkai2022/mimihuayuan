package f.d.a.p;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle.java */
/* loaded from: classes.dex */
public class a implements h {
    public final Set<i> a = Collections.newSetFromMap(new WeakHashMap());
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3735c;

    @Override // f.d.a.p.h
    public void a(@NonNull i iVar) {
        this.a.add(iVar);
        if (this.f3735c) {
            iVar.onDestroy();
        } else if (this.b) {
            iVar.onStart();
        } else {
            iVar.d();
        }
    }

    @Override // f.d.a.p.h
    public void b(@NonNull i iVar) {
        this.a.remove(iVar);
    }

    public void c() {
        this.f3735c = true;
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onDestroy();
        }
    }

    public void d() {
        this.b = true;
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStart();
        }
    }

    public void e() {
        this.b = false;
        Iterator it = ((ArrayList) f.d.a.u.i.g(this.a)).iterator();
        while (it.hasNext()) {
            ((i) it.next()).d();
        }
    }
}
