package f.i.a.a.e1;

import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import f.i.a.a.e1.q;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.d;
import f.i.a.a.j1.f;
import f.i.a.a.j1.j;
import f.i.a.a.l1.g;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import f.i.a.a.u0;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: DownloadHelper.java */
/* loaded from: classes.dex */
public final class q {
    public static final d.c p;
    public static final f q;
    public static final f r;
    public static final f s;
    public final String a;
    public final Uri b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f4725c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final e0 f4726d;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.p[] f4728f;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f4730h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4731i;

    /* renamed from: j  reason: collision with root package name */
    public b f4732j;

    /* renamed from: k  reason: collision with root package name */
    public e f4733k;

    /* renamed from: l  reason: collision with root package name */
    public p0[] f4734l;

    /* renamed from: m  reason: collision with root package name */
    public f.a[] f4735m;
    public List<f.i.a.a.j1.j>[][] n;
    public List<f.i.a.a.j1.j>[][] o;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.j1.d f4727e = new f.i.a.a.j1.d(new c.a(null));

    /* renamed from: g  reason: collision with root package name */
    public final SparseIntArray f4729g = new SparseIntArray();

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes.dex */
    public interface b {
        void onPrepareError(q qVar, IOException iOException);

        void onPrepared(q qVar);
    }

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes.dex */
    public static final class c extends f.i.a.a.j1.c {

        /* compiled from: DownloadHelper.java */
        /* loaded from: classes.dex */
        public static final class a implements j.b {
            public a(a aVar) {
            }

            @Override // f.i.a.a.j1.j.b
            public f.i.a.a.j1.j[] a(j.a[] aVarArr, f.i.a.a.l1.g gVar) {
                f.i.a.a.j1.j[] jVarArr = new f.i.a.a.j1.j[aVarArr.length];
                for (int i2 = 0; i2 < aVarArr.length; i2++) {
                    jVarArr[i2] = aVarArr[i2] == null ? null : new c(aVarArr[i2].a, aVarArr[i2].b);
                }
                return jVarArr;
            }
        }

        public c(o0 o0Var, int[] iArr) {
            super(o0Var, iArr);
        }

        @Override // f.i.a.a.j1.j
        public int l() {
            return 0;
        }

        @Override // f.i.a.a.j1.j
        public int m() {
            return 0;
        }

        @Override // f.i.a.a.j1.j
        @Nullable
        public Object p() {
            return null;
        }
    }

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes.dex */
    public static final class d implements f.i.a.a.l1.g {
        public d(a aVar) {
        }

        @Override // f.i.a.a.l1.g
        @Nullable
        public i0 a() {
            return null;
        }

        @Override // f.i.a.a.l1.g
        public void b(g.a aVar) {
        }

        @Override // f.i.a.a.l1.g
        public long c() {
            return 0L;
        }

        @Override // f.i.a.a.l1.g
        public void g(Handler handler, g.a aVar) {
        }
    }

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes.dex */
    public static final class e implements e0.b, d0.a, Handler.Callback {
        public final e0 a;
        public final q b;

        /* renamed from: c  reason: collision with root package name */
        public final f.i.a.a.l1.e f4736c = new f.i.a.a.l1.q(true, 65536);

        /* renamed from: d  reason: collision with root package name */
        public final ArrayList<f.i.a.a.h1.d0> f4737d = new ArrayList<>();

        /* renamed from: e  reason: collision with root package name */
        public final Handler f4738e = h0.s(new Handler.Callback() { // from class: f.i.a.a.e1.h
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return q.e.this.a(message);
            }
        });

        /* renamed from: f  reason: collision with root package name */
        public final HandlerThread f4739f;

        /* renamed from: g  reason: collision with root package name */
        public final Handler f4740g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public Object f4741h;

        /* renamed from: i  reason: collision with root package name */
        public u0 f4742i;

        /* renamed from: j  reason: collision with root package name */
        public f.i.a.a.h1.d0[] f4743j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f4744k;

        public e(e0 e0Var, q qVar) {
            this.a = e0Var;
            this.b = qVar;
            HandlerThread handlerThread = new HandlerThread("DownloadHelper");
            this.f4739f = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.f4739f.getLooper(), this);
            this.f4740g = handler;
            handler.sendEmptyMessage(0);
        }

        public final boolean a(Message message) {
            boolean z = this.f4744k;
            if (z) {
                return false;
            }
            int i2 = message.what;
            if (i2 != 0) {
                if (i2 != 1) {
                    return false;
                }
                if (!z) {
                    this.f4744k = true;
                    this.f4740g.sendEmptyMessage(3);
                }
                final q qVar = this.b;
                Object obj = message.obj;
                h0.g(obj);
                final IOException iOException = (IOException) obj;
                Handler handler = qVar.f4730h;
                c.a.a.b.g.h.t(handler);
                handler.post(new Runnable() { // from class: f.i.a.a.e1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.this.c(iOException);
                    }
                });
                return true;
            }
            final q qVar2 = this.b;
            c.a.a.b.g.h.t(qVar2.f4733k);
            c.a.a.b.g.h.t(qVar2.f4733k.f4743j);
            c.a.a.b.g.h.t(qVar2.f4733k.f4742i);
            int length = qVar2.f4733k.f4743j.length;
            int length2 = qVar2.f4728f.length;
            qVar2.n = (List[][]) Array.newInstance(List.class, length, length2);
            qVar2.o = (List[][]) Array.newInstance(List.class, length, length2);
            for (int i3 = 0; i3 < length; i3++) {
                for (int i4 = 0; i4 < length2; i4++) {
                    qVar2.n[i3][i4] = new ArrayList();
                    qVar2.o[i3][i4] = Collections.unmodifiableList(qVar2.n[i3][i4]);
                }
            }
            qVar2.f4734l = new p0[length];
            qVar2.f4735m = new f.a[length];
            for (int i5 = 0; i5 < length; i5++) {
                qVar2.f4734l[i5] = qVar2.f4733k.f4743j[i5].o();
                f.i.a.a.j1.n g2 = qVar2.g(i5);
                f.i.a.a.j1.d dVar = qVar2.f4727e;
                Object obj2 = g2.f5537d;
                if (dVar != null) {
                    f.a aVar = (f.a) obj2;
                    dVar.f5524c = aVar;
                    f.a[] aVarArr = qVar2.f4735m;
                    c.a.a.b.g.h.t(aVar);
                    aVarArr[i5] = aVar;
                } else {
                    throw null;
                }
            }
            qVar2.f4731i = true;
            Handler handler2 = qVar2.f4730h;
            c.a.a.b.g.h.t(handler2);
            handler2.post(new Runnable() { // from class: f.i.a.a.e1.d
                @Override // java.lang.Runnable
                public final void run() {
                    q.this.d();
                }
            });
            return true;
        }

        @Override // f.i.a.a.h1.e0.b
        public void f(e0 e0Var, u0 u0Var, @Nullable Object obj) {
            f.i.a.a.h1.d0[] d0VarArr;
            if (this.f4742i != null) {
                return;
            }
            this.f4742i = u0Var;
            this.f4741h = obj;
            this.f4743j = new f.i.a.a.h1.d0[u0Var.i()];
            int i2 = 0;
            while (true) {
                d0VarArr = this.f4743j;
                if (i2 >= d0VarArr.length) {
                    break;
                }
                f.i.a.a.h1.d0 c2 = this.a.c(new e0.a(u0Var.m(i2)), this.f4736c, 0L);
                this.f4743j[i2] = c2;
                this.f4737d.add(c2);
                i2++;
            }
            for (f.i.a.a.h1.d0 d0Var : d0VarArr) {
                d0Var.m(this, 0L);
            }
        }

        @Override // f.i.a.a.h1.d0.a
        public void h(f.i.a.a.h1.d0 d0Var) {
            this.f4737d.remove(d0Var);
            if (this.f4737d.isEmpty()) {
                this.f4740g.removeMessages(1);
                this.f4738e.sendEmptyMessage(0);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                this.a.e(this, null);
                this.f4740g.sendEmptyMessage(1);
                return true;
            }
            int i3 = 0;
            if (i2 == 1) {
                try {
                    if (this.f4743j == null) {
                        this.a.b();
                    } else {
                        while (i3 < this.f4737d.size()) {
                            this.f4737d.get(i3).s();
                            i3++;
                        }
                    }
                    this.f4740g.sendEmptyMessageDelayed(1, 100L);
                } catch (IOException e2) {
                    this.f4738e.obtainMessage(1, e2).sendToTarget();
                }
                return true;
            } else if (i2 == 2) {
                f.i.a.a.h1.d0 d0Var = (f.i.a.a.h1.d0) message.obj;
                if (this.f4737d.contains(d0Var)) {
                    d0Var.f(0L);
                }
                return true;
            } else if (i2 != 3) {
                return false;
            } else {
                f.i.a.a.h1.d0[] d0VarArr = this.f4743j;
                if (d0VarArr != null) {
                    int length = d0VarArr.length;
                    while (i3 < length) {
                        this.a.d(d0VarArr[i3]);
                        i3++;
                    }
                }
                this.a.i(this);
                this.f4740g.removeCallbacksAndMessages(null);
                this.f4739f.quit();
                return true;
            }
        }

        @Override // f.i.a.a.h1.l0.a
        public void i(f.i.a.a.h1.d0 d0Var) {
            f.i.a.a.h1.d0 d0Var2 = d0Var;
            if (this.f4737d.contains(d0Var2)) {
                this.f4740g.obtainMessage(2, d0Var2).sendToTarget();
            }
        }
    }

    /* compiled from: DownloadHelper.java */
    /* loaded from: classes.dex */
    public static final class f {
        @Nullable
        public final Constructor<?> a;
        @Nullable
        public final Method b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Method f4745c;

        public f(@Nullable Constructor<?> constructor, @Nullable Method method, @Nullable Method method2) {
            this.a = constructor;
            this.b = method;
            this.f4745c = method2;
        }

        public static e0 a(f fVar, Uri uri, m.a aVar, List list) {
            Constructor<?> constructor = fVar.a;
            if (constructor != null && fVar.b != null && fVar.f4745c != null) {
                try {
                    Object invoke = fVar.f4745c.invoke(constructor.newInstance(aVar), uri);
                    c.a.a.b.g.h.t(invoke);
                    return (e0) invoke;
                } catch (Exception e2) {
                    throw new IllegalStateException("Failed to instantiate media source.", e2);
                }
            }
            throw new IllegalStateException("Module missing to create media source.");
        }
    }

    static {
        d.c cVar = d.c.A;
        String str = cVar.a;
        String str2 = cVar.b;
        boolean z = cVar.f5532c;
        int i2 = cVar.f5533d;
        int i3 = cVar.f5502f;
        int i4 = cVar.f5503g;
        int i5 = cVar.f5504h;
        int i6 = cVar.f5505i;
        boolean z2 = cVar.f5506j;
        boolean z3 = cVar.f5507k;
        boolean z4 = cVar.f5508l;
        int i7 = cVar.f5509m;
        int i8 = cVar.n;
        boolean z5 = cVar.o;
        int i9 = cVar.p;
        int i10 = cVar.q;
        boolean z6 = cVar.r;
        boolean z7 = cVar.s;
        boolean z8 = cVar.t;
        boolean z9 = cVar.u;
        boolean z10 = cVar.v;
        boolean z11 = cVar.w;
        int i11 = cVar.x;
        SparseArray sparseArray = new SparseArray();
        int i12 = 0;
        for (SparseArray<Map<p0, d.e>> sparseArray2 = cVar.y; i12 < sparseArray2.size(); sparseArray2 = sparseArray2) {
            sparseArray.put(sparseArray2.keyAt(i12), new HashMap(sparseArray2.valueAt(i12)));
            i12++;
            str = str;
        }
        p = new d.c(i3, i4, i5, i6, z2, z3, z4, i7, i8, z5, str, i9, i10, z6, z7, z8, str2, z, i2, z9, true, z11, i11, sparseArray, cVar.z.clone());
        q = a("com.google.android.exoplayer2.source.dash.DashMediaSource$Factory");
        r = a("com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory");
        s = a("com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory");
    }

    public q(String str, Uri uri, @Nullable String str2, @Nullable e0 e0Var, d.c cVar, f.i.a.a.p[] pVarArr) {
        this.a = str;
        this.b = uri;
        this.f4725c = str2;
        this.f4726d = e0Var;
        this.f4728f = pVarArr;
        this.f4727e.i(cVar);
        f.i.a.a.j1.d dVar = this.f4727e;
        f.i.a.a.e1.b bVar = f.i.a.a.e1.b.a;
        d dVar2 = new d(null);
        dVar.a = bVar;
        dVar.b = dVar2;
        this.f4730h = new Handler(h0.D());
    }

    public static f a(String str) {
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        Method method3 = null;
        try {
            try {
                Class<?> cls = Class.forName(str);
                Constructor<?> constructor2 = cls.getConstructor(m.a.class);
                try {
                    method2 = cls.getMethod("setStreamKeys", List.class);
                    try {
                        method3 = cls.getMethod("createMediaSource", Uri.class);
                    } catch (ClassNotFoundException unused) {
                    }
                    method = method3;
                } catch (ClassNotFoundException unused2) {
                    method = null;
                    method2 = null;
                }
                constructor = constructor2;
            } catch (ClassNotFoundException unused3) {
                method = null;
                method2 = null;
            }
            return new f(constructor, method2, method);
        } catch (NoSuchMethodException | SecurityException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static /* synthetic */ void b() {
    }

    public /* synthetic */ void c(IOException iOException) {
        b bVar = this.f4732j;
        c.a.a.b.g.h.t(bVar);
        bVar.onPrepareError(this, iOException);
    }

    public /* synthetic */ void d() {
        b bVar = this.f4732j;
        c.a.a.b.g.h.t(bVar);
        bVar.onPrepared(this);
    }

    public /* synthetic */ void e(b bVar) {
        bVar.onPrepared(this);
    }

    public void f() {
        e eVar = this.f4733k;
        if (eVar == null || eVar.f4744k) {
            return;
        }
        eVar.f4744k = true;
        eVar.f4740g.sendEmptyMessage(3);
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    public final f.i.a.a.j1.n g(int i2) {
        boolean z;
        try {
            f.i.a.a.j1.n a2 = this.f4727e.a(this.f4728f, this.f4734l[i2], new e0.a(this.f4733k.f4742i.m(i2)), this.f4733k.f4742i);
            for (int i3 = 0; i3 < a2.a; i3++) {
                f.i.a.a.j1.j jVar = a2.f5536c.b[i3];
                if (jVar != null) {
                    List<f.i.a.a.j1.j> list = this.n[i2][i3];
                    int i4 = 0;
                    while (true) {
                        if (i4 >= list.size()) {
                            z = false;
                            break;
                        }
                        f.i.a.a.j1.j jVar2 = list.get(i4);
                        if (jVar2.j() == jVar.j()) {
                            this.f4729g.clear();
                            for (int i5 = 0; i5 < jVar2.length(); i5++) {
                                this.f4729g.put(jVar2.e(i5), 0);
                            }
                            for (int i6 = 0; i6 < jVar.length(); i6++) {
                                this.f4729g.put(jVar.e(i6), 0);
                            }
                            int[] iArr = new int[this.f4729g.size()];
                            for (int i7 = 0; i7 < this.f4729g.size(); i7++) {
                                iArr[i7] = this.f4729g.keyAt(i7);
                            }
                            list.set(i4, new c(jVar2.j(), iArr));
                            z = true;
                        } else {
                            i4++;
                        }
                    }
                    if (!z) {
                        list.add(jVar);
                    }
                }
            }
            return a2;
        } catch (f.i.a.a.w e2) {
            throw new UnsupportedOperationException(e2);
        }
    }
}
