package f.i.a.a.l1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ItemTouchHelper;
import f.i.a.a.l1.g;
import f.i.a.a.l1.r;
import f.i.a.a.m1.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.m;
import f.i.a.a.m1.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DefaultBandwidthMeter.java */
/* loaded from: classes.dex */
public final class r implements g, i0 {
    public static final Map<String, int[]> n;
    public static final long[] o = {5400000, 3400000, 1900000, 1100000, 400000};
    public static final long[] p = {170000, 139000, 122000, 107000, 90000};
    public static final long[] q = {2100000, 1300000, 960000, 770000, 450000};
    public static final long[] r = {6000000, 3400000, 2100000, 1400000, 570000};
    @Nullable
    public final Context a;
    public final SparseArray<Long> b;

    /* renamed from: c  reason: collision with root package name */
    public final m<g.a> f5615c;

    /* renamed from: d  reason: collision with root package name */
    public final z f5616d;

    /* renamed from: e  reason: collision with root package name */
    public final h f5617e;

    /* renamed from: f  reason: collision with root package name */
    public int f5618f;

    /* renamed from: g  reason: collision with root package name */
    public long f5619g;

    /* renamed from: h  reason: collision with root package name */
    public long f5620h;

    /* renamed from: i  reason: collision with root package name */
    public int f5621i;

    /* renamed from: j  reason: collision with root package name */
    public long f5622j;

    /* renamed from: k  reason: collision with root package name */
    public long f5623k;

    /* renamed from: l  reason: collision with root package name */
    public long f5624l;

    /* renamed from: m  reason: collision with root package name */
    public long f5625m;

    /* compiled from: DefaultBandwidthMeter.java */
    /* loaded from: classes.dex */
    public static final class a {
        @Nullable
        public final Context a;
        public SparseArray<Long> b;

        /* renamed from: c  reason: collision with root package name */
        public int f5626c;

        /* renamed from: d  reason: collision with root package name */
        public h f5627d;

        public a(Context context) {
            Context context2;
            if (context == null) {
                context2 = null;
            } else {
                context2 = context.getApplicationContext();
            }
            this.a = context2;
            int[] iArr = r.n.get(h0.A(context));
            iArr = iArr == null ? new int[]{2, 2, 2, 2} : iArr;
            SparseArray<Long> sparseArray = new SparseArray<>(6);
            sparseArray.append(0, 1000000L);
            sparseArray.append(2, Long.valueOf(r.o[iArr[0]]));
            sparseArray.append(3, Long.valueOf(r.p[iArr[1]]));
            sparseArray.append(4, Long.valueOf(r.q[iArr[2]]));
            sparseArray.append(5, Long.valueOf(r.r[iArr[3]]));
            sparseArray.append(7, Long.valueOf(r.o[iArr[0]]));
            this.b = sparseArray;
            this.f5626c = 2000;
            this.f5627d = h.a;
        }
    }

    /* compiled from: DefaultBandwidthMeter.java */
    /* loaded from: classes.dex */
    public static class b extends BroadcastReceiver {

        /* renamed from: c  reason: collision with root package name */
        public static b f5628c;
        public final Handler a = new Handler(Looper.getMainLooper());
        public final ArrayList<WeakReference<r>> b = new ArrayList<>();

        public static synchronized b a(Context context) {
            b bVar;
            synchronized (b.class) {
                if (f5628c == null) {
                    f5628c = new b();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    context.registerReceiver(f5628c, intentFilter);
                }
                bVar = f5628c;
            }
            return bVar;
        }

        public final void c() {
            for (int size = this.b.size() - 1; size >= 0; size--) {
                if (this.b.get(size).get() == null) {
                    this.b.remove(size);
                }
            }
        }

        /* renamed from: d */
        public final void b(r rVar) {
            r.i(rVar);
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                c();
                for (int i2 = 0; i2 < this.b.size(); i2++) {
                    r rVar = this.b.get(i2).get();
                    if (rVar != null) {
                        r.i(rVar);
                    }
                }
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("AD", new int[]{1, 0, 0, 1});
        hashMap.put("AE", new int[]{1, 4, 4, 4});
        hashMap.put("AF", new int[]{4, 4, 3, 3});
        hashMap.put("AG", new int[]{3, 2, 1, 1});
        hashMap.put("AI", new int[]{1, 0, 1, 3});
        hashMap.put("AL", new int[]{1, 2, 1, 1});
        hashMap.put("AM", new int[]{2, 2, 3, 2});
        hashMap.put("AO", new int[]{3, 4, 2, 0});
        hashMap.put("AQ", new int[]{4, 2, 2, 2});
        hashMap.put("AR", new int[]{2, 3, 2, 2});
        hashMap.put("AS", new int[]{3, 3, 4, 1});
        hashMap.put("AT", new int[]{0, 2, 0, 0});
        hashMap.put("AU", new int[]{0, 1, 1, 1});
        hashMap.put("AW", new int[]{1, 1, 0, 2});
        hashMap.put("AX", new int[]{0, 2, 1, 0});
        hashMap.put("AZ", new int[]{3, 3, 2, 2});
        hashMap.put("BA", new int[]{1, 1, 1, 2});
        hashMap.put("BB", new int[]{0, 1, 0, 0});
        hashMap.put("BD", new int[]{2, 2, 3, 2});
        hashMap.put("BE", new int[]{0, 0, 0, 1});
        hashMap.put("BF", new int[]{4, 4, 3, 1});
        hashMap.put("BG", new int[]{0, 1, 0, 0});
        hashMap.put("BH", new int[]{2, 1, 3, 4});
        hashMap.put("BI", new int[]{4, 3, 4, 4});
        hashMap.put("BJ", new int[]{4, 3, 4, 4});
        hashMap.put("BL", new int[]{1, 0, 2, 3});
        hashMap.put("BM", new int[]{1, 0, 0, 0});
        hashMap.put("BN", new int[]{4, 2, 3, 3});
        hashMap.put("BO", new int[]{2, 2, 3, 2});
        hashMap.put("BQ", new int[]{1, 0, 3, 4});
        hashMap.put("BR", new int[]{2, 3, 3, 2});
        hashMap.put("BS", new int[]{2, 0, 1, 4});
        hashMap.put("BT", new int[]{3, 0, 2, 1});
        hashMap.put("BW", new int[]{4, 4, 1, 2});
        hashMap.put("BY", new int[]{0, 1, 1, 2});
        hashMap.put("BZ", new int[]{2, 2, 3, 1});
        hashMap.put("CA", new int[]{0, 3, 3, 3});
        hashMap.put("CD", new int[]{4, 4, 3, 2});
        hashMap.put("CF", new int[]{4, 3, 3, 4});
        hashMap.put("CG", new int[]{4, 4, 4, 4});
        hashMap.put("CH", new int[]{0, 0, 1, 1});
        hashMap.put("CI", new int[]{3, 4, 3, 3});
        hashMap.put("CK", new int[]{2, 4, 1, 0});
        hashMap.put("CL", new int[]{2, 2, 2, 3});
        hashMap.put("CM", new int[]{3, 4, 2, 1});
        hashMap.put("CN", new int[]{2, 2, 2, 3});
        hashMap.put("CO", new int[]{2, 3, 2, 2});
        hashMap.put("CR", new int[]{2, 2, 4, 4});
        hashMap.put("CU", new int[]{4, 4, 3, 1});
        hashMap.put("CV", new int[]{2, 3, 2, 4});
        hashMap.put("CW", new int[]{1, 0, 0, 0});
        hashMap.put("CX", new int[]{2, 2, 2, 2});
        hashMap.put("CY", new int[]{1, 1, 1, 1});
        hashMap.put("CZ", new int[]{0, 1, 0, 0});
        hashMap.put("DE", new int[]{0, 2, 2, 2});
        hashMap.put("DJ", new int[]{3, 3, 4, 0});
        hashMap.put("DK", new int[]{0, 0, 0, 0});
        hashMap.put("DM", new int[]{1, 0, 0, 3});
        hashMap.put("DO", new int[]{3, 3, 4, 4});
        hashMap.put("DZ", new int[]{3, 3, 4, 4});
        hashMap.put("EC", new int[]{2, 4, 4, 2});
        hashMap.put("EE", new int[]{0, 0, 0, 0});
        hashMap.put("EG", new int[]{3, 4, 2, 2});
        hashMap.put("EH", new int[]{2, 0, 3, 3});
        hashMap.put("ER", new int[]{4, 2, 2, 2});
        hashMap.put("ES", new int[]{0, 1, 1, 1});
        hashMap.put("ET", new int[]{4, 4, 4, 0});
        hashMap.put("FI", new int[]{0, 0, 1, 0});
        hashMap.put("FJ", new int[]{3, 1, 3, 3});
        hashMap.put("FK", new int[]{4, 2, 2, 3});
        hashMap.put("FM", new int[]{4, 2, 4, 0});
        hashMap.put("FO", new int[]{0, 0, 0, 0});
        hashMap.put("FR", new int[]{1, 0, 3, 1});
        hashMap.put("GA", new int[]{3, 3, 2, 1});
        hashMap.put("GB", new int[]{0, 1, 3, 3});
        hashMap.put("GD", new int[]{2, 0, 4, 4});
        hashMap.put("GE", new int[]{1, 1, 0, 3});
        hashMap.put("GF", new int[]{1, 2, 4, 4});
        hashMap.put("GG", new int[]{0, 0, 0, 0});
        hashMap.put("GH", new int[]{3, 3, 3, 2});
        hashMap.put("GI", new int[]{0, 0, 0, 1});
        hashMap.put("GL", new int[]{2, 2, 3, 4});
        hashMap.put("GM", new int[]{4, 3, 3, 2});
        hashMap.put("GN", new int[]{4, 4, 4, 0});
        hashMap.put("GP", new int[]{2, 2, 1, 3});
        hashMap.put("GQ", new int[]{4, 3, 3, 0});
        hashMap.put("GR", new int[]{1, 1, 0, 1});
        hashMap.put("GT", new int[]{3, 3, 3, 4});
        hashMap.put("GU", new int[]{1, 2, 4, 4});
        hashMap.put("GW", new int[]{4, 4, 4, 0});
        hashMap.put("GY", new int[]{3, 4, 1, 0});
        hashMap.put("HK", new int[]{0, 1, 4, 4});
        hashMap.put("HN", new int[]{3, 3, 2, 2});
        hashMap.put("HR", new int[]{1, 0, 0, 2});
        hashMap.put("HT", new int[]{3, 4, 4, 3});
        hashMap.put("HU", new int[]{0, 0, 1, 0});
        hashMap.put("ID", new int[]{3, 2, 3, 4});
        hashMap.put("IE", new int[]{0, 0, 3, 2});
        hashMap.put("IL", new int[]{0, 1, 2, 3});
        hashMap.put("IM", new int[]{0, 0, 0, 1});
        hashMap.put("IN", new int[]{2, 2, 4, 4});
        hashMap.put("IO", new int[]{4, 4, 2, 2});
        hashMap.put("IQ", new int[]{3, 3, 4, 4});
        hashMap.put("IR", new int[]{1, 0, 1, 0});
        hashMap.put("IS", new int[]{0, 0, 0, 0});
        hashMap.put("IT", new int[]{1, 0, 1, 1});
        hashMap.put("JE", new int[]{1, 0, 0, 1});
        hashMap.put("JM", new int[]{3, 2, 2, 1});
        hashMap.put("JO", new int[]{1, 1, 1, 2});
        hashMap.put("JP", new int[]{0, 2, 2, 2});
        hashMap.put("KE", new int[]{3, 3, 3, 3});
        hashMap.put("KG", new int[]{1, 1, 2, 3});
        hashMap.put("KH", new int[]{2, 0, 4, 4});
        hashMap.put("KI", new int[]{4, 4, 4, 4});
        hashMap.put("KM", new int[]{4, 4, 3, 3});
        hashMap.put("KN", new int[]{1, 0, 1, 4});
        hashMap.put("KP", new int[]{1, 2, 0, 2});
        hashMap.put("KR", new int[]{0, 3, 0, 2});
        hashMap.put("KW", new int[]{2, 2, 1, 2});
        hashMap.put("KY", new int[]{1, 1, 0, 2});
        hashMap.put("KZ", new int[]{1, 2, 2, 2});
        hashMap.put("LA", new int[]{2, 1, 1, 0});
        hashMap.put("LB", new int[]{3, 2, 0, 0});
        hashMap.put("LC", new int[]{2, 1, 0, 0});
        hashMap.put("LI", new int[]{0, 0, 2, 2});
        hashMap.put("LK", new int[]{1, 1, 2, 2});
        hashMap.put("LR", new int[]{3, 4, 4, 1});
        hashMap.put("LS", new int[]{3, 3, 2, 0});
        hashMap.put("LT", new int[]{0, 0, 0, 0});
        hashMap.put("LU", new int[]{0, 1, 0, 0});
        hashMap.put("LV", new int[]{0, 0, 0, 0});
        hashMap.put("LY", new int[]{4, 3, 4, 4});
        hashMap.put("MA", new int[]{2, 1, 2, 2});
        hashMap.put("MC", new int[]{1, 0, 1, 0});
        hashMap.put("MD", new int[]{1, 1, 0, 0});
        hashMap.put("ME", new int[]{1, 2, 2, 3});
        hashMap.put("MF", new int[]{1, 4, 2, 1});
        hashMap.put("MG", new int[]{3, 4, 1, 3});
        hashMap.put("MH", new int[]{4, 0, 2, 3});
        hashMap.put("MK", new int[]{1, 0, 0, 0});
        hashMap.put("ML", new int[]{4, 4, 4, 3});
        hashMap.put("MM", new int[]{2, 3, 1, 2});
        hashMap.put("MN", new int[]{2, 3, 2, 4});
        hashMap.put("MO", new int[]{0, 0, 4, 4});
        hashMap.put("MP", new int[]{0, 2, 4, 4});
        hashMap.put("MQ", new int[]{1, 1, 1, 3});
        hashMap.put("MR", new int[]{4, 4, 4, 4});
        hashMap.put("MS", new int[]{1, 4, 0, 3});
        hashMap.put("MT", new int[]{0, 1, 0, 0});
        hashMap.put("MU", new int[]{2, 2, 3, 4});
        hashMap.put("MV", new int[]{3, 2, 1, 1});
        hashMap.put("MW", new int[]{4, 2, 1, 1});
        hashMap.put("MX", new int[]{2, 4, 3, 2});
        hashMap.put("MY", new int[]{2, 2, 2, 3});
        hashMap.put("MZ", new int[]{3, 4, 2, 2});
        hashMap.put("NA", new int[]{3, 2, 2, 1});
        hashMap.put("NC", new int[]{2, 1, 3, 2});
        hashMap.put("NE", new int[]{4, 4, 4, 3});
        hashMap.put("NF", new int[]{1, 2, 2, 2});
        hashMap.put("NG", new int[]{3, 4, 3, 2});
        hashMap.put("NI", new int[]{3, 3, 3, 4});
        hashMap.put("NL", new int[]{0, 2, 4, 3});
        hashMap.put("NO", new int[]{0, 1, 0, 0});
        hashMap.put("NP", new int[]{3, 3, 2, 2});
        hashMap.put("NR", new int[]{4, 0, 4, 0});
        hashMap.put("NU", new int[]{2, 2, 2, 1});
        hashMap.put("NZ", new int[]{0, 0, 0, 1});
        hashMap.put("OM", new int[]{2, 2, 1, 3});
        hashMap.put("PA", new int[]{1, 3, 3, 4});
        hashMap.put("PE", new int[]{2, 3, 4, 4});
        hashMap.put("PF", new int[]{3, 1, 0, 1});
        hashMap.put("PG", new int[]{4, 3, 1, 1});
        hashMap.put("PH", new int[]{3, 0, 4, 4});
        hashMap.put("PK", new int[]{3, 3, 3, 3});
        hashMap.put("PL", new int[]{1, 1, 1, 3});
        hashMap.put("PM", new int[]{0, 2, 0, 0});
        hashMap.put("PR", new int[]{2, 1, 3, 3});
        hashMap.put("PS", new int[]{3, 3, 1, 4});
        hashMap.put("PT", new int[]{1, 1, 0, 1});
        hashMap.put("PW", new int[]{2, 2, 1, 1});
        hashMap.put("PY", new int[]{3, 1, 3, 3});
        hashMap.put("QA", new int[]{2, 3, 0, 1});
        hashMap.put("RE", new int[]{1, 0, 2, 2});
        hashMap.put("RO", new int[]{0, 1, 1, 2});
        hashMap.put("RS", new int[]{1, 2, 0, 0});
        hashMap.put("RU", new int[]{0, 1, 1, 1});
        hashMap.put("RW", new int[]{3, 4, 2, 4});
        hashMap.put("SA", new int[]{2, 2, 1, 2});
        hashMap.put("SB", new int[]{4, 4, 3, 0});
        hashMap.put("SC", new int[]{4, 2, 0, 1});
        hashMap.put("SD", new int[]{4, 4, 4, 2});
        hashMap.put("SE", new int[]{0, 1, 0, 0});
        hashMap.put("SG", new int[]{1, 2, 3, 3});
        hashMap.put("SH", new int[]{4, 4, 2, 3});
        hashMap.put("SI", new int[]{0, 1, 0, 1});
        hashMap.put("SJ", new int[]{0, 0, 2, 0});
        hashMap.put("SK", new int[]{0, 1, 0, 1});
        hashMap.put("SL", new int[]{4, 3, 2, 4});
        hashMap.put("SM", new int[]{0, 0, 1, 3});
        hashMap.put("SN", new int[]{4, 4, 4, 3});
        hashMap.put("SO", new int[]{4, 4, 4, 4});
        hashMap.put("SR", new int[]{3, 2, 2, 4});
        hashMap.put("SS", new int[]{4, 2, 4, 2});
        hashMap.put("ST", new int[]{3, 4, 2, 2});
        hashMap.put("SV", new int[]{2, 3, 3, 4});
        hashMap.put("SX", new int[]{2, 4, 1, 0});
        hashMap.put("SY", new int[]{4, 4, 1, 0});
        hashMap.put("SZ", new int[]{3, 4, 2, 3});
        hashMap.put("TC", new int[]{1, 1, 3, 1});
        hashMap.put("TD", new int[]{4, 4, 4, 3});
        hashMap.put("TG", new int[]{3, 3, 1, 0});
        hashMap.put("TH", new int[]{1, 3, 4, 4});
        hashMap.put("TJ", new int[]{4, 4, 4, 4});
        hashMap.put("TL", new int[]{4, 2, 4, 4});
        hashMap.put("TM", new int[]{4, 1, 2, 3});
        hashMap.put("TN", new int[]{2, 1, 1, 1});
        hashMap.put("TO", new int[]{3, 3, 3, 1});
        hashMap.put("TR", new int[]{1, 2, 0, 1});
        hashMap.put("TT", new int[]{2, 3, 1, 2});
        hashMap.put("TV", new int[]{4, 2, 2, 4});
        hashMap.put("TW", new int[]{0, 0, 0, 1});
        hashMap.put("TZ", new int[]{3, 3, 4, 3});
        hashMap.put("UA", new int[]{0, 2, 1, 2});
        hashMap.put("UG", new int[]{4, 3, 2, 3});
        hashMap.put("US", new int[]{0, 1, 3, 3});
        hashMap.put("UY", new int[]{2, 2, 2, 2});
        hashMap.put("UZ", new int[]{3, 2, 2, 2});
        hashMap.put("VA", new int[]{1, 2, 2, 2});
        hashMap.put("VC", new int[]{2, 1, 0, 0});
        hashMap.put("VE", new int[]{4, 4, 4, 3});
        hashMap.put("VG", new int[]{2, 1, 1, 2});
        hashMap.put("VI", new int[]{1, 0, 2, 4});
        hashMap.put("VN", new int[]{0, 2, 4, 4});
        hashMap.put("VU", new int[]{4, 1, 3, 1});
        hashMap.put("WS", new int[]{3, 2, 3, 1});
        hashMap.put("XK", new int[]{1, 2, 1, 0});
        hashMap.put("YE", new int[]{4, 4, 4, 2});
        hashMap.put("YT", new int[]{2, 0, 2, 3});
        hashMap.put("ZA", new int[]{2, 3, 2, 2});
        hashMap.put("ZM", new int[]{3, 3, 2, 1});
        hashMap.put("ZW", new int[]{3, 3, 3, 1});
        n = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public r() {
        this(null, new SparseArray(), 2000, h.a, false);
    }

    public static void i(r rVar) {
        int i2;
        synchronized (rVar) {
            if (rVar.a == null) {
                i2 = 0;
            } else {
                i2 = h0.F(rVar.a);
            }
            if (rVar.f5621i != i2) {
                rVar.f5621i = i2;
                if (!(i2 == 1 || i2 == 0 || i2 == 8)) {
                    rVar.f5624l = rVar.j(i2);
                    long c2 = rVar.f5617e.c();
                    rVar.l(rVar.f5618f > 0 ? (int) (c2 - rVar.f5619g) : 0, rVar.f5620h, rVar.f5624l);
                    rVar.f5619g = c2;
                    rVar.f5620h = 0;
                    rVar.f5623k = 0;
                    rVar.f5622j = 0;
                    z zVar = rVar.f5616d;
                    zVar.b.clear();
                    zVar.f5708d = -1;
                    zVar.f5709e = 0;
                    zVar.f5710f = 0;
                }
            }
        }
    }

    public static void k(int i2, long j2, long j3, g.a aVar) {
        f.i.a.a.v0.a aVar2 = (f.i.a.a.v0.a) aVar;
        aVar2.C();
        Iterator<f.i.a.a.v0.b> it = aVar2.a.iterator();
        while (it.hasNext()) {
            it.next().A();
        }
    }

    @Override // f.i.a.a.l1.g
    @Nullable
    public i0 a() {
        return this;
    }

    @Override // f.i.a.a.l1.g
    public void b(g.a aVar) {
        this.f5615c.c(aVar);
    }

    @Override // f.i.a.a.l1.g
    public synchronized long c() {
        return this.f5624l;
    }

    @Override // f.i.a.a.l1.i0
    public synchronized void d(m mVar, p pVar, boolean z) {
        if (z) {
            c.a.a.b.g.h.v(this.f5618f > 0);
            long c2 = this.f5617e.c();
            int i2 = (int) (c2 - this.f5619g);
            long j2 = (long) i2;
            this.f5622j += j2;
            this.f5623k += this.f5620h;
            if (i2 > 0) {
                this.f5616d.a((int) Math.sqrt((double) this.f5620h), (float) ((this.f5620h * 8000) / j2));
                if (this.f5622j >= ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS || this.f5623k >= 524288) {
                    this.f5624l = (long) this.f5616d.b(0.5f);
                }
                l(i2, this.f5620h, this.f5624l);
                this.f5619g = c2;
                this.f5620h = 0;
            }
            this.f5618f--;
        }
    }

    @Override // f.i.a.a.l1.i0
    public synchronized void e(m mVar, p pVar, boolean z, int i2) {
        if (z) {
            this.f5620h += (long) i2;
        }
    }

    @Override // f.i.a.a.l1.i0
    public synchronized void f(m mVar, p pVar, boolean z) {
        if (z) {
            if (this.f5618f == 0) {
                this.f5619g = this.f5617e.c();
            }
            this.f5618f++;
        }
    }

    @Override // f.i.a.a.l1.g
    public void g(Handler handler, g.a aVar) {
        this.f5615c.a(handler, aVar);
    }

    @Override // f.i.a.a.l1.i0
    public void h(m mVar, p pVar, boolean z) {
    }

    public final long j(int i2) {
        Long l2 = this.b.get(i2);
        if (l2 == null) {
            l2 = this.b.get(0);
        }
        if (l2 == null) {
            l2 = 1000000L;
        }
        return l2.longValue();
    }

    public final void l(int i2, long j2, long j3) {
        if (i2 != 0 || j2 != 0 || j3 != this.f5625m) {
            this.f5625m = j3;
            this.f5615c.b(new m.a(i2, j2, j3) { // from class: f.i.a.a.l1.b
                public final /* synthetic */ int a;
                public final /* synthetic */ long b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ long f5487c;

                {
                    this.a = r1;
                    this.b = r2;
                    this.f5487c = r4;
                }

                @Override // f.i.a.a.m1.m.a
                public final void a(Object obj) {
                    r.k(this.a, this.b, this.f5487c, (g.a) obj);
                }
            });
        }
    }

    public r(@Nullable Context context, SparseArray<Long> sparseArray, int i2, h hVar, boolean z) {
        Context context2;
        int i3;
        if (context == null) {
            context2 = null;
        } else {
            context2 = context.getApplicationContext();
        }
        this.a = context2;
        this.b = sparseArray;
        this.f5615c = new m<>();
        this.f5616d = new z(i2);
        this.f5617e = hVar;
        if (context == null) {
            i3 = 0;
        } else {
            i3 = h0.F(context);
        }
        this.f5621i = i3;
        this.f5624l = j(i3);
        if (context != null && z) {
            b a2 = b.a(context);
            synchronized (a2) {
                a2.c();
                a2.b.add(new WeakReference<>(this));
                a2.a.post(new Runnable(this) { // from class: f.i.a.a.l1.c
                    public final /* synthetic */ r b;

                    {
                        this.b = r2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        r.b.this.b(this.b);
                    }
                });
            }
        }
    }
}
