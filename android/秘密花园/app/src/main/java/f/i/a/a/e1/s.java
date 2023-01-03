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
import c.a.a.b.g.h;
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
    public static final f.i.a.a.g1.b f4662k = new f.i.a.a.g1.b(1);
    public final d0 a;
    public final c b;

    /* renamed from: d  reason: collision with root package name */
    public int f4664d;

    /* renamed from: e  reason: collision with root package name */
    public int f4665e;

    /* renamed from: i  reason: collision with root package name */
    public int f4669i;

    /* renamed from: j  reason: collision with root package name */
    public f.i.a.a.g1.c f4670j;

    /* renamed from: g  reason: collision with root package name */
    public int f4667g = 3;

    /* renamed from: h  reason: collision with root package name */
    public int f4668h = 5;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4666f = true;

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArraySet<d> f4663c = new CopyOnWriteArraySet<>();

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final m a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final List<m> f4671c;

        public b(m mVar, boolean z, List<m> list) {
            this.a = mVar;
            this.b = z;
            this.f4671c = list;
        }
    }

    /* compiled from: DownloadManager.java */
    /* loaded from: classes.dex */
    public static final class c extends Handler {
        public final HandlerThread a;
        public final d0 b;

        /* renamed from: c  reason: collision with root package name */
        public final x f4672c;

        /* renamed from: d  reason: collision with root package name */
        public final Handler f4673d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList<m> f4674e = new ArrayList<>();

        /* renamed from: f  reason: collision with root package name */
        public final HashMap<String, e> f4675f = new HashMap<>();

        /* renamed from: g  reason: collision with root package name */
        public int f4676g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f4677h;

        /* renamed from: i  reason: collision with root package name */
        public int f4678i;

        /* renamed from: j  reason: collision with root package name */
        public int f4679j;

        /* renamed from: k  reason: collision with root package name */
        public int f4680k;

        public c(HandlerThread handlerThread, d0 d0Var, x xVar, Handler handler, int i2, int i3, boolean z) {
            super(handlerThread.getLooper());
            this.a = handlerThread;
            this.b = d0Var;
            this.f4672c = xVar;
            this.f4673d = handler;
            this.f4678i = i2;
            this.f4679j = i3;
            this.f4677h = z;
        }

        public static int a(m mVar, m mVar2) {
            return h0.m(mVar.f4635c, mVar2.f4635c);
        }

        public static m b(m mVar, int i2) {
            return new m(mVar.a, i2, mVar.f4635c, System.currentTimeMillis(), mVar.f4637e, 0, 0, mVar.f4640h);
        }

        @Nullable
        public final m c(String str, boolean z) {
            int d2 = d(str);
            if (d2 != -1) {
                return this.f4674e.get(d2);
            }
            if (!z) {
                return null;
            }
            try {
                return ((k) this.b).c(str);
            } catch (IOException unused) {
                return null;
            }
        }

        public final int d(String str) {
            for (int i2 = 0; i2 < this.f4674e.size(); i2++) {
                if (this.f4674e.get(i2).a.a.equals(str)) {
                    return i2;
                }
            }
            return -1;
        }

        public final m e(m mVar) {
            int i2 = mVar.b;
            boolean z = true;
            h.v((i2 == 3 || i2 == 4) ? false : true);
            int d2 = d(mVar.a.a);
            if (d2 == -1) {
                this.f4674e.add(mVar);
                Collections.sort(this.f4674e, f.a);
            } else {
                if (mVar.f4635c == this.f4674e.get(d2).f4635c) {
                    z = false;
                }
                this.f4674e.set(d2, mVar);
                if (z) {
                    Collections.sort(this.f4674e, f.a);
                }
            }
            try {
                ((k) this.b).g(mVar);
            } catch (IOException unused) {
            }
            this.f4673d.obtainMessage(2, new b(mVar, false, new ArrayList(this.f4674e))).sendToTarget();
            return mVar;
        }

        public final m f(m mVar, int i2) {
            boolean z = true;
            if (i2 == 3 || i2 == 4 || i2 == 1) {
                z = false;
            }
            h.v(z);
            m b = b(mVar, i2);
            e(b);
            return b;
        }

        public final void g(m mVar, int i2) {
            if (i2 == 0) {
                if (mVar.b == 1) {
                    f(mVar, 0);
                }
            } else if (i2 != mVar.f4638f) {
                int i3 = mVar.b;
                if (i3 == 0 || i3 == 2) {
                    i3 = 1;
                }
                e(new m(mVar.a, i3, mVar.f4635c, System.currentTimeMillis(), mVar.f4637e, i2, 0, mVar.f4640h));
            }
        }

        public final void h() {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f4674e.size(); i3++) {
                m mVar = this.f4674e.get(i3);
                e eVar = this.f4675f.get(mVar.a.a);
                int i4 = mVar.b;
                boolean z = true;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            h.t(eVar);
                            h.v(!eVar.f4682d);
                            if (this.f4677h || this.f4676g != 0) {
                                z = false;
                            }
                            if (!z || i2 >= this.f4678i) {
                                f(mVar, 0);
                                eVar.a(false);
                            }
                        } else if (i4 != 5 && i4 != 7) {
                            throw new IllegalStateException();
                        } else if (eVar == null) {
                            e eVar2 = new e(mVar.a, ((l) this.f4672c).a(mVar.a), mVar.f4640h, true, this.f4679j, this, null);
                            this.f4675f.put(mVar.a.a, eVar2);
                            eVar2.start();
                        } else if (!eVar.f4682d) {
                            eVar.a(false);
                        }
                    } else if (eVar != null) {
                        h.v(!eVar.f4682d);
                        eVar.a(false);
                    }
                } else if (eVar != null) {
                    h.v(!eVar.f4682d);
                    eVar.a(false);
                } else {
                    if (this.f4677h || this.f4676g != 0) {
                        z = false;
                    }
                    if (!z || this.f4680k >= this.f4678i) {
                        eVar = null;
                    } else {
                        m f2 = f(mVar, 2);
                        eVar = new e(f2.a, ((l) this.f4672c).a(f2.a), f2.f4640h, false, this.f4679j, this, null);
                        this.f4675f.put(f2.a.a, eVar);
                        int i5 = this.f4680k;
                        this.f4680k = i5 + 1;
                        if (i5 == 0) {
                            sendEmptyMessageDelayed(11, 5000);
                        }
                        eVar.start();
                    }
                }
                if (eVar != null && !eVar.f4682d) {
                    i2++;
                }
            }
        }

        /* JADX INFO: finally extract failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            k kVar;
            o oVar = null;
            r10 = 0;
            int i2 = 0;
            boolean z = false;
            switch (message.what) {
                case 0:
                    this.f4676g = message.arg1;
                    try {
                        try {
                            ((k) this.b).h();
                            oVar = ((k) this.b).e(0, 1, 2, 5, 7);
                            while (oVar.moveToNext()) {
                                this.f4674e.add(((k.b) oVar).d());
                            }
                        } catch (IOException unused) {
                            this.f4674e.clear();
                        }
                        h0.l(oVar);
                        this.f4673d.obtainMessage(0, new ArrayList(this.f4674e)).sendToTarget();
                        h();
                        i2 = 1;
                        this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                        return;
                    } catch (Throwable th) {
                        h0.l(oVar);
                        throw th;
                    }
                case 1:
                    if (message.arg1 != 0) {
                        z = true;
                    }
                    this.f4677h = z;
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 2:
                    this.f4676g = message.arg1;
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 3:
                    String str2 = (String) message.obj;
                    int i3 = message.arg1;
                    try {
                        if (str2 == null) {
                            for (int i4 = 0; i4 < this.f4674e.size(); i4++) {
                                g(this.f4674e.get(i4), i3);
                            }
                            ((k) this.b).i(i3);
                        } else {
                            m c2 = c(str2, false);
                            if (c2 != null) {
                                g(c2, i3);
                            } else {
                                ((k) this.b).j(str2, i3);
                            }
                        }
                    } catch (IOException unused2) {
                    }
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 4:
                    this.f4678i = message.arg1;
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 5:
                    this.f4679j = message.arg1;
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 6:
                    u uVar = (u) message.obj;
                    int i5 = message.arg1;
                    m c3 = c(uVar.a, true);
                    long currentTimeMillis = System.currentTimeMillis();
                    if (c3 != null) {
                        e(s.b(c3, uVar, i5, currentTimeMillis));
                    } else {
                        e(new m(uVar, i5 != 0 ? 1 : 0, currentTimeMillis, currentTimeMillis, -1, i5, 0));
                    }
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 7:
                    m c4 = c((String) message.obj, true);
                    if (c4 != null) {
                        f(c4, 5);
                        h();
                    }
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 8:
                    ArrayList arrayList = new ArrayList();
                    try {
                        o e2 = ((k) this.b).e(3, 4);
                        while (e2.moveToNext()) {
                            arrayList.add(((k.b) e2).d());
                        }
                        ((k.b) e2).a.close();
                    } catch (IOException unused3) {
                    }
                    for (int i6 = 0; i6 < this.f4674e.size(); i6++) {
                        ArrayList<m> arrayList2 = this.f4674e;
                        arrayList2.set(i6, b(arrayList2.get(i6), 5));
                    }
                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                        this.f4674e.add(b((m) arrayList.get(i7), 5));
                    }
                    Collections.sort(this.f4674e, f.a);
                    try {
                        k kVar2 = (k) this.b;
                        kVar2.a();
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("state", (Integer) 5);
                            ((SQLiteOpenHelper) kVar2.f4631c).getWritableDatabase().update(kVar2.b, contentValues, null, null);
                        } catch (SQLException e3) {
                            throw new f.i.a.a.x0.a(e3);
                        }
                    } catch (IOException unused4) {
                    }
                    ArrayList arrayList3 = new ArrayList(this.f4674e);
                    for (int i8 = 0; i8 < this.f4674e.size(); i8++) {
                        this.f4673d.obtainMessage(2, new b(this.f4674e.get(i8), false, arrayList3)).sendToTarget();
                    }
                    h();
                    i2 = 1;
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 9:
                    e eVar = (e) message.obj;
                    String str3 = eVar.a.a;
                    this.f4675f.remove(str3);
                    boolean z2 = eVar.f4682d;
                    if (!z2) {
                        int i9 = this.f4680k - 1;
                        this.f4680k = i9;
                        if (i9 == 0) {
                            removeMessages(11);
                        }
                    }
                    if (eVar.f4685g) {
                        h();
                    } else {
                        Throwable th2 = eVar.f4686h;
                        if (th2 != null) {
                            StringBuilder o = f.b.a.a.a.o("Task failed: ");
                            o.append(eVar.a);
                            o.append(", ");
                            o.append(z2);
                            o.toString();
                        }
                        m c5 = c(str3, false);
                        h.t(c5);
                        int i10 = c5.b;
                        if (i10 == 2) {
                            h.v(!z2);
                            m mVar = new m(c5.a, th2 == null ? 3 : 4, c5.f4635c, System.currentTimeMillis(), c5.f4637e, c5.f4638f, th2 == null ? 0 : 1, c5.f4640h);
                            this.f4674e.remove(d(mVar.a.a));
                            try {
                                ((k) this.b).g(mVar);
                            } catch (IOException unused5) {
                            }
                            this.f4673d.obtainMessage(2, new b(mVar, false, new ArrayList(this.f4674e))).sendToTarget();
                        } else if (i10 == 5 || i10 == 7) {
                            h.v(z2);
                            if (c5.b == 7) {
                                f(c5, c5.f4638f == 0 ? 0 : 1);
                                h();
                            } else {
                                this.f4674e.remove(d(c5.a.a));
                                try {
                                    d0 d0Var = this.b;
                                    str = c5.a.a;
                                    kVar = (k) d0Var;
                                    kVar.a();
                                } catch (IOException unused6) {
                                }
                                try {
                                    ((SQLiteOpenHelper) kVar.f4631c).getWritableDatabase().delete(kVar.b, "id = ?", new String[]{str});
                                    this.f4673d.obtainMessage(2, new b(c5, true, new ArrayList(this.f4674e))).sendToTarget();
                                } catch (SQLiteException e4) {
                                    throw new f.i.a.a.x0.a(e4);
                                }
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                        h();
                    }
                    this.f4673d.obtainMessage(1, i2, this.f4675f.size()).sendToTarget();
                    return;
                case 10:
                    e eVar2 = (e) message.obj;
                    String str4 = eVar2.a.a;
                    long j2 = eVar2.f4687i;
                    m c6 = c(str4, false);
                    h.t(c6);
                    if (!(j2 == c6.f4637e || j2 == -1)) {
                        e(new m(c6.a, c6.b, c6.f4635c, System.currentTimeMillis(), j2, c6.f4638f, c6.f4639g, c6.f4640h));
                        return;
                    }
                    return;
                case 11:
                    for (int i11 = 0; i11 < this.f4674e.size(); i11++) {
                        m mVar2 = this.f4674e.get(i11);
                        if (mVar2.b == 2) {
                            try {
                                ((k) this.b).g(mVar2);
                            } catch (IOException unused7) {
                            }
                        }
                    }
                    sendEmptyMessageDelayed(11, 5000);
                    return;
                case 12:
                    for (e eVar3 : this.f4675f.values()) {
                        eVar3.a(true);
                    }
                    try {
                        ((k) this.b).h();
                    } catch (IOException unused8) {
                    }
                    this.f4674e.clear();
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
        public final t f4681c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4682d;

        /* renamed from: e  reason: collision with root package name */
        public final int f4683e;

        /* renamed from: f  reason: collision with root package name */
        public volatile c f4684f;

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f4685g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public Throwable f4686h;

        /* renamed from: i  reason: collision with root package name */
        public long f4687i = -1;

        public e(u uVar, v vVar, t tVar, boolean z, int i2, c cVar, a aVar) {
            this.a = uVar;
            this.b = vVar;
            this.f4681c = tVar;
            this.f4682d = z;
            this.f4683e = i2;
            this.f4684f = cVar;
        }

        public void a(boolean z) {
            if (z) {
                this.f4684f = null;
            }
            if (!this.f4685g) {
                this.f4685g = true;
                this.b.cancel();
                interrupt();
            }
        }

        public void b(long j2, long j3, float f2) {
            t tVar = this.f4681c;
            tVar.a = j3;
            tVar.b = f2;
            if (j2 != this.f4687i) {
                this.f4687i = j2;
                c cVar = this.f4684f;
                if (cVar != null) {
                    cVar.obtainMessage(10, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f4682d) {
                    this.b.remove();
                } else {
                    long j2 = -1;
                    int i2 = 0;
                    while (!this.f4685g) {
                        try {
                            this.b.a(this);
                            break;
                        } catch (IOException e2) {
                            if (!this.f4685g) {
                                long j3 = this.f4681c.a;
                                if (j3 != j2) {
                                    j2 = j3;
                                    i2 = 0;
                                }
                                i2++;
                                if (i2 <= this.f4683e) {
                                    Thread.sleep((long) Math.min((i2 - 1) * 1000, (int) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING));
                                } else {
                                    throw e2;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                this.f4686h = th;
            }
            c cVar = this.f4684f;
            if (cVar != null) {
                cVar.obtainMessage(9, this).sendToTarget();
            }
        }
    }

    public s(Context context, d0 d0Var, x xVar) {
        context.getApplicationContext();
        this.a = d0Var;
        Collections.emptyList();
        Handler s = h0.s(new Handler.Callback() { // from class: f.i.a.a.e1.g
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                s.this.a(message);
                return true;
            }
        });
        HandlerThread handlerThread = new HandlerThread("DownloadManager file i/o");
        handlerThread.start();
        this.b = new c(handlerThread, d0Var, xVar, s, this.f4667g, this.f4668h, this.f4666f);
        f.i.a.a.g1.c cVar = new f.i.a.a.g1.c(context, new c.d() { // from class: f.i.a.a.e1.a
            @Override // f.i.a.a.g1.c.d
            public final void a(c cVar2, int i2) {
                s.this.c(cVar2, i2);
            }
        }, f4662k);
        this.f4670j = cVar;
        cVar.f4722f = cVar.f4719c.a(cVar.a);
        IntentFilter intentFilter = new IntentFilter();
        if ((cVar.f4719c.a & 1) != 0) {
            if (h0.a >= 23) {
                ConnectivityManager connectivityManager = (ConnectivityManager) cVar.a.getSystemService("connectivity");
                h.t(connectivityManager);
                NetworkRequest build = new NetworkRequest.Builder().addCapability(16).build();
                c.b bVar = new c.b(null);
                cVar.f4723g = bVar;
                connectivityManager.registerNetworkCallback(build, bVar);
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if ((cVar.f4719c.a & 8) != 0) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if ((cVar.f4719c.a & 4) != 0) {
            if (h0.a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        c.C0066c cVar2 = new c.C0066c(null);
        cVar.f4721e = cVar2;
        cVar.a.registerReceiver(cVar2, intentFilter, null, cVar.f4720d);
        int i2 = cVar.f4722f;
        this.f4669i = i2;
        this.f4664d = 1;
        this.b.obtainMessage(0, i2, 0).sendToTarget();
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:34:0x007d */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.util.ArrayList] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static f.i.a.a.e1.m b(f.i.a.a.e1.m r20, f.i.a.a.e1.u r21, int r22, long r23) {
        /*
            r0 = r20
            r1 = r21
            int r2 = r0.b
            r3 = 1
            r4 = 0
            r5 = 5
            if (r2 == r5) goto L_0x001c
            r6 = 3
            if (r2 == r6) goto L_0x0014
            r6 = 4
            if (r2 != r6) goto L_0x0012
            goto L_0x0014
        L_0x0012:
            r6 = 0
            goto L_0x0015
        L_0x0014:
            r6 = 1
        L_0x0015:
            if (r6 == 0) goto L_0x0018
            goto L_0x001c
        L_0x0018:
            long r6 = r0.f4635c
            r11 = r6
            goto L_0x001e
        L_0x001c:
            r11 = r23
        L_0x001e:
            r6 = 7
            if (r2 == r5) goto L_0x002a
            if (r2 != r6) goto L_0x0024
            goto L_0x002a
        L_0x0024:
            if (r22 == 0) goto L_0x0028
            r10 = 1
            goto L_0x002b
        L_0x0028:
            r10 = 0
            goto L_0x002b
        L_0x002a:
            r10 = 7
        L_0x002b:
            f.i.a.a.e1.m r2 = new f.i.a.a.e1.m
            f.i.a.a.e1.u r0 = r0.a
            java.lang.String r3 = r0.a
            java.lang.String r5 = r1.a
            boolean r3 = r3.equals(r5)
            c.a.a.b.g.h.m(r3)
            java.lang.String r3 = r0.b
            java.lang.String r5 = r1.b
            boolean r3 = r3.equals(r5)
            c.a.a.b.g.h.m(r3)
            java.util.List<f.i.a.a.e1.c0> r3 = r0.f4689d
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L_0x0079
            java.util.List<f.i.a.a.e1.c0> r3 = r1.f4689d
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L_0x0056
            goto L_0x0079
        L_0x0056:
            java.util.ArrayList r3 = new java.util.ArrayList
            java.util.List<f.i.a.a.e1.c0> r5 = r0.f4689d
            r3.<init>(r5)
        L_0x005d:
            java.util.List<f.i.a.a.e1.c0> r5 = r1.f4689d
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x007d
            java.util.List<f.i.a.a.e1.c0> r5 = r1.f4689d
            java.lang.Object r5 = r5.get(r4)
            f.i.a.a.e1.c0 r5 = (f.i.a.a.e1.c0) r5
            boolean r6 = r3.contains(r5)
            if (r6 != 0) goto L_0x0076
            r3.add(r5)
        L_0x0076:
            int r4 = r4 + 1
            goto L_0x005d
        L_0x0079:
            java.util.List r3 = java.util.Collections.emptyList()
        L_0x007d:
            r17 = r3
            f.i.a.a.e1.u r9 = new f.i.a.a.e1.u
            java.lang.String r14 = r0.a
            java.lang.String r15 = r0.b
            android.net.Uri r0 = r1.f4688c
            java.lang.String r3 = r1.f4690e
            byte[] r1 = r1.f4691f
            r13 = r9
            r16 = r0
            r18 = r3
            r19 = r1
            r13.<init>(r14, r15, r16, r17, r18, r19)
            r15 = -1
            r18 = 0
            r8 = r2
            r13 = r23
            r17 = r22
            r8.<init>(r9, r10, r11, r13, r15, r17, r18)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.e1.s.b(f.i.a.a.e1.m, f.i.a.a.e1.u, int, long):f.i.a.a.e1.m");
    }

    public final boolean a(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            Collections.unmodifiableList((List) message.obj);
            Iterator<d> it = this.f4663c.iterator();
            while (it.hasNext()) {
                it.next().onInitialized(this);
            }
        } else if (i2 == 1) {
            int i3 = message.arg1;
            int i4 = message.arg2;
            int i5 = this.f4664d - i3;
            this.f4664d = i5;
            this.f4665e = i4;
            if (i4 == 0 && i5 == 0) {
                Iterator<d> it2 = this.f4663c.iterator();
                while (it2.hasNext()) {
                    it2.next().onIdle(this);
                }
            }
        } else if (i2 == 2) {
            b bVar = (b) message.obj;
            Collections.unmodifiableList(bVar.f4671c);
            m mVar = bVar.a;
            if (bVar.b) {
                Iterator<d> it3 = this.f4663c.iterator();
                while (it3.hasNext()) {
                    it3.next().onDownloadRemoved(this, mVar);
                }
            } else {
                Iterator<d> it4 = this.f4663c.iterator();
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
        f.i.a.a.g1.b bVar = cVar.f4719c;
        Iterator<d> it = this.f4663c.iterator();
        while (it.hasNext()) {
            it.next().onRequirementsStateChanged(this, bVar, i2);
        }
        if (this.f4669i != i2) {
            this.f4669i = i2;
            this.f4664d++;
            this.b.obtainMessage(2, i2, 0).sendToTarget();
        }
    }
}
