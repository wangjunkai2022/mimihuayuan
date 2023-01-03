package f.i.a.a.e1;

import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.h1.d0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.d;
import f.i.a.a.j1.f;
import f.i.a.a.j1.j;
import f.i.a.a.j1.n;
import f.i.a.a.l1.g;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.m1.h0;
import f.i.a.a.p;
import f.i.a.a.u0;
import f.i.a.a.w;
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
    public final String f4641c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final e0 f4642d;

    /* renamed from: f  reason: collision with root package name */
    public final p[] f4644f;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4647i;

    /* renamed from: j  reason: collision with root package name */
    public b f4648j;

    /* renamed from: k  reason: collision with root package name */
    public e f4649k;

    /* renamed from: l  reason: collision with root package name */
    public p0[] f4650l;

    /* renamed from: m  reason: collision with root package name */
    public f.a[] f4651m;
    public List<j>[][] n;
    public List<j>[][] o;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.j1.d f4643e = new f.i.a.a.j1.d(new c.a(null));

    /* renamed from: g  reason: collision with root package name */
    public final SparseIntArray f4645g = new SparseIntArray();

    /* renamed from: h  reason: collision with root package name */
    public final Handler f4646h = new Handler(h0.D());

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
            public j[] a(j.a[] aVarArr, g gVar) {
                j[] jVarArr = new j[aVarArr.length];
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
    public static final class d implements g {
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
            return 0;
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
        public final f.i.a.a.l1.e f4652c = new f.i.a.a.l1.q(true, 65536);

        /* renamed from: d  reason: collision with root package name */
        public final ArrayList<d0> f4653d = new ArrayList<>();

        /* renamed from: e  reason: collision with root package name */
        public final Handler f4654e = h0.s(new h(this));

        /* renamed from: f  reason: collision with root package name */
        public final HandlerThread f4655f;

        /* renamed from: g  reason: collision with root package name */
        public final Handler f4656g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public Object f4657h;

        /* renamed from: i  reason: collision with root package name */
        public u0 f4658i;

        /* renamed from: j  reason: collision with root package name */
        public d0[] f4659j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f4660k;

        public e(e0 e0Var, q qVar) {
            this.a = e0Var;
            this.b = qVar;
            HandlerThread handlerThread = new HandlerThread("DownloadHelper");
            this.f4655f = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.f4655f.getLooper(), this);
            this.f4656g = handler;
            handler.sendEmptyMessage(0);
        }

        public final boolean a(Message message) {
            boolean z = this.f4660k;
            if (z) {
                return false;
            }
            int i2 = message.what;
            if (i2 == 0) {
                q qVar = this.b;
                h.t(qVar.f4649k);
                h.t(qVar.f4649k.f4659j);
                h.t(qVar.f4649k.f4658i);
                int length = qVar.f4649k.f4659j.length;
                int length2 = qVar.f4644f.length;
                qVar.n = (List[][]) Array.newInstance(List.class, length, length2);
                qVar.o = (List[][]) Array.newInstance(List.class, length, length2);
                for (int i3 = 0; i3 < length; i3++) {
                    for (int i4 = 0; i4 < length2; i4++) {
                        qVar.n[i3][i4] = new ArrayList();
                        qVar.o[i3][i4] = Collections.unmodifiableList(qVar.n[i3][i4]);
                    }
                }
                qVar.f4650l = new p0[length];
                qVar.f4651m = new f.a[length];
                for (int i5 = 0; i5 < length; i5++) {
                    qVar.f4650l[i5] = qVar.f4649k.f4659j[i5].o();
                    n g2 = qVar.g(i5);
                    f.i.a.a.j1.d dVar = qVar.f4643e;
                    Object obj = g2.f5453d;
                    if (dVar != null) {
                        f.a aVar = (f.a) obj;
                        dVar.f5440c = aVar;
                        f.a[] aVarArr = qVar.f4651m;
                        h.t(aVar);
                        aVarArr[i5] = aVar;
                    } else {
                        throw null;
                    }
                }
                qVar.f4647i = true;
                Handler handler = qVar.f4646h;
                h.t(handler);
                handler.post(new d(qVar));
                return true;
            } else if (i2 != 1) {
                return false;
            } else {
                if (!z) {
                    this.f4660k = true;
                    this.f4656g.sendEmptyMessage(3);
                }
                q qVar2 = this.b;
                Object obj2 = message.obj;
                h0.g(obj2);
                Handler handler2 = qVar2.f4646h;
                h.t(handler2);
                handler2.post(new e(qVar2, (IOException) obj2));
                return true;
            }
        }

        @Override // f.i.a.a.h1.e0.b
        public void f(e0 e0Var, u0 u0Var, @Nullable Object obj) {
            d0[] d0VarArr;
            if (this.f4658i == null) {
                this.f4658i = u0Var;
                this.f4657h = obj;
                this.f4659j = new d0[u0Var.i()];
                int i2 = 0;
                while (true) {
                    d0VarArr = this.f4659j;
                    if (i2 >= d0VarArr.length) {
                        break;
                    }
                    d0 c2 = this.a.c(new e0.a(u0Var.m(i2)), this.f4652c, 0);
                    this.f4659j[i2] = c2;
                    this.f4653d.add(c2);
                    i2++;
                }
                for (d0 d0Var : d0VarArr) {
                    d0Var.m(this, 0);
                }
            }
        }

        @Override // f.i.a.a.h1.d0.a
        public void h(d0 d0Var) {
            this.f4653d.remove(d0Var);
            if (this.f4653d.isEmpty()) {
                this.f4656g.removeMessages(1);
                this.f4654e.sendEmptyMessage(0);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 0) {
                int i3 = 0;
                if (i2 == 1) {
                    try {
                        if (this.f4659j == null) {
                            this.a.b();
                        } else {
                            while (i3 < this.f4653d.size()) {
                                this.f4653d.get(i3).s();
                                i3++;
                            }
                        }
                        this.f4656g.sendEmptyMessageDelayed(1, 100);
                    } catch (IOException e2) {
                        this.f4654e.obtainMessage(1, e2).sendToTarget();
                    }
                    return true;
                } else if (i2 == 2) {
                    d0 d0Var = (d0) message.obj;
                    if (this.f4653d.contains(d0Var)) {
                        d0Var.f(0);
                    }
                    return true;
                } else if (i2 != 3) {
                    return false;
                } else {
                    d0[] d0VarArr = this.f4659j;
                    if (d0VarArr != null) {
                        int length = d0VarArr.length;
                        while (i3 < length) {
                            this.a.d(d0VarArr[i3]);
                            i3++;
                        }
                    }
                    this.a.i(this);
                    this.f4656g.removeCallbacksAndMessages(null);
                    this.f4655f.quit();
                    return true;
                }
            } else {
                this.a.e(this, null);
                this.f4656g.sendEmptyMessage(1);
                return true;
            }
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [f.i.a.a.h1.l0] */
        @Override // f.i.a.a.h1.l0.a
        public void i(d0 d0Var) {
            d0 d0Var2 = d0Var;
            if (this.f4653d.contains(d0Var2)) {
                this.f4656g.obtainMessage(2, d0Var2).sendToTarget();
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
        public final Method f4661c;

        public f(@Nullable Constructor<?> constructor, @Nullable Method method, @Nullable Method method2) {
            this.a = constructor;
            this.b = method;
            this.f4661c = method2;
        }

        public static e0 a(f fVar, Uri uri, m.a aVar, List list) {
            Constructor<?> constructor = fVar.a;
            if (constructor == null || fVar.b == null || fVar.f4661c == null) {
                throw new IllegalStateException("Module missing to create media source.");
            }
            try {
                Object invoke = fVar.f4661c.invoke(constructor.newInstance(aVar), uri);
                h.t(invoke);
                return (e0) invoke;
            } catch (Exception e2) {
                throw new IllegalStateException("Failed to instantiate media source.", e2);
            }
        }
    }

    static {
        d.c cVar = d.c.A;
        String str = cVar.a;
        String str2 = cVar.b;
        boolean z = cVar.f5448c;
        int i2 = cVar.f5449d;
        int i3 = cVar.f5418f;
        int i4 = cVar.f5419g;
        int i5 = cVar.f5420h;
        int i6 = cVar.f5421i;
        boolean z2 = cVar.f5422j;
        boolean z3 = cVar.f5423k;
        boolean z4 = cVar.f5424l;
        int i7 = cVar.f5425m;
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

    public q(String str, Uri uri, @Nullable String str2, @Nullable e0 e0Var, d.c cVar, p[] pVarArr) {
        this.a = str;
        this.b = uri;
        this.f4641c = str2;
        this.f4642d = e0Var;
        this.f4644f = pVarArr;
        this.f4643e.i(cVar);
        f.i.a.a.j1.d dVar = this.f4643e;
        b bVar = b.a;
        d dVar2 = new d(null);
        dVar.a = bVar;
        dVar.b = dVar2;
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
        b bVar = this.f4648j;
        h.t(bVar);
        bVar.onPrepareError(this, iOException);
    }

    public /* synthetic */ void d() {
        b bVar = this.f4648j;
        h.t(bVar);
        bVar.onPrepared(this);
    }

    public /* synthetic */ void e(b bVar) {
        bVar.onPrepared(this);
    }

    public void f() {
        e eVar = this.f4649k;
        if (eVar != null && !eVar.f4660k) {
            eVar.f4660k = true;
            eVar.f4656g.sendEmptyMessage(3);
        }
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    public final n g(int i2) {
        boolean z;
        try {
            n a2 = this.f4643e.a(this.f4644f, this.f4650l[i2], new e0.a(this.f4649k.f4658i.m(i2)), this.f4649k.f4658i);
            for (int i3 = 0; i3 < a2.a; i3++) {
                j jVar = a2.f5452c.b[i3];
                if (jVar != null) {
                    List<j> list = this.n[i2][i3];
                    int i4 = 0;
                    while (true) {
                        if (i4 >= list.size()) {
                            z = false;
                            break;
                        }
                        j jVar2 = list.get(i4);
                        if (jVar2.j() == jVar.j()) {
                            this.f4645g.clear();
                            for (int i5 = 0; i5 < jVar2.length(); i5++) {
                                this.f4645g.put(jVar2.e(i5), 0);
                            }
                            for (int i6 = 0; i6 < jVar.length(); i6++) {
                                this.f4645g.put(jVar.e(i6), 0);
                            }
                            int[] iArr = new int[this.f4645g.size()];
                            for (int i7 = 0; i7 < this.f4645g.size(); i7++) {
                                iArr[i7] = this.f4645g.keyAt(i7);
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
        } catch (w e2) {
            throw new UnsupportedOperationException(e2);
        }
    }
}
