package f.d.a;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.d;
import f.d.a.p.c;
import f.d.a.p.m;
import f.d.a.p.n;
import f.d.a.p.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: RequestManager.java */
/* loaded from: classes.dex */
public class j implements ComponentCallbacks2, f.d.a.p.i {

    /* renamed from: l  reason: collision with root package name */
    public static final f.d.a.s.e f3474l = new f.d.a.s.e().e(Bitmap.class).k();
    public final c a;
    public final Context b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.p.h f3475c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    public final n f3476d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    public final m f3477e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    public final o f3478f;

    /* renamed from: g  reason: collision with root package name */
    public final Runnable f3479g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f3480h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.p.c f3481i;

    /* renamed from: j  reason: collision with root package name */
    public final CopyOnWriteArrayList<f.d.a.s.d<Object>> f3482j;
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    public f.d.a.s.e f3483k;

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = j.this;
            jVar.f3475c.a(jVar);
        }
    }

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public class b implements c.a {
        @GuardedBy("RequestManager.this")
        public final n a;

        public b(@NonNull n nVar) {
            this.a = nVar;
        }
    }

    static {
        new f.d.a.s.e().e(GifDrawable.class).k();
        new f.d.a.s.e().f(f.d.a.o.n.k.f3662c).r(f.LOW).v(true);
    }

    public j(@NonNull c cVar, @NonNull f.d.a.p.h hVar, @NonNull m mVar, @NonNull Context context) {
        f.d.a.p.c jVar;
        f.d.a.s.e eVar;
        n nVar = new n();
        f.d.a.p.d dVar = cVar.f3441g;
        this.f3478f = new o();
        this.f3479g = new a();
        this.f3480h = new Handler(Looper.getMainLooper());
        this.a = cVar;
        this.f3475c = hVar;
        this.f3477e = mVar;
        this.f3476d = nVar;
        this.b = context;
        Context applicationContext = context.getApplicationContext();
        b bVar = new b(nVar);
        if (((f.d.a.p.f) dVar) != null) {
            boolean z = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
            Log.isLoggable("ConnectivityMonitor", 3);
            if (z) {
                jVar = new f.d.a.p.e(applicationContext, bVar);
            } else {
                jVar = new f.d.a.p.j();
            }
            this.f3481i = jVar;
            if (f.d.a.u.i.k()) {
                this.f3480h.post(this.f3479g);
            } else {
                hVar.a(this);
            }
            hVar.a(this.f3481i);
            this.f3482j = new CopyOnWriteArrayList<>(cVar.f3437c.f3457e);
            e eVar2 = cVar.f3437c;
            synchronized (eVar2) {
                if (eVar2.f3462j == null) {
                    if (((d.a) eVar2.f3456d) != null) {
                        f.d.a.s.e eVar3 = new f.d.a.s.e();
                        eVar3.t = true;
                        eVar2.f3462j = eVar3;
                    } else {
                        throw null;
                    }
                }
                eVar = eVar2.f3462j;
            }
            s(eVar);
            synchronized (cVar.f3442h) {
                if (!cVar.f3442h.contains(this)) {
                    cVar.f3442h.add(this);
                } else {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
            }
            return;
        }
        throw null;
    }

    @Override // f.d.a.p.i
    public synchronized void d() {
        q();
        this.f3478f.d();
    }

    @NonNull
    @CheckResult
    public <ResourceType> i<ResourceType> j(@NonNull Class<ResourceType> cls) {
        return new i<>(this.a, this, cls, this.b);
    }

    @NonNull
    @CheckResult
    public i<Bitmap> k() {
        return j(Bitmap.class).a(f3474l);
    }

    @NonNull
    @CheckResult
    public i<Drawable> l() {
        return j(Drawable.class);
    }

    public void m(@Nullable f.d.a.s.h.h<?> hVar) {
        boolean z;
        if (hVar == null) {
            return;
        }
        boolean t = t(hVar);
        f.d.a.s.b f2 = hVar.f();
        if (t) {
            return;
        }
        c cVar = this.a;
        synchronized (cVar.f3442h) {
            Iterator<j> it = cVar.f3442h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().t(hVar)) {
                    z = true;
                    break;
                }
            }
        }
        if (z || f2 == null) {
            return;
        }
        hVar.i(null);
        f2.clear();
    }

    @NonNull
    @CheckResult
    public i<Drawable> n(@Nullable @DrawableRes @RawRes Integer num) {
        return l().H(num);
    }

    @NonNull
    @CheckResult
    public i<Drawable> o(@Nullable Object obj) {
        return l().I(obj);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // f.d.a.p.i
    public synchronized void onDestroy() {
        this.f3478f.onDestroy();
        for (f.d.a.s.h.h<?> hVar : f.d.a.u.i.g(this.f3478f.a)) {
            m(hVar);
        }
        this.f3478f.a.clear();
        n nVar = this.f3476d;
        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
        while (it.hasNext()) {
            nVar.a((f.d.a.s.b) it.next());
        }
        nVar.b.clear();
        this.f3475c.b(this);
        this.f3475c.b(this.f3481i);
        this.f3480h.removeCallbacks(this.f3479g);
        c cVar = this.a;
        synchronized (cVar.f3442h) {
            if (cVar.f3442h.contains(this)) {
                cVar.f3442h.remove(this);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // f.d.a.p.i
    public synchronized void onStart() {
        r();
        this.f3478f.onStart();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
    }

    @NonNull
    @CheckResult
    public i<Drawable> p(@Nullable String str) {
        return l().J(str);
    }

    public synchronized void q() {
        n nVar = this.f3476d;
        nVar.f3826c = true;
        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
        while (it.hasNext()) {
            f.d.a.s.b bVar = (f.d.a.s.b) it.next();
            if (bVar.isRunning()) {
                bVar.b();
                nVar.b.add(bVar);
            }
        }
    }

    public synchronized void r() {
        n nVar = this.f3476d;
        nVar.f3826c = false;
        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
        while (it.hasNext()) {
            f.d.a.s.b bVar = (f.d.a.s.b) it.next();
            if (!bVar.d() && !bVar.isRunning()) {
                bVar.c();
            }
        }
        nVar.b.clear();
    }

    public synchronized void s(@NonNull f.d.a.s.e eVar) {
        this.f3483k = eVar.clone().b();
    }

    public synchronized boolean t(@NonNull f.d.a.s.h.h<?> hVar) {
        f.d.a.s.b f2 = hVar.f();
        if (f2 == null) {
            return true;
        }
        if (this.f3476d.a(f2)) {
            this.f3478f.a.remove(hVar);
            hVar.i(null);
            return true;
        }
        return false;
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3476d + ", treeNode=" + this.f3477e + "}";
    }
}
