package f.i.a.a.h1;

import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.m0;
import f.i.a.a.h1.s;
import f.i.a.a.u0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* compiled from: ConcatenatingMediaSource.java */
/* loaded from: classes.dex */
public class u extends s<g> {
    @GuardedBy("this")

    /* renamed from: i  reason: collision with root package name */
    public final List<g> f5002i;
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    public final Set<f> f5003j;
    @Nullable
    @GuardedBy("this")

    /* renamed from: k  reason: collision with root package name */
    public Handler f5004k;

    /* renamed from: l  reason: collision with root package name */
    public final List<g> f5005l;

    /* renamed from: m  reason: collision with root package name */
    public final Map<d0, g> f5006m;
    public final Map<Object, g> n;
    public final boolean o;
    public final boolean p;
    public final u0.c q;
    public final u0.b r;
    public boolean s;
    public Set<f> t;
    public m0 u;
    public int v;
    public int w;

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class b extends n {

        /* renamed from: e  reason: collision with root package name */
        public final int f5007e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5008f;

        /* renamed from: g  reason: collision with root package name */
        public final int[] f5009g;

        /* renamed from: h  reason: collision with root package name */
        public final int[] f5010h;

        /* renamed from: i  reason: collision with root package name */
        public final u0[] f5011i;

        /* renamed from: j  reason: collision with root package name */
        public final Object[] f5012j;

        /* renamed from: k  reason: collision with root package name */
        public final HashMap<Object, Integer> f5013k;

        public b(Collection<g> collection, int i2, int i3, m0 m0Var, boolean z) {
            super(z, m0Var);
            this.f5007e = i2;
            this.f5008f = i3;
            int size = collection.size();
            this.f5009g = new int[size];
            this.f5010h = new int[size];
            this.f5011i = new u0[size];
            this.f5012j = new Object[size];
            this.f5013k = new HashMap<>();
            int i4 = 0;
            for (g gVar : collection) {
                this.f5011i[i4] = gVar.f5017d;
                this.f5009g[i4] = gVar.f5020g;
                this.f5010h[i4] = gVar.f5019f;
                Object[] objArr = this.f5012j;
                objArr[i4] = gVar.b;
                this.f5013k.put(objArr[i4], Integer.valueOf(i4));
                i4++;
            }
        }

        @Override // f.i.a.a.h1.n
        public u0 A(int i2) {
            return this.f5011i[i2];
        }

        @Override // f.i.a.a.u0
        public int i() {
            return this.f5008f;
        }

        @Override // f.i.a.a.u0
        public int p() {
            return this.f5007e;
        }

        @Override // f.i.a.a.h1.n
        public int r(Object obj) {
            Integer num = this.f5013k.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // f.i.a.a.h1.n
        public int s(int i2) {
            return f.i.a.a.m1.h0.e(this.f5009g, i2 + 1, false, false);
        }

        @Override // f.i.a.a.h1.n
        public int t(int i2) {
            return f.i.a.a.m1.h0.e(this.f5010h, i2 + 1, false, false);
        }

        @Override // f.i.a.a.h1.n
        public Object v(int i2) {
            return this.f5012j[i2];
        }

        @Override // f.i.a.a.h1.n
        public int w(int i2) {
            return this.f5009g[i2];
        }

        @Override // f.i.a.a.h1.n
        public int x(int i2) {
            return this.f5010h[i2];
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class c extends z {

        /* renamed from: d  reason: collision with root package name */
        public static final Object f5014d = new Object();

        /* renamed from: c  reason: collision with root package name */
        public final Object f5015c;

        public c(u0 u0Var, Object obj) {
            super(u0Var);
            this.f5015c = obj;
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public int b(Object obj) {
            u0 u0Var = this.b;
            if (f5014d.equals(obj)) {
                obj = this.f5015c;
            }
            return u0Var.b(obj);
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public u0.b g(int i2, u0.b bVar, boolean z) {
            this.b.g(i2, bVar, z);
            if (f.i.a.a.m1.h0.b(bVar.b, this.f5015c)) {
                bVar.b = f5014d;
            }
            return bVar;
        }

        @Override // f.i.a.a.h1.z, f.i.a.a.u0
        public Object m(int i2) {
            Object m2 = this.b.m(i2);
            return f.i.a.a.m1.h0.b(m2, this.f5015c) ? f5014d : m2;
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class d extends o {
        public d(a aVar) {
        }

        @Override // f.i.a.a.h1.e0
        @Nullable
        public Object a() {
            return null;
        }

        @Override // f.i.a.a.h1.e0
        public void b() throws IOException {
        }

        @Override // f.i.a.a.h1.e0
        public d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
            throw new UnsupportedOperationException();
        }

        @Override // f.i.a.a.h1.e0
        public void d(d0 d0Var) {
        }

        @Override // f.i.a.a.h1.o
        public void l(@Nullable f.i.a.a.l1.i0 i0Var) {
        }

        @Override // f.i.a.a.h1.o
        public void n() {
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class e extends u0 {
        @Nullable
        public final Object b;

        public e(@Nullable Object obj) {
            this.b = obj;
        }

        @Override // f.i.a.a.u0
        public int b(Object obj) {
            return obj == c.f5014d ? 0 : -1;
        }

        @Override // f.i.a.a.u0
        public u0.b g(int i2, u0.b bVar, boolean z) {
            bVar.g(0, c.f5014d, 0, -9223372036854775807L, 0L);
            return bVar;
        }

        @Override // f.i.a.a.u0
        public int i() {
            return 1;
        }

        @Override // f.i.a.a.u0
        public Object m(int i2) {
            return c.f5014d;
        }

        @Override // f.i.a.a.u0
        public u0.c o(int i2, u0.c cVar, boolean z, long j2) {
            cVar.b(this.b, -9223372036854775807L, -9223372036854775807L, false, true, 0L, -9223372036854775807L, 0, 0, 0L);
            return cVar;
        }

        @Override // f.i.a.a.u0
        public int p() {
            return 1;
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class f {
        public final Handler a;
        public final Runnable b;
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class g implements Comparable<g> {
        public final e0 a;

        /* renamed from: d  reason: collision with root package name */
        public c f5017d;

        /* renamed from: e  reason: collision with root package name */
        public int f5018e;

        /* renamed from: f  reason: collision with root package name */
        public int f5019f;

        /* renamed from: g  reason: collision with root package name */
        public int f5020g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f5021h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f5022i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f5023j;

        /* renamed from: c  reason: collision with root package name */
        public final List<w> f5016c = new ArrayList();
        public final Object b = new Object();

        public g(e0 e0Var) {
            this.a = e0Var;
            this.f5017d = new c(new e(e0Var.a()), c.f5014d);
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull g gVar) {
            return this.f5020g - gVar.f5020g;
        }
    }

    /* compiled from: ConcatenatingMediaSource.java */
    /* loaded from: classes.dex */
    public static final class h<T> {
        public final int a;
        public final T b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f f5024c;

        public h(int i2, T t, @Nullable f fVar) {
            this.a = i2;
            this.b = t;
            this.f5024c = fVar;
        }
    }

    public u(e0... e0VarArr) {
        m0.a aVar = new m0.a(0, new Random());
        for (e0 e0Var : e0VarArr) {
            c.a.a.b.g.h.t(e0Var);
        }
        this.u = aVar.b.length > 0 ? aVar.h() : aVar;
        this.f5006m = new IdentityHashMap();
        this.n = new HashMap();
        this.f5002i = new ArrayList();
        this.f5005l = new ArrayList();
        this.t = new HashSet();
        this.f5003j = new HashSet();
        this.o = false;
        this.p = false;
        this.q = new u0.c();
        this.r = new u0.b();
        List asList = Arrays.asList(e0VarArr);
        synchronized (this) {
            y(this.f5002i.size(), asList, null, null);
        }
    }

    public final synchronized void A(Set<f> set) {
        for (f fVar : set) {
            fVar.a.post(fVar.b);
        }
        this.f5003j.removeAll(set);
    }

    public final synchronized e0 B(int i2) {
        return this.f5002i.get(i2).a;
    }

    public final boolean C(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            Object obj = message.obj;
            f.i.a.a.m1.h0.g(obj);
            h hVar = (h) obj;
            this.u = this.u.c(hVar.a, ((Collection) hVar.b).size());
            x(hVar.a, (Collection) hVar.b);
            E(hVar.f5024c);
        } else if (i2 == 1) {
            Object obj2 = message.obj;
            f.i.a.a.m1.h0.g(obj2);
            h hVar2 = (h) obj2;
            int i3 = hVar2.a;
            int intValue = ((Integer) hVar2.b).intValue();
            if (i3 == 0 && intValue == this.u.d()) {
                this.u = this.u.h();
            } else {
                this.u = this.u.a(i3, intValue);
            }
            for (int i4 = intValue - 1; i4 >= i3; i4--) {
                g remove = this.f5005l.remove(i4);
                this.n.remove(remove.b);
                c cVar = remove.f5017d;
                z(i4, -1, -cVar.p(), -cVar.i());
                remove.f5023j = true;
                D(remove);
            }
            E(hVar2.f5024c);
        } else if (i2 == 2) {
            Object obj3 = message.obj;
            f.i.a.a.m1.h0.g(obj3);
            h hVar3 = (h) obj3;
            m0 m0Var = this.u;
            int i5 = hVar3.a;
            m0 a2 = m0Var.a(i5, i5 + 1);
            this.u = a2;
            this.u = a2.c(((Integer) hVar3.b).intValue(), 1);
            int i6 = hVar3.a;
            int intValue2 = ((Integer) hVar3.b).intValue();
            int min = Math.min(i6, intValue2);
            int max = Math.max(i6, intValue2);
            int i7 = this.f5005l.get(min).f5019f;
            int i8 = this.f5005l.get(min).f5020g;
            List<g> list = this.f5005l;
            list.add(intValue2, list.remove(i6));
            while (min <= max) {
                g gVar = this.f5005l.get(min);
                gVar.f5019f = i7;
                gVar.f5020g = i8;
                i7 += gVar.f5017d.p();
                i8 += gVar.f5017d.i();
                min++;
            }
            E(hVar3.f5024c);
        } else if (i2 == 3) {
            Object obj4 = message.obj;
            f.i.a.a.m1.h0.g(obj4);
            h hVar4 = (h) obj4;
            this.u = (m0) hVar4.b;
            E(hVar4.f5024c);
        } else if (i2 == 4) {
            F();
        } else if (i2 == 5) {
            Object obj5 = message.obj;
            f.i.a.a.m1.h0.g(obj5);
            A((Set) obj5);
        } else {
            throw new IllegalStateException();
        }
        return true;
    }

    public final void D(g gVar) {
        if (gVar.f5023j && gVar.f5021h && gVar.f5016c.isEmpty()) {
            s.b remove = this.f4858f.remove(gVar);
            c.a.a.b.g.h.t(remove);
            s.b bVar = remove;
            bVar.a.i(bVar.b);
            bVar.a.h(bVar.f4862c);
        }
    }

    public final void E(@Nullable f fVar) {
        if (!this.s) {
            Handler handler = this.f5004k;
            c.a.a.b.g.h.t(handler);
            handler.obtainMessage(4).sendToTarget();
            this.s = true;
        }
        if (fVar != null) {
            this.t.add(fVar);
        }
    }

    public final void F() {
        this.s = false;
        Set<f> set = this.t;
        this.t = new HashSet();
        m(new b(this.f5005l, this.v, this.w, this.u, this.o), null);
        Handler handler = this.f5004k;
        c.a.a.b.g.h.t(handler);
        handler.obtainMessage(5, set).sendToTarget();
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return null;
    }

    @Override // f.i.a.a.h1.s, f.i.a.a.h1.e0
    public void b() throws IOException {
    }

    @Override // f.i.a.a.h1.e0
    public final d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        g gVar = this.n.get(((Pair) aVar.a).first);
        if (gVar == null) {
            gVar = new g(new d(null));
            gVar.f5021h = true;
        }
        w wVar = new w(gVar.a, aVar, eVar, j2);
        this.f5006m.put(wVar, gVar);
        gVar.f5016c.add(wVar);
        if (!gVar.f5021h) {
            gVar.f5021h = true;
            v(gVar, gVar.a);
        } else if (gVar.f5022i) {
            Object obj = ((Pair) aVar.a).second;
            if (obj.equals(c.f5014d)) {
                obj = gVar.f5017d.f5015c;
            }
            wVar.a(aVar.a(obj));
        }
        return wVar;
    }

    @Override // f.i.a.a.h1.e0
    public final void d(d0 d0Var) {
        g remove = this.f5006m.remove(d0Var);
        c.a.a.b.g.h.t(remove);
        g gVar = remove;
        w wVar = (w) d0Var;
        d0 d0Var2 = wVar.f5206d;
        if (d0Var2 != null) {
            wVar.a.d(d0Var2);
        }
        gVar.f5016c.remove(d0Var);
        D(gVar);
    }

    @Override // f.i.a.a.h1.o
    public final synchronized void l(@Nullable f.i.a.a.l1.i0 i0Var) {
        this.f4860h = i0Var;
        this.f4859g = new Handler();
        this.f5004k = new Handler(new Handler.Callback() { // from class: f.i.a.a.h1.c
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return u.this.C(message);
            }
        });
        if (this.f5002i.isEmpty()) {
            F();
        } else {
            this.u = this.u.c(0, this.f5002i.size());
            x(0, this.f5002i);
            E(null);
        }
    }

    @Override // f.i.a.a.h1.s, f.i.a.a.h1.o
    public final synchronized void n() {
        super.n();
        this.f5005l.clear();
        this.n.clear();
        this.u = this.u.h();
        this.v = 0;
        this.w = 0;
        if (this.f5004k != null) {
            this.f5004k.removeCallbacksAndMessages(null);
            this.f5004k = null;
        }
        this.s = false;
        this.t.clear();
        A(this.f5003j);
    }

    @Override // f.i.a.a.h1.s
    @Nullable
    public e0.a o(g gVar, e0.a aVar) {
        g gVar2 = gVar;
        for (int i2 = 0; i2 < gVar2.f5016c.size(); i2++) {
            if (gVar2.f5016c.get(i2).b.f4742d == aVar.f4742d) {
                Object obj = aVar.a;
                if (gVar2.f5017d.f5015c.equals(obj)) {
                    obj = c.f5014d;
                }
                return aVar.a(Pair.create(gVar2.b, obj));
            }
        }
        return null;
    }

    @Override // f.i.a.a.h1.s
    public int s(g gVar, int i2) {
        return i2 + gVar.f5019f;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a4  */
    @Override // f.i.a.a.h1.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void u(f.i.a.a.h1.u.g r14, f.i.a.a.h1.e0 r15, f.i.a.a.u0 r16, @androidx.annotation.Nullable java.lang.Object r17) {
        /*
            r13 = this;
            r0 = r13
            r7 = r16
            r8 = r14
            f.i.a.a.h1.u$g r8 = (f.i.a.a.h1.u.g) r8
            if (r8 == 0) goto Lc7
            f.i.a.a.h1.u$c r1 = r8.f5017d
            f.i.a.a.u0 r2 = r1.b
            if (r2 != r7) goto L10
            goto Lc6
        L10:
            int r2 = r16.p()
            int r3 = r1.p()
            int r2 = r2 - r3
            int r3 = r16.i()
            int r4 = r1.i()
            int r3 = r3 - r4
            r4 = 0
            r9 = 1
            if (r2 != 0) goto L28
            if (r3 == 0) goto L2e
        L28:
            int r5 = r8.f5018e
            int r5 = r5 + r9
            r13.z(r5, r4, r2, r3)
        L2e:
            boolean r2 = r8.f5022i
            r10 = 0
            if (r2 == 0) goto L3e
            f.i.a.a.h1.u$c r2 = new f.i.a.a.h1.u$c
            java.lang.Object r1 = r1.f5015c
            r2.<init>(r7, r1)
            r8.f5017d = r2
            goto Lc1
        L3e:
            boolean r1 = r16.q()
            if (r1 == 0) goto L4f
            java.lang.Object r1 = f.i.a.a.h1.u.c.f5014d
            f.i.a.a.h1.u$c r2 = new f.i.a.a.h1.u$c
            r2.<init>(r7, r1)
            r8.f5017d = r2
            goto Lc1
        L4f:
            java.util.List<f.i.a.a.h1.w> r1 = r8.f5016c
            int r1 = r1.size()
            if (r1 > r9) goto L59
            r1 = 1
            goto L5a
        L59:
            r1 = 0
        L5a:
            c.a.a.b.g.h.v(r1)
            java.util.List<f.i.a.a.h1.w> r1 = r8.f5016c
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L67
            r11 = r10
            goto L70
        L67:
            java.util.List<f.i.a.a.h1.w> r1 = r8.f5016c
            java.lang.Object r1 = r1.get(r4)
            f.i.a.a.h1.w r1 = (f.i.a.a.h1.w) r1
            r11 = r1
        L70:
            f.i.a.a.u0$c r1 = r0.q
            r7.n(r4, r1)
            f.i.a.a.u0$c r1 = r0.q
            long r1 = r1.f5804h
            if (r11 == 0) goto L85
            long r3 = r11.f5208f
            r5 = 0
            int r12 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r12 == 0) goto L85
            r5 = r3
            goto L86
        L85:
            r5 = r1
        L86:
            f.i.a.a.u0$c r2 = r0.q
            f.i.a.a.u0$b r3 = r0.r
            r4 = 0
            r1 = r16
            android.util.Pair r1 = r1.j(r2, r3, r4, r5)
            java.lang.Object r2 = r1.first
            java.lang.Object r1 = r1.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r3 = r1.longValue()
            f.i.a.a.h1.u$c r1 = new f.i.a.a.h1.u$c
            r1.<init>(r7, r2)
            r8.f5017d = r1
            if (r11 == 0) goto Lc1
            r11.f5209g = r3
            f.i.a.a.h1.e0$a r1 = r11.b
            java.lang.Object r2 = r1.a
            java.lang.Object r2 = f.i.a.a.h1.n.u(r2)
            java.lang.Object r3 = f.i.a.a.h1.u.c.f5014d
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto Lba
            f.i.a.a.h1.u$c r2 = r8.f5017d
            java.lang.Object r2 = r2.f5015c
        Lba:
            f.i.a.a.h1.e0$a r1 = r1.a(r2)
            r11.a(r1)
        Lc1:
            r8.f5022i = r9
            r13.E(r10)
        Lc6:
            return
        Lc7:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            r1.<init>()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u.u(java.lang.Object, f.i.a.a.h1.e0, f.i.a.a.u0, java.lang.Object):void");
    }

    public final synchronized void w(e0 e0Var) {
        int size = this.f5002i.size();
        synchronized (this) {
            y(size, Collections.singletonList(e0Var), null, null);
        }
    }

    public final void x(int i2, Collection<g> collection) {
        for (g gVar : collection) {
            int i3 = i2 + 1;
            if (i2 > 0) {
                g gVar2 = this.f5005l.get(i2 - 1);
                int p = gVar2.f5017d.p() + gVar2.f5019f;
                int i4 = gVar2.f5020g;
                gVar.f5018e = i2;
                gVar.f5019f = p;
                gVar.f5020g = gVar2.f5017d.i() + i4;
                gVar.f5021h = false;
                gVar.f5022i = false;
                gVar.f5023j = false;
                gVar.f5016c.clear();
            } else {
                gVar.f5018e = i2;
                gVar.f5019f = 0;
                gVar.f5020g = 0;
                gVar.f5021h = false;
                gVar.f5022i = false;
                gVar.f5023j = false;
                gVar.f5016c.clear();
            }
            z(i2, 1, gVar.f5017d.p(), gVar.f5017d.i());
            this.f5005l.add(i2, gVar);
            this.n.put(gVar.b, gVar);
            if (!this.p) {
                gVar.f5021h = true;
                v(gVar, gVar.a);
            }
            i2 = i3;
        }
    }

    @GuardedBy("this")
    public final void y(int i2, Collection<e0> collection, @Nullable Handler handler, @Nullable Runnable runnable) {
        c.a.a.b.g.h.m(true);
        Handler handler2 = this.f5004k;
        for (e0 e0Var : collection) {
            c.a.a.b.g.h.t(e0Var);
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (e0 e0Var2 : collection) {
            arrayList.add(new g(e0Var2));
        }
        this.f5002i.addAll(i2, arrayList);
        if (handler2 == null || collection.isEmpty()) {
            return;
        }
        handler2.obtainMessage(0, new h(i2, arrayList, null)).sendToTarget();
    }

    public final void z(int i2, int i3, int i4, int i5) {
        this.v += i4;
        this.w += i5;
        while (i2 < this.f5005l.size()) {
            this.f5005l.get(i2).f5018e += i3;
            this.f5005l.get(i2).f5019f += i4;
            this.f5005l.get(i2).f5020g += i5;
            i2++;
        }
    }
}
