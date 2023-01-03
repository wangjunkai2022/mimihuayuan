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
import f.d.a.o.n.k;
import f.d.a.p.c;
import f.d.a.p.f;
import f.d.a.p.h;
import f.d.a.p.i;
import f.d.a.p.m;
import f.d.a.p.n;
import f.d.a.p.o;
import f.d.a.s.d;
import f.d.a.s.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: RequestManager.java */
/* loaded from: classes.dex */
public class j implements ComponentCallbacks2, i {

    /* renamed from: l  reason: collision with root package name */
    public static final e f3395l = new e().e(Bitmap.class).k();
    public final c a;
    public final Context b;

    /* renamed from: c  reason: collision with root package name */
    public final h f3396c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    public final n f3397d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    public final m f3398e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    public final o f3399f = new o();

    /* renamed from: g  reason: collision with root package name */
    public final Runnable f3400g = new a();

    /* renamed from: h  reason: collision with root package name */
    public final Handler f3401h = new Handler(Looper.getMainLooper());

    /* renamed from: i  reason: collision with root package name */
    public final c f3402i;

    /* renamed from: j  reason: collision with root package name */
    public final CopyOnWriteArrayList<d<Object>> f3403j;
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    public e f3404k;

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = j.this;
            jVar.f3396c.a(jVar);
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
        new e().e(GifDrawable.class).k();
        new e().f(k.f3583c).r(f.LOW).v(true);
    }

    public j(@NonNull c cVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context) {
        c cVar2;
        e eVar;
        n nVar = new n();
        f.d.a.p.d dVar = cVar.f3362g;
        this.a = cVar;
        this.f3396c = hVar;
        this.f3398e = mVar;
        this.f3397d = nVar;
        this.b = context;
        Context applicationContext = context.getApplicationContext();
        b bVar = new b(nVar);
        if (((f) dVar) != null) {
            boolean z = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
            Log.isLoggable("ConnectivityMonitor", 3);
            if (z) {
                cVar2 = new f.d.a.p.e(applicationContext, bVar);
            } else {
                cVar2 = new f.d.a.p.j();
            }
            this.f3402i = cVar2;
            if (f.d.a.u.i.k()) {
                this.f3401h.post(this.f3400g);
            } else {
                hVar.a(this);
            }
            hVar.a(this.f3402i);
            this.f3403j = new CopyOnWriteArrayList<>(cVar.f3358c.f3378e);
            e eVar2 = cVar.f3358c;
            synchronized (eVar2) {
                if (eVar2.f3383j == null) {
                    if (((d.a) eVar2.f3377d) != null) {
                        e eVar3 = new e();
                        eVar3.t = true;
                        eVar2.f3383j = eVar3;
                    } else {
                        throw null;
                    }
                }
                eVar = eVar2.f3383j;
            }
            s(eVar);
            synchronized (cVar.f3363h) {
                if (!cVar.f3363h.contains(this)) {
                    cVar.f3363h.add(this);
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
        this.f3399f.d();
    }

    @NonNull
    @CheckResult
    public <ResourceType> i<ResourceType> j(@NonNull Class<ResourceType> cls) {
        return new i<>(this.a, this, cls, this.b);
    }

    @NonNull
    @CheckResult
    public i<Bitmap> k() {
        return j(Bitmap.class).a(f3395l);
    }

    @NonNull
    @CheckResult
    public i<Drawable> l() {
        return j(Drawable.class);
    }

    public void m(@Nullable f.d.a.s.h.h<?> hVar) {
        boolean z;
        if (hVar != null) {
            boolean t = t(hVar);
            f.d.a.s.b f2 = hVar.f();
            if (!t) {
                c cVar = this.a;
                synchronized (cVar.f3363h) {
                    Iterator<j> it = cVar.f3363h.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().t(hVar)) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                }
                if (!z && f2 != null) {
                    hVar.i(null);
                    f2.clear();
                }
            }
        }
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
        this.f3399f.onDestroy();
        for (f.d.a.s.h.h<?> hVar : f.d.a.u.i.g(this.f3399f.a)) {
            m(hVar);
        }
        this.f3399f.a.clear();
        n nVar = this.f3397d;
        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
        while (it.hasNext()) {
            nVar.a((f.d.a.s.b) it.next());
        }
        nVar.b.clear();
        this.f3396c.b(this);
        this.f3396c.b(this.f3402i);
        this.f3401h.removeCallbacks(this.f3400g);
        c cVar = this.a;
        synchronized (cVar.f3363h) {
            if (cVar.f3363h.contains(this)) {
                cVar.f3363h.remove(this);
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
        this.f3399f.onStart();
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
        n nVar = this.f3397d;
        nVar.f3747c = true;
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
        n nVar = this.f3397d;
        nVar.f3747c = false;
        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
        while (it.hasNext()) {
            f.d.a.s.b bVar = (f.d.a.s.b) it.next();
            if (!bVar.d() && !bVar.isRunning()) {
                bVar.c();
            }
        }
        nVar.b.clear();
    }

    public synchronized void s(@NonNull e eVar) {
        this.f3404k = eVar.clone().b();
    }

    public synchronized boolean t(@NonNull f.d.a.s.h.h<?> hVar) {
        f.d.a.s.b f2 = hVar.f();
        if (f2 == null) {
            return true;
        }
        if (!this.f3397d.a(f2)) {
            return false;
        }
        this.f3399f.a.remove(hVar);
        hVar.i(null);
        return true;
    }

    @Override // java.lang.Object
    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3397d + ", treeNode=" + this.f3398e + "}";
    }
}
