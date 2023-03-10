package f.d.a.o.p.g;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import f.d.a.j;
import f.d.a.o.l;
import f.d.a.o.n.k;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GifFrameLoader.java */
/* loaded from: classes.dex */
public class f {
    public final f.d.a.m.a a;
    public final Handler b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b> f3796c;

    /* renamed from: d  reason: collision with root package name */
    public final j f3797d;

    /* renamed from: e  reason: collision with root package name */
    public final f.d.a.o.n.b0.d f3798e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3799f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3800g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3801h;

    /* renamed from: i  reason: collision with root package name */
    public f.d.a.i<Bitmap> f3802i;

    /* renamed from: j  reason: collision with root package name */
    public a f3803j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3804k;

    /* renamed from: l  reason: collision with root package name */
    public a f3805l;

    /* renamed from: m  reason: collision with root package name */
    public Bitmap f3806m;
    public a n;
    public int o;
    public int p;
    public int q;

    /* compiled from: GifFrameLoader.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a extends f.d.a.s.h.c<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        public final Handler f3807d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3808e;

        /* renamed from: f  reason: collision with root package name */
        public final long f3809f;

        /* renamed from: g  reason: collision with root package name */
        public Bitmap f3810g;

        public a(Handler handler, int i2, long j2) {
            this.f3807d = handler;
            this.f3808e = i2;
            this.f3809f = j2;
        }

        @Override // f.d.a.s.h.h
        public void b(@NonNull Object obj, @Nullable f.d.a.s.i.b bVar) {
            this.f3810g = (Bitmap) obj;
            this.f3807d.sendMessageAtTime(this.f3807d.obtainMessage(1, this), this.f3809f);
        }

        @Override // f.d.a.s.h.h
        public void g(@Nullable Drawable drawable) {
            this.f3810g = null;
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public class c implements Handler.Callback {
        public c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                f.this.b((a) message.obj);
                return true;
            } else if (i2 == 2) {
                f.this.f3797d.m((a) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    public f(f.d.a.c cVar, f.d.a.m.a aVar, int i2, int i3, l<Bitmap> lVar, Bitmap bitmap) {
        f.d.a.o.n.b0.d dVar = cVar.a;
        j d2 = f.d.a.c.d(cVar.f3437c.getBaseContext());
        f.d.a.i<Bitmap> a2 = f.d.a.c.d(cVar.f3437c.getBaseContext()).k().a(new f.d.a.s.e().f(k.b).A(true).v(true).p(i2, i3));
        this.f3796c = new ArrayList();
        this.f3797d = d2;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.f3798e = dVar;
        this.b = handler;
        this.f3802i = a2;
        this.a = aVar;
        c(lVar, bitmap);
    }

    public final void a() {
        if (!this.f3799f || this.f3800g) {
            return;
        }
        if (this.f3801h) {
            c.a.a.b.g.h.o(this.n == null, "Pending target must be null when starting from the first frame");
            this.a.h();
            this.f3801h = false;
        }
        a aVar = this.n;
        if (aVar != null) {
            this.n = null;
            b(aVar);
            return;
        }
        this.f3800g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.a.e();
        this.a.c();
        this.f3805l = new a(this.b, this.a.a(), uptimeMillis);
        f.d.a.i<Bitmap> I = this.f3802i.a(new f.d.a.s.e().u(new f.d.a.t.d(Double.valueOf(Math.random())))).I(this.a);
        a aVar2 = this.f3805l;
        if (I != null) {
            I.F(aVar2, null, I, f.d.a.u.d.a);
            return;
        }
        throw null;
    }

    @VisibleForTesting
    public void b(a aVar) {
        this.f3800g = false;
        if (this.f3804k) {
            this.b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f3799f) {
            this.n = aVar;
        } else {
            if (aVar.f3810g != null) {
                Bitmap bitmap = this.f3806m;
                if (bitmap != null) {
                    this.f3798e.b(bitmap);
                    this.f3806m = null;
                }
                a aVar2 = this.f3803j;
                this.f3803j = aVar;
                int size = this.f3796c.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    this.f3796c.get(size).a();
                }
                if (aVar2 != null) {
                    this.b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            a();
        }
    }

    public void c(l<Bitmap> lVar, Bitmap bitmap) {
        c.a.a.b.g.h.s(lVar, "Argument must not be null");
        c.a.a.b.g.h.s(bitmap, "Argument must not be null");
        this.f3806m = bitmap;
        this.f3802i = this.f3802i.a(new f.d.a.s.e().x(lVar, true));
        this.o = f.d.a.u.i.f(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }
}
