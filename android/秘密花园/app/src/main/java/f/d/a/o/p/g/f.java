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
import c.a.a.b.g.h;
import f.d.a.i;
import f.d.a.j;
import f.d.a.o.l;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.k;
import f.d.a.s.e;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GifFrameLoader.java */
/* loaded from: classes.dex */
public class f {
    public final f.d.a.m.a a;
    public final Handler b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b> f3717c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final j f3718d;

    /* renamed from: e  reason: collision with root package name */
    public final d f3719e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3720f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3721g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3722h;

    /* renamed from: i  reason: collision with root package name */
    public i<Bitmap> f3723i;

    /* renamed from: j  reason: collision with root package name */
    public a f3724j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3725k;

    /* renamed from: l  reason: collision with root package name */
    public a f3726l;

    /* renamed from: m  reason: collision with root package name */
    public Bitmap f3727m;
    public a n;
    public int o;
    public int p;
    public int q;

    /* compiled from: GifFrameLoader.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a extends f.d.a.s.h.c<Bitmap> {

        /* renamed from: d  reason: collision with root package name */
        public final Handler f3728d;

        /* renamed from: e  reason: collision with root package name */
        public final int f3729e;

        /* renamed from: f  reason: collision with root package name */
        public final long f3730f;

        /* renamed from: g  reason: collision with root package name */
        public Bitmap f3731g;

        public a(Handler handler, int i2, long j2) {
            this.f3728d = handler;
            this.f3729e = i2;
            this.f3730f = j2;
        }

        @Override // f.d.a.s.h.h
        public void b(@NonNull Object obj, @Nullable f.d.a.s.i.b bVar) {
            this.f3731g = (Bitmap) obj;
            this.f3728d.sendMessageAtTime(this.f3728d.obtainMessage(1, this), this.f3730f);
        }

        @Override // f.d.a.s.h.h
        public void g(@Nullable Drawable drawable) {
            this.f3731g = null;
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
            } else if (i2 != 2) {
                return false;
            } else {
                f.this.f3718d.m((a) message.obj);
                return false;
            }
        }
    }

    public f(f.d.a.c cVar, f.d.a.m.a aVar, int i2, int i3, l<Bitmap> lVar, Bitmap bitmap) {
        d dVar = cVar.a;
        j d2 = f.d.a.c.d(cVar.f3358c.getBaseContext());
        i<Bitmap> C = f.d.a.c.d(cVar.f3358c.getBaseContext()).k().a(new e().f(k.b).A(true).v(true).p(i2, i3));
        this.f3718d = d2;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.f3719e = dVar;
        this.b = handler;
        this.f3723i = C;
        this.a = aVar;
        c(lVar, bitmap);
    }

    public final void a() {
        if (this.f3720f && !this.f3721g) {
            if (this.f3722h) {
                h.o(this.n == null, "Pending target must be null when starting from the first frame");
                this.a.h();
                this.f3722h = false;
            }
            a aVar = this.n;
            if (aVar != null) {
                this.n = null;
                b(aVar);
                return;
            }
            this.f3721g = true;
            long uptimeMillis = SystemClock.uptimeMillis() + ((long) this.a.e());
            this.a.c();
            this.f3726l = new a(this.b, this.a.a(), uptimeMillis);
            i<Bitmap> I = this.f3723i.a(new e().u(new f.d.a.t.d(Double.valueOf(Math.random())))).I(this.a);
            a aVar2 = this.f3726l;
            if (I != null) {
                I.F(aVar2, null, I, f.d.a.u.d.a);
                return;
            }
            throw null;
        }
    }

    @VisibleForTesting
    public void b(a aVar) {
        this.f3721g = false;
        if (this.f3725k) {
            this.b.obtainMessage(2, aVar).sendToTarget();
        } else if (!this.f3720f) {
            this.n = aVar;
        } else {
            if (aVar.f3731g != null) {
                Bitmap bitmap = this.f3727m;
                if (bitmap != null) {
                    this.f3719e.b(bitmap);
                    this.f3727m = null;
                }
                a aVar2 = this.f3724j;
                this.f3724j = aVar;
                int size = this.f3717c.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    this.f3717c.get(size).a();
                }
                if (aVar2 != null) {
                    this.b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            a();
        }
    }

    public void c(l<Bitmap> lVar, Bitmap bitmap) {
        h.s(lVar, "Argument must not be null");
        h.s(bitmap, "Argument must not be null");
        this.f3727m = bitmap;
        this.f3723i = this.f3723i.a(new e().x(lVar, true));
        this.o = f.d.a.u.i.f(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }
}
