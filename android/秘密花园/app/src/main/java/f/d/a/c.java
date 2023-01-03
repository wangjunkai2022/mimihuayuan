package f.d.a;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import com.bumptech.glide.GeneratedAppGlideModule;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.j;
import f.d.a.o.m.k;
import f.d.a.o.n.b0.b;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.c0.i;
import f.d.a.o.n.c0.j;
import f.d.a.o.n.d0.a;
import f.d.a.o.o.a;
import f.d.a.o.o.b;
import f.d.a.o.o.d;
import f.d.a.o.o.e;
import f.d.a.o.o.f;
import f.d.a.o.o.k;
import f.d.a.o.o.s;
import f.d.a.o.o.u;
import f.d.a.o.o.v;
import f.d.a.o.o.w;
import f.d.a.o.o.x;
import f.d.a.o.o.y.a;
import f.d.a.o.o.y.b;
import f.d.a.o.o.y.c;
import f.d.a.o.o.y.d;
import f.d.a.o.o.y.e;
import f.d.a.o.p.c.a0;
import f.d.a.o.p.c.b0;
import f.d.a.o.p.c.g;
import f.d.a.o.p.c.h;
import f.d.a.o.p.c.n;
import f.d.a.o.p.c.q;
import f.d.a.o.p.c.t;
import f.d.a.o.p.c.w;
import f.d.a.o.p.c.y;
import f.d.a.o.p.d.a;
import f.d.a.p.l;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Glide.java */
/* loaded from: classes.dex */
public class c implements ComponentCallbacks2 {

    /* renamed from: i  reason: collision with root package name */
    public static volatile c f3356i;

    /* renamed from: j  reason: collision with root package name */
    public static volatile boolean f3357j;
    public final d a;
    public final i b;

    /* renamed from: c  reason: collision with root package name */
    public final e f3358c;

    /* renamed from: d  reason: collision with root package name */
    public final h f3359d;

    /* renamed from: e  reason: collision with root package name */
    public final b f3360e;

    /* renamed from: f  reason: collision with root package name */
    public final l f3361f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.p.d f3362g;

    /* renamed from: h  reason: collision with root package name */
    public final List<j> f3363h = new ArrayList();

    /* compiled from: Glide.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/content/Context;Lf/d/a/o/n/l;Lf/d/a/o/n/c0/i;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;Lf/d/a/p/l;Lf/d/a/p/d;ILf/d/a/c$a;Ljava/util/Map<Ljava/lang/Class<*>;Lf/d/a/k<**>;>;Ljava/util/List<Lf/d/a/s/d<Ljava/lang/Object;>;>;ZZII)V */
    public c(@NonNull Context context, @NonNull f.d.a.o.n.l lVar, @NonNull i iVar, @NonNull d dVar, @NonNull b bVar, @NonNull l lVar2, @NonNull f.d.a.p.d dVar2, int i2, @NonNull a aVar, @NonNull Map map, @NonNull List list, boolean z, boolean z2) {
        j jVar;
        j jVar2;
        this.a = dVar;
        this.f3360e = bVar;
        this.b = iVar;
        this.f3361f = lVar2;
        this.f3362g = dVar2;
        Resources resources = context.getResources();
        h hVar = new h();
        this.f3359d = hVar;
        f.d.a.o.p.c.l lVar3 = new f.d.a.o.p.c.l();
        f.d.a.r.b bVar2 = hVar.f3391g;
        synchronized (bVar2) {
            bVar2.a.add(lVar3);
        }
        if (Build.VERSION.SDK_INT >= 27) {
            h hVar2 = this.f3359d;
            q qVar = new q();
            f.d.a.r.b bVar3 = hVar2.f3391g;
            synchronized (bVar3) {
                bVar3.a.add(qVar);
            }
        }
        List<ImageHeaderParser> e2 = this.f3359d.e();
        f.d.a.o.p.g.a aVar2 = new f.d.a.o.p.g.a(context, e2, dVar, bVar);
        b0 b0Var = new b0(dVar, new b0.f());
        if (!z2 || Build.VERSION.SDK_INT < 28) {
            n nVar = new n(this.f3359d.e(), resources.getDisplayMetrics(), dVar, bVar);
            jVar = new g(nVar);
            jVar2 = new y(nVar, bVar);
        } else {
            jVar2 = new t();
            jVar = new h();
        }
        f.d.a.o.p.e.d dVar3 = new f.d.a.o.p.e.d(context);
        s.c cVar = new s.c(resources);
        s.d dVar4 = new s.d(resources);
        s.b bVar4 = new s.b(resources);
        s.a aVar3 = new s.a(resources);
        f.d.a.o.p.c.c cVar2 = new f.d.a.o.p.c.c(bVar);
        f.d.a.o.p.h.a aVar4 = new f.d.a.o.p.h.a();
        f.d.a.o.p.h.d dVar5 = new f.d.a.o.p.h.d();
        ContentResolver contentResolver = context.getContentResolver();
        h hVar3 = this.f3359d;
        hVar3.a(ByteBuffer.class, new f.d.a.o.o.c());
        hVar3.a(InputStream.class, new f.d.a.o.o.t(bVar));
        hVar3.d("Bitmap", ByteBuffer.class, Bitmap.class, jVar);
        hVar3.d("Bitmap", InputStream.class, Bitmap.class, jVar2);
        hVar3.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, b0Var);
        hVar3.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new b0(dVar, new b0.c(null)));
        hVar3.c(Bitmap.class, Bitmap.class, v.a.a);
        hVar3.d("Bitmap", Bitmap.class, Bitmap.class, new a0());
        hVar3.b(Bitmap.class, cVar2);
        hVar3.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new f.d.a.o.p.c.a(resources, jVar));
        hVar3.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new f.d.a.o.p.c.a(resources, jVar2));
        hVar3.d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new f.d.a.o.p.c.a(resources, b0Var));
        hVar3.b(BitmapDrawable.class, new f.d.a.o.p.c.b(dVar, cVar2));
        hVar3.d("Gif", InputStream.class, GifDrawable.class, new f.d.a.o.p.g.i(e2, aVar2, bVar));
        hVar3.d("Gif", ByteBuffer.class, GifDrawable.class, aVar2);
        hVar3.b(GifDrawable.class, new f.d.a.o.p.g.c());
        hVar3.c(f.d.a.m.a.class, f.d.a.m.a.class, v.a.a);
        hVar3.d("Bitmap", f.d.a.m.a.class, Bitmap.class, new f.d.a.o.p.g.g(dVar));
        hVar3.d("legacy_append", Uri.class, Drawable.class, dVar3);
        hVar3.d("legacy_append", Uri.class, Bitmap.class, new w(dVar3, dVar));
        hVar3.g(new a.C0042a());
        hVar3.c(File.class, ByteBuffer.class, new d.b());
        hVar3.c(File.class, InputStream.class, new f.e());
        hVar3.d("legacy_append", File.class, File.class, new f.d.a.o.p.f.a());
        hVar3.c(File.class, ParcelFileDescriptor.class, new f.b());
        hVar3.c(File.class, File.class, v.a.a);
        hVar3.g(new k.a(bVar));
        hVar3.c(Integer.TYPE, InputStream.class, cVar);
        hVar3.c(Integer.TYPE, ParcelFileDescriptor.class, bVar4);
        hVar3.c(Integer.class, InputStream.class, cVar);
        hVar3.c(Integer.class, ParcelFileDescriptor.class, bVar4);
        hVar3.c(Integer.class, Uri.class, dVar4);
        hVar3.c(Integer.TYPE, AssetFileDescriptor.class, aVar3);
        hVar3.c(Integer.class, AssetFileDescriptor.class, aVar3);
        hVar3.c(Integer.TYPE, Uri.class, dVar4);
        hVar3.c(String.class, InputStream.class, new e.c());
        hVar3.c(Uri.class, InputStream.class, new e.c());
        hVar3.c(String.class, InputStream.class, new u.c());
        hVar3.c(String.class, ParcelFileDescriptor.class, new u.b());
        hVar3.c(String.class, AssetFileDescriptor.class, new u.a());
        hVar3.c(Uri.class, InputStream.class, new b.a());
        hVar3.c(Uri.class, InputStream.class, new a.c(context.getAssets()));
        hVar3.c(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets()));
        hVar3.c(Uri.class, InputStream.class, new c.a(context));
        hVar3.c(Uri.class, InputStream.class, new d.a(context));
        hVar3.c(Uri.class, InputStream.class, new w.d(contentResolver));
        hVar3.c(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver));
        hVar3.c(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver));
        hVar3.c(Uri.class, InputStream.class, new x.a());
        hVar3.c(URL.class, InputStream.class, new e.a());
        hVar3.c(Uri.class, File.class, new k.a(context));
        hVar3.c(f.d.a.o.o.g.class, InputStream.class, new a.C0039a());
        hVar3.c(byte[].class, ByteBuffer.class, new b.a());
        hVar3.c(byte[].class, InputStream.class, new b.d());
        hVar3.c(Uri.class, Uri.class, v.a.a);
        hVar3.c(Drawable.class, Drawable.class, v.a.a);
        hVar3.d("legacy_append", Drawable.class, Drawable.class, new f.d.a.o.p.e.e());
        hVar3.h(Bitmap.class, BitmapDrawable.class, new f.d.a.o.p.h.b(resources));
        hVar3.h(Bitmap.class, byte[].class, aVar4);
        hVar3.h(Drawable.class, byte[].class, new f.d.a.o.p.h.c(dVar, aVar4, dVar5));
        hVar3.h(GifDrawable.class, byte[].class, dVar5);
        this.f3358c = new e(context, bVar, this.f3359d, new f.d.a.s.h.f(), aVar, map, list, lVar, z, i2);
    }

    @GuardedBy("Glide.class")
    public static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        List<f.d.a.q.c> list;
        if (!f3357j) {
            f3357j = true;
            d dVar = new d();
            Context applicationContext = context.getApplicationContext();
            List emptyList = Collections.emptyList();
            if (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) {
                Log.isLoggable("ManifestParser", 3);
                ArrayList arrayList = new ArrayList();
                try {
                    ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                    if (applicationInfo.metaData == null) {
                        Log.isLoggable("ManifestParser", 3);
                    } else {
                        if (Log.isLoggable("ManifestParser", 2)) {
                            String str = "Got app info metadata: " + applicationInfo.metaData;
                        }
                        for (String str2 : applicationInfo.metaData.keySet()) {
                            if ("GlideModule".equals(applicationInfo.metaData.get(str2))) {
                                arrayList.add(f.d.a.q.e.a(str2));
                                Log.isLoggable("ManifestParser", 3);
                            }
                        }
                        Log.isLoggable("ManifestParser", 3);
                    }
                    list = arrayList;
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new RuntimeException("Unable to find metadata to parse GlideModules", e2);
                }
            } else {
                list = emptyList;
            }
            if (generatedAppGlideModule != null && !generatedAppGlideModule.getExcludedModuleClasses().isEmpty()) {
                Set<Class<?>> excludedModuleClasses = generatedAppGlideModule.getExcludedModuleClasses();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    f.d.a.q.c cVar = (f.d.a.q.c) it.next();
                    if (excludedModuleClasses.contains(cVar.getClass())) {
                        if (Log.isLoggable("Glide", 3)) {
                            String str3 = "AppGlideModule excludes manifest GlideModule: " + cVar;
                        }
                        it.remove();
                    }
                }
            }
            if (Log.isLoggable("Glide", 3)) {
                for (f.d.a.q.c cVar2 : list) {
                    StringBuilder o = f.b.a.a.a.o("Discovered GlideModule from manifest: ");
                    o.append(cVar2.getClass());
                    o.toString();
                }
            }
            dVar.f3374m = generatedAppGlideModule != null ? generatedAppGlideModule.getRequestManagerFactory() : null;
            for (f.d.a.q.c cVar3 : list) {
                cVar3.applyOptions(applicationContext, dVar);
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.applyOptions(applicationContext, dVar);
            }
            if (dVar.f3367f == null) {
                int a2 = f.d.a.o.n.d0.a.a();
                dVar.f3367f = new f.d.a.o.n.d0.a(new ThreadPoolExecutor(a2, a2, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.ThreadFactoryC0031a("source", a.b.b, false)));
            }
            if (dVar.f3368g == null) {
                dVar.f3368g = new f.d.a.o.n.d0.a(new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.ThreadFactoryC0031a("disk-cache", a.b.b, true)));
            }
            if (dVar.n == null) {
                int i2 = f.d.a.o.n.d0.a.a() >= 4 ? 2 : 1;
                dVar.n = new f.d.a.o.n.d0.a(new ThreadPoolExecutor(i2, i2, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.ThreadFactoryC0031a("animation", a.b.b, true)));
            }
            if (dVar.f3370i == null) {
                dVar.f3370i = new f.d.a.o.n.c0.j(new j.a(applicationContext));
            }
            if (dVar.f3371j == null) {
                dVar.f3371j = new f.d.a.p.f();
            }
            if (dVar.f3364c == null) {
                int i3 = dVar.f3370i.a;
                if (i3 > 0) {
                    dVar.f3364c = new f.d.a.o.n.b0.j((long) i3);
                } else {
                    dVar.f3364c = new f.d.a.o.n.b0.e();
                }
            }
            if (dVar.f3365d == null) {
                dVar.f3365d = new f.d.a.o.n.b0.i(dVar.f3370i.f3529d);
            }
            if (dVar.f3366e == null) {
                dVar.f3366e = new f.d.a.o.n.c0.h((long) dVar.f3370i.b);
            }
            if (dVar.f3369h == null) {
                dVar.f3369h = new f.d.a.o.n.c0.g(applicationContext);
            }
            if (dVar.b == null) {
                dVar.b = new f.d.a.o.n.l(dVar.f3366e, dVar.f3369h, dVar.f3368g, dVar.f3367f, new f.d.a.o.n.d0.a(new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, f.d.a.o.n.d0.a.b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a.ThreadFactoryC0031a("source-unlimited", a.b.b, false))), dVar.n, false);
            }
            List<f.d.a.s.d<Object>> list2 = dVar.o;
            if (list2 == null) {
                dVar.o = Collections.emptyList();
            } else {
                dVar.o = Collections.unmodifiableList(list2);
            }
            c cVar4 = new c(applicationContext, dVar.b, dVar.f3366e, dVar.f3364c, dVar.f3365d, new l(dVar.f3374m), dVar.f3371j, dVar.f3372k, dVar.f3373l, dVar.a, dVar.o, false, false);
            for (f.d.a.q.c cVar5 : list) {
                try {
                    cVar5.registerComponents(applicationContext, cVar4, cVar4.f3359d);
                } catch (AbstractMethodError e3) {
                    StringBuilder o2 = f.b.a.a.a.o("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
                    o2.append(cVar5.getClass().getName());
                    throw new IllegalStateException(o2.toString(), e3);
                }
            }
            if (generatedAppGlideModule != null) {
                generatedAppGlideModule.registerComponents(applicationContext, cVar4, cVar4.f3359d);
            }
            applicationContext.registerComponentCallbacks(cVar4);
            f3356i = cVar4;
            f3357j = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    @NonNull
    public static c b(@NonNull Context context) {
        if (f3356i == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                Log.isLoggable("Glide", 5);
            } catch (IllegalAccessException e2) {
                c(e2);
                throw null;
            } catch (InstantiationException e3) {
                c(e3);
                throw null;
            } catch (NoSuchMethodException e4) {
                c(e4);
                throw null;
            } catch (InvocationTargetException e5) {
                c(e5);
                throw null;
            }
            synchronized (c.class) {
                if (f3356i == null) {
                    a(context, generatedAppGlideModule);
                }
            }
        }
        return f3356i;
    }

    public static void c(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    @NonNull
    public static j d(@NonNull Context context) {
        c.a.a.b.g.h.s(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return b(context).f3361f.b(context);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        f.d.a.u.i.a();
        ((f.d.a.u.f) this.b).e(0);
        this.a.c();
        this.f3360e.c();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        long j2;
        f.d.a.u.i.a();
        for (j jVar : this.f3363h) {
            if (jVar == null) {
                throw null;
            }
        }
        f.d.a.o.n.c0.h hVar = (f.d.a.o.n.c0.h) this.b;
        if (hVar != null) {
            if (i2 >= 40) {
                hVar.e(0);
            } else if (i2 >= 20 || i2 == 15) {
                synchronized (hVar) {
                    j2 = hVar.b;
                }
                hVar.e(j2 / 2);
            }
            this.a.trimMemory(i2);
            this.f3360e.trimMemory(i2);
            return;
        }
        throw null;
    }
}
