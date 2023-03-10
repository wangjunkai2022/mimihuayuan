package f.i.a.a.e1;

import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
import com.tencent.smtt.sdk.TbsReaderView;
import f.i.a.a.e1.k;
import f.i.a.a.e1.v;
import f.i.a.a.g1.c;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: DownloadManager.java */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: k  reason: collision with root package name */
    public static final f.i.a.a.g1.b f4746k = new f.i.a.a.g1.b(1);
    public final d0 a;
    public final c b;

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArraySet<d> f4747c;

    /* renamed from: d  reason: collision with root package name */
    public int f4748d;

    /* renamed from: e  reason: collision with root package name */
    public int f4749e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4750f;

    /* renamed from: g  reason: collision with root package name */
    public int f4751g;

    /* renamed from: h  reason: collision with root package name */
    public int f4752h;

    /* renamed from: i  reason: collision with root package name */
    public int f4753i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.g1.c f4754j;

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final m a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final List<m> f4755c;

        public b(m mVar, boolean z, List<m> list) {
            this.a = mVar;
            this.b = z;
            this.f4755c = list;
        }
    }

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public static final class c extends Handler {
        public final HandlerThread a;
        public final d0 b;

        /* renamed from: c  reason: collision with root package name */
        public final x f4756c;

        /* renamed from: d  reason: collision with root package name */
        public final Handler f4757d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList<m> f4758e;

        /* renamed from: f  reason: collision with root package name */
        public final HashMap<String, e> f4759f;

        /* renamed from: g  reason: collision with root package name */
        public int f4760g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f4761h;

        /* renamed from: i  reason: collision with root package name */
        public int f4762i;

        /* renamed from: j  reason: collision with root package name */
        public int f4763j;

        /* renamed from: k  reason: collision with root package name */
        public int f4764k;

        public c(HandlerThread handlerThread, d0 d0Var, x xVar, Handler handler, int i2, int i3, boolean z) {
            super(handlerThread.getLooper());
            this.a = handlerThread;
            this.b = d0Var;
            this.f4756c = xVar;
            this.f4757d = handler;
            this.f4762i = i2;
            this.f4763j = i3;
            this.f4761h = z;
            this.f4758e = new ArrayList<>();
            this.f4759f = new HashMap<>();
        }

        public static int a(m mVar, m mVar2) {
            return h0.m(mVar.f4719c, mVar2.f4719c);
        }

        public static m b(m mVar, int i2) {
            return new m(mVar.a, i2, mVar.f4719c, System.currentTimeMillis(), mVar.f4721e, 0, 0, mVar.f4724h);
        }

        @Nullable
        public final m c(String str, boolean z) {
            int d2 = d(str);
            if (d2 != -1) {
                return this.f4758e.get(d2);
            }
            if (z) {
                try {
                    return ((k) this.b).c(str);
                } catch (IOException unused) {
                    return null;
                }
            }
            return null;
        }

        public final int d(String str) {
            for (int i2 = 0; i2 < this.f4758e.size(); i2++) {
                if (this.f4758e.get(i2).a.a.equals(str)) {
                    return i2;
                }
            }
            return -1;
        }

        public final m e(m mVar) {
            int i2 = mVar.b;
            c.a.a.b.g.h.v((i2 == 3 || i2 == 4) ? false : true);
            int d2 = d(mVar.a.a);
            if (d2 == -1) {
                this.f4758e.add(mVar);
                Collections.sort(this.f4758e, f.a);
            } else {
                boolean z = mVar.f4719c != this.f4758e.get(d2).f4719c;
                this.f4758e.set(d2, mVar);
                if (z) {
                    Collections.sort(this.f4758e, f.a);
                }
            }
            try {
                ((k) this.b).g(mVar);
            } catch (IOException unused) {
            }
            this.f4757d.obtainMessage(2, new b(mVar, false, new ArrayList(this.f4758e))).sendToTarget();
            return mVar;
        }

        public final m f(m mVar, int i2) {
            boolean z = true;
            c.a.a.b.g.h.v((i2 == 3 || i2 == 4 || i2 == 1) ? false : false);
            m b = b(mVar, i2);
            e(b);
            return b;
        }

        public final void g(m mVar, int i2) {
            if (i2 == 0) {
                if (mVar.b == 1) {
                    f(mVar, 0);
                }
            } else if (i2 != mVar.f4722f) {
                int i3 = mVar.b;
                e(new m(mVar.a, (i3 == 0 || i3 == 2) ? 1 : 1, mVar.f4719c, System.currentTimeMillis(), mVar.f4721e, i2, 0, mVar.f4724h));
            }
        }

        public final void h() {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f4758e.size(); i3++) {
                m mVar = this.f4758e.get(i3);
                e eVar = this.f4759f.get(mVar.a.a);
                int i4 = mVar.b;
                boolean z = true;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            c.a.a.b.g.h.t(eVar);
                            c.a.a.b.g.h.v(!eVar.f4766d);
                            if (!((this.f4761h || this.f4760g != 0) ? false : false) || i2 >= this.f4762i) {
                                f(mVar, 0);
                                eVar.a(false);
                            }
                        } else if (i4 != 5 && i4 != 7) {
                            throw new IllegalStateException();
                        } else {
                            if (eVar != null) {
                                if (!eVar.f4766d) {
                                    eVar.a(false);
                                }
                            } else {
                                e eVar2 = new e(mVar.a, ((l) this.f4756c).a(mVar.a), mVar.f4724h, true, this.f4763j, this, null);
                                this.f4759f.put(mVar.a.a, eVar2);
                                eVar2.start();
                            }
                        }
                    } else if (eVar != null) {
                        c.a.a.b.g.h.v(!eVar.f4766d);
                        eVar.a(false);
                    }
                } else if (eVar != null) {
                    c.a.a.b.g.h.v(!eVar.f4766d);
                    eVar.a(false);
                } else if (!((this.f4761h || this.f4760g != 0) ? false : false) || this.f4764k >= this.f4762i) {
                    eVar = null;
                } else {
                    m f2 = f(mVar, 2);
                    eVar = new e(f2.a, ((l) this.f4756c).a(f2.a), f2.f4724h, false, this.f4763j, this, null);
                    this.f4759f.put(f2.a.a, eVar);
                    int i5 = this.f4764k;
                    this.f4764k = i5 + 1;
                    if (i5 == 0) {
                        sendEmptyMessageDelayed(11, 5000L);
                    }
                    eVar.start();
                }
                if (eVar != null && !eVar.f4766d) {
                    i2++;
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            k kVar;
            o oVar = null;
            r10 = 0;
            int i2 = 0;
            switch (message.what) {
                case 0:
                    this.f4760g = message.arg1;
                    try {
                        try {
                            ((k) this.b).h();
                            oVar = ((k) this.b).e(0, 1, 2, 5, 7);
                            while (oVar.moveToNext()) {
                                this.f4758e.add(((k.b) oVar).d());
                            }
                        } catch (IOException unused) {
                            this.f4758e.clear();
                        }
                        h0.l(oVar);
                        this.f4757d.obtainMessage(0, new ArrayList(this.f4758e)).sendToTarget();
                        h();
                        i2 = 1;
                        this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                        return;
                    } catch (Throwable th) {
                        h0.l(oVar);
                        throw th;
                    }
                case 1:
                    this.f4761h = message.arg1 != 0;
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 2:
                    this.f4760g = message.arg1;
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 3:
                    String str2 = (String) message.obj;
                    int i3 = message.arg1;
                    if (str2 == null) {
                        for (int i4 = 0; i4 < this.f4758e.size(); i4++) {
                            g(this.f4758e.get(i4), i3);
                        }
                        ((k) this.b).i(i3);
                    } else {
                        m c2 = c(str2, false);
                        if (c2 != null) {
                            g(c2, i3);
                            h();
                            i2 = 1;
                            this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                            return;
                        }
                        ((k) this.b).j(str2, i3);
                    }
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 4:
                    this.f4762i = message.arg1;
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 5:
                    this.f4763j = message.arg1;
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 6:
                    u uVar = (u) message.obj;
                    int i5 = message.arg1;
                    m c3 = c(uVar.a, true);
                    long currentTimeMillis = System.currentTimeMillis();
                    if (c3 != null) {
                        e(s.b(c3, uVar, i5, currentTimeMillis));
                    } else {
                        e(new m(uVar, i5 != 0 ? 1 : 0, currentTimeMillis, currentTimeMillis, -1L, i5, 0));
                    }
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 7:
                    m c4 = c((String) message.obj, true);
                    if (c4 != null) {
                        f(c4, 5);
                        h();
                    }
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 8:
                    ArrayList arrayList = new ArrayList();
                    try {
                        o e2 = ((k) this.b).e(3, 4);
                        while (e2.moveToNext()) {
                            arrayList.add(((k.b) e2).d());
                        }
                        ((k.b) e2).a.close();
                    } catch (IOException unused2) {
                    }
                    for (int i6 = 0; i6 < this.f4758e.size(); i6++) {
                        ArrayList<m> arrayList2 = this.f4758e;
                        arrayList2.set(i6, b(arrayList2.get(i6), 5));
                    }
                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                        this.f4758e.add(b((m) arrayList.get(i7), 5));
                    }
                    Collections.sort(this.f4758e, f.a);
                    try {
                        k kVar2 = (k) this.b;
                        kVar2.a();
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("state", (Integer) 5);
                            ((SQLiteOpenHelper) kVar2.f4715c).getWritableDatabase().update(kVar2.b, contentValues, null, null);
                        } catch (SQLException e3) {
                            throw new f.i.a.a.x0.a(e3);
                        }
                    } catch (IOException unused3) {
                    }
                    ArrayList arrayList3 = new ArrayList(this.f4758e);
                    for (int i8 = 0; i8 < this.f4758e.size(); i8++) {
                        this.f4757d.obtainMessage(2, new b(this.f4758e.get(i8), false, arrayList3)).sendToTarget();
                    }
                    h();
                    i2 = 1;
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 9:
                    e eVar = (e) message.obj;
                    String str3 = eVar.a.a;
                    this.f4759f.remove(str3);
                    boolean z = eVar.f4766d;
                    if (!z) {
                        int i9 = this.f4764k - 1;
                        this.f4764k = i9;
                        if (i9 == 0) {
                            removeMessages(11);
                        }
                    }
                    if (eVar.f4769g) {
                        h();
                    } else {
                        Throwable th2 = eVar.f4770h;
                        if (th2 != null) {
                            StringBuilder o = f.b.a.a.a.o("Task failed: ");
                            o.append(eVar.a);
                            o.append(", ");
                            o.append(z);
                            o.toString();
                        }
                        m c5 = c(str3, false);
                        c.a.a.b.g.h.t(c5);
                        int i10 = c5.b;
                        if (i10 == 2) {
                            c.a.a.b.g.h.v(!z);
                            m mVar = new m(c5.a, th2 == null ? 3 : 4, c5.f4719c, System.currentTimeMillis(), c5.f4721e, c5.f4722f, th2 == null ? 0 : 1, c5.f4724h);
                            this.f4758e.remove(d(mVar.a.a));
                            try {
                                ((k) this.b).g(mVar);
                            } catch (IOException unused4) {
                            }
                            this.f4757d.obtainMessage(2, new b(mVar, false, new ArrayList(this.f4758e))).sendToTarget();
                        } else if (i10 != 5 && i10 != 7) {
                            throw new IllegalStateException();
                        } else {
                            c.a.a.b.g.h.v(z);
                            if (c5.b == 7) {
                                f(c5, c5.f4722f == 0 ? 0 : 1);
                                h();
                            } else {
                                this.f4758e.remove(d(c5.a.a));
                                try {
                                    d0 d0Var = this.b;
                                    str = c5.a.a;
                                    kVar = (k) d0Var;
                                    kVar.a();
                                } catch (IOException unused5) {
                                }
                                try {
                                    ((SQLiteOpenHelper) kVar.f4715c).getWritableDatabase().delete(kVar.b, "id = ?", new String[]{str});
                                    this.f4757d.obtainMessage(2, new b(c5, true, new ArrayList(this.f4758e))).sendToTarget();
                                } catch (SQLiteException e4) {
                                    throw new f.i.a.a.x0.a(e4);
                                }
                            }
                        }
                        h();
                    }
                    this.f4757d.obtainMessage(1, i2, this.f4759f.size()).sendToTarget();
                    return;
                case 10:
                    e eVar2 = (e) message.obj;
                    String str4 = eVar2.a.a;
                    long j2 = eVar2.f4771i;
                    m c6 = c(str4, false);
                    c.a.a.b.g.h.t(c6);
                    if (j2 == c6.f4721e || j2 == -1) {
                        return;
                    }
                    e(new m(c6.a, c6.b, c6.f4719c, System.currentTimeMillis(), j2, c6.f4722f, c6.f4723g, c6.f4724h));
                    return;
                case 11:
                    for (int i11 = 0; i11 < this.f4758e.size(); i11++) {
                        m mVar2 = this.f4758e.get(i11);
                        if (mVar2.b == 2) {
                            try {
                                ((k) this.b).g(mVar2);
                            } catch (IOException unused6) {
                            }
                        }
                    }
                    sendEmptyMessageDelayed(11, 5000L);
                    return;
                case 12:
                    for (e eVar3 : this.f4759f.values()) {
                        eVar3.a(true);
                    }
                    try {
                        ((k) this.b).h();
                    } catch (IOException unused7) {
                    }
                    this.f4758e.clear();
                    this.a.quit();
                    synchronized (this) {
                        notifyAll();
                    }
                    return;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public interface d {
        void onDownloadChanged(s sVar, m mVar);

        void onDownloadRemoved(s sVar, m mVar);

        void onIdle(s sVar);

        void onInitialized(s sVar);

        void onRequirementsStateChanged(s sVar, f.i.a.a.g1.b bVar, int i2);
    }

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public static class e extends Thread implements v.a {
        public final u a;
        public final v b;

        /* renamed from: c  reason: collision with root package name */
        public final t f4765c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4766d;

        /* renamed from: e  reason: collision with root package name */
        public final int f4767e;

        /* renamed from: f  reason: collision with root package name */
        public volatile c f4768f;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f4769g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public Throwable f4770h;

        /* renamed from: i  reason: collision with root package name */
        public long f4771i = -1;

        public e(u uVar, v vVar, t tVar, boolean z, int i2, c cVar, a aVar) {
            this.a = uVar;
            this.b = vVar;
            this.f4765c = tVar;
            this.f4766d = z;
            this.f4767e = i2;
            this.f4768f = cVar;
        }

        public void a(boolean z) {
            if (z) {
                this.f4768f = null;
            }
            if (this.f4769g) {
                return;
            }
            this.f4769g = true;
            this.b.cancel();
            interrupt();
        }

        public void b(long j2, long j3, float f2) {
            t tVar = this.f4765c;
            tVar.a = j3;
            tVar.b = f2;
            if (j2 != this.f4771i) {
                this.f4771i = j2;
                c cVar = this.f4768f;
                if (cVar != null) {
                    cVar.obtainMessage(10, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f4766d) {
                    this.b.remove();
                } else {
                    long j2 = -1;
                    int i2 = 0;
                    while (!this.f4769g) {
                        try {
                            this.b.a(this);
                            break;
                        } catch (IOException e2) {
                            if (!this.f4769g) {
                                long j3 = this.f4765c.a;
                                if (j3 != j2) {
                                    j2 = j3;
                                    i2 = 0;
                                }
                                i2++;
                                if (i2 <= this.f4767e) {
                                    Thread.sleep(Math.min((i2 - 1) * 1000, (int) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING));
                                } else {
                                    throw e2;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                this.f4770h = th;
            }
            c cVar = this.f4768f;
            if (cVar != null) {
                cVar.obtainMessage(9, this).sendToTarget();
            }
        }
    }

    public s(Context context, d0 d0Var, x xVar) {
        context.getApplicationContext();
        this.a = d0Var;
        this.f4751g = 3;
        this.f4752h = 5;
        this.f4750f = true;
        Collections.emptyList();
        this.f4747c = new CopyOnWriteArraySet<>();
        Handler s = h0.s(new Handler.Callback() { // from class: f.i.a.a.e1.g
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                s.this.a(message);
                return true;
            }
        });
        HandlerThread handlerThread = new HandlerThread("DownloadManager file i/o");
        handlerThread.start();
        this.b = new c(handlerThread, d0Var, xVar, s, this.f4751g, this.f4752h, this.f4750f);
        f.i.a.a.g1.c cVar = new f.i.a.a.g1.c(context, new c.d() { // from class: f.i.a.a.e1.a
            @Override // f.i.a.a.g1.c.d
            public final void a(f.i.a.a.g1.c cVar2, int i2) {
                s.this.c(cVar2, i2);
            }
        }, f4746k);
        this.f4754j = cVar;
        cVar.f4806f = cVar.f4803c.a(cVar.a);
        IntentFilter intentFilter = new IntentFilter();
        if ((cVar.f4803c.a & 1) != 0) {
            if (h0.a >= 23) {
                ConnectivityManager connectivityManager = (ConnectivityManager) cVar.a.getSystemService("connectivity");
                c.a.a.b.g.h.t(connectivityManager);
                NetworkRequest build = new NetworkRequest.Builder().addCapability(16).build();
                c.b bVar = new c.b(null);
                cVar.f4807g = bVar;
                connectivityManager.registerNetworkCallback(build, bVar);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if ((cVar.f4803c.a & 8) != 0) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if ((cVar.f4803c.a & 4) != 0) {
            if (h0.a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        c.C0073c c0073c = new c.C0073c(null);
        cVar.f4805e = c0073c;
        cVar.a.registerReceiver(c0073c, intentFilter, null, cVar.f4804d);
        int i2 = cVar.f4806f;
        this.f4753i = i2;
        this.f4748d = 1;
        this.b.obtainMessage(0, i2, 0).sendToTarget();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public static m b(m mVar, u uVar, int i2, long j2) {
        long j3;
        u uVar2;
        ?? emptyList;
        int i3 = mVar.b;
        if (i3 != 5) {
            if (!(i3 == 3 || i3 == 4)) {
                j3 = mVar.f4719c;
                int i4 = (i3 != 5 || i3 == 7) ? 7 : i2 != 0 ? 1 : 0;
                uVar2 = mVar.a;
                c.a.a.b.g.h.m(uVar2.a.equals(uVar.a));
                c.a.a.b.g.h.m(uVar2.b.equals(uVar.b));
                if (uVar2.f4773d.isEmpty() && !uVar.f4773d.isEmpty()) {
                    emptyList = new ArrayList(uVar2.f4773d);
                    for (int i5 = 0; i5 < uVar.f4773d.size(); i5++) {
                        c0 c0Var = uVar.f4773d.get(i5);
                        if (!emptyList.contains(c0Var)) {
                            emptyList.add(c0Var);
                        }
                    }
                } else {
                    emptyList = Collections.emptyList();
                }
                return new m(new u(uVar2.a, uVar2.b, uVar.f4772c, emptyList, uVar.f4774e, uVar.f4775f), i4, j3, j2, -1L, i2, 0);
            }
        }
        j3 = j2;
        if (i3 != 5) {
        }
        uVar2 = mVar.a;
        c.a.a.b.g.h.m(uVar2.a.equals(uVar.a));
        c.a.a.b.g.h.m(uVar2.b.equals(uVar.b));
        if (uVar2.f4773d.isEmpty()) {
        }
        emptyList = Collections.emptyList();
        return new m(new u(uVar2.a, uVar2.b, uVar.f4772c, emptyList, uVar.f4774e, uVar.f4775f), i4, j3, j2, -1L, i2, 0);
    }

    public final boolean a(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            Collections.unmodifiableList((List) message.obj);
            Iterator<d> it = this.f4747c.iterator();
            while (it.hasNext()) {
                it.next().onInitialized(this);
            }
        } else if (i2 == 1) {
            int i3 = message.arg1;
            int i4 = message.arg2;
            int i5 = this.f4748d - i3;
            this.f4748d = i5;
            this.f4749e = i4;
            if (i4 == 0 && i5 == 0) {
                Iterator<d> it2 = this.f4747c.iterator();
                while (it2.hasNext()) {
                    it2.next().onIdle(this);
                }
            }
        } else if (i2 == 2) {
            b bVar = (b) message.obj;
            Collections.unmodifiableList(bVar.f4755c);
            m mVar = bVar.a;
            if (bVar.b) {
                Iterator<d> it3 = this.f4747c.iterator();
                while (it3.hasNext()) {
                    it3.next().onDownloadRemoved(this, mVar);
                }
            } else {
                Iterator<d> it4 = this.f4747c.iterator();
                while (it4.hasNext()) {
                    it4.next().onDownloadChanged(this, mVar);
                }
            }
        } else {
            throw new IllegalStateException();
        }
        return true;
    }

    public final void c(f.i.a.a.g1.c cVar, int i2) {
        f.i.a.a.g1.b bVar = cVar.f4803c;
        Iterator<d> it = this.f4747c.iterator();
        while (it.hasNext()) {
            it.next().onRequirementsStateChanged(this, bVar, i2);
        }
        if (this.f4753i == i2) {
            return;
        }
        this.f4753i = i2;
        this.f4748d++;
        this.b.obtainMessage(2, i2, 0).sendToTarget();
    }
}
