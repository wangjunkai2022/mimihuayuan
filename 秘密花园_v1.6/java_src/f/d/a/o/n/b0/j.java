package f.d.a.o.n.b0;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: LruBitmapPool.java */
/* loaded from: classes.dex */
public class j implements d {

    /* renamed from: j  reason: collision with root package name */
    public static final Bitmap.Config f3588j = Bitmap.Config.ARGB_8888;
    public final k a;
    public final Set<Bitmap.Config> b;

    /* renamed from: c  reason: collision with root package name */
    public final a f3589c;

    /* renamed from: d  reason: collision with root package name */
    public long f3590d;

    /* renamed from: e  reason: collision with root package name */
    public long f3591e;

    /* renamed from: f  reason: collision with root package name */
    public int f3592f;

    /* renamed from: g  reason: collision with root package name */
    public int f3593g;

    /* renamed from: h  reason: collision with root package name */
    public int f3594h;

    /* renamed from: i  reason: collision with root package name */
    public int f3595i;

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    public static final class b implements a {
    }

    public j(long j2) {
        m mVar = new m();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> unmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f3590d = j2;
        this.a = mVar;
        this.b = unmodifiableSet;
        this.f3589c = new b();
    }

    @Override // f.d.a.o.n.b0.d
    @NonNull
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        Bitmap g2 = g(i2, i3, config);
        if (g2 != null) {
            g2.eraseColor(0);
            return g2;
        }
        if (config == null) {
            config = f3588j;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // f.d.a.o.n.b0.d
    public synchronized void b(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.a.d(bitmap) <= this.f3590d && this.b.contains(bitmap.getConfig())) {
                        int d2 = this.a.d(bitmap);
                        this.a.b(bitmap);
                        if (((b) this.f3589c) != null) {
                            this.f3594h++;
                            this.f3591e += d2;
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                this.a.f(bitmap);
                            }
                            e();
                            h(this.f3590d);
                            return;
                        }
                        throw null;
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.a.f(bitmap);
                        bitmap.isMutable();
                        this.b.contains(bitmap.getConfig());
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // f.d.a.o.n.b0.d
    public void c() {
        Log.isLoggable("LruBitmapPool", 3);
        h(0L);
    }

    @Override // f.d.a.o.n.b0.d
    @NonNull
    public Bitmap d(int i2, int i3, Bitmap.Config config) {
        Bitmap g2 = g(i2, i3, config);
        if (g2 == null) {
            if (config == null) {
                config = f3588j;
            }
            return Bitmap.createBitmap(i2, i3, config);
        }
        return g2;
    }

    public final void e() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            f();
        }
    }

    public final void f() {
        StringBuilder o = f.b.a.a.a.o("Hits=");
        o.append(this.f3592f);
        o.append(", misses=");
        o.append(this.f3593g);
        o.append(", puts=");
        o.append(this.f3594h);
        o.append(", evictions=");
        o.append(this.f3595i);
        o.append(", currentSize=");
        o.append(this.f3591e);
        o.append(", maxSize=");
        o.append(this.f3590d);
        o.append("\nStrategy=");
        o.append(this.a);
        o.toString();
    }

    @Nullable
    public final synchronized Bitmap g(int i2, int i3, @Nullable Bitmap.Config config) {
        Bitmap a2;
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
        a2 = this.a.a(i2, i3, config != null ? config : f3588j);
        if (a2 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                this.a.c(i2, i3, config);
            }
            this.f3593g++;
        } else {
            this.f3592f++;
            this.f3591e -= this.a.d(a2);
            if (((b) this.f3589c) != null) {
                a2.setHasAlpha(true);
                a2.setPremultiplied(true);
            } else {
                throw null;
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            this.a.c(i2, i3, config);
        }
        e();
        return a2;
    }

    public final synchronized void h(long j2) {
        while (this.f3591e > j2) {
            Bitmap e2 = this.a.e();
            if (e2 == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    f();
                }
                this.f3591e = 0L;
                return;
            } else if (((b) this.f3589c) != null) {
                this.f3591e -= this.a.d(e2);
                this.f3595i++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.a.f(e2);
                }
                e();
                e2.recycle();
            } else {
                throw null;
            }
        }
    }

    @Override // f.d.a.o.n.b0.d
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i2) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i2 >= 40 || (Build.VERSION.SDK_INT >= 23 && i2 >= 20)) {
            Log.isLoggable("LruBitmapPool", 3);
            h(0L);
        } else if (i2 >= 20 || i2 == 15) {
            h(this.f3590d / 2);
        }
    }
}
