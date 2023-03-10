package f.d.a.o.n.b0;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* compiled from: SizeConfigStrategy.java */
@RequiresApi(19)
/* loaded from: classes.dex */
public class m implements k {

    /* renamed from: d  reason: collision with root package name */
    public static final Bitmap.Config[] f3596d;

    /* renamed from: e  reason: collision with root package name */
    public static final Bitmap.Config[] f3597e;

    /* renamed from: f  reason: collision with root package name */
    public static final Bitmap.Config[] f3598f;

    /* renamed from: g  reason: collision with root package name */
    public static final Bitmap.Config[] f3599g;

    /* renamed from: h  reason: collision with root package name */
    public static final Bitmap.Config[] f3600h;
    public final c a = new c();
    public final g<b, Bitmap> b = new g<>();

    /* renamed from: c  reason: collision with root package name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f3601c = new HashMap();

    /* compiled from: SizeConfigStrategy.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class b implements l {
        public final c a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public Bitmap.Config f3602c;

        public b(c cVar) {
            this.a = cVar;
        }

        @Override // f.d.a.o.n.b0.l
        public void a() {
            this.a.c(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.b == bVar.b && f.d.a.u.i.c(this.f3602c, bVar.f3602c);
            }
            return false;
        }

        public int hashCode() {
            int i2 = this.b * 31;
            Bitmap.Config config = this.f3602c;
            return i2 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return m.h(this.b, this.f3602c);
        }
    }

    /* compiled from: SizeConfigStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c extends f.d.a.o.n.b0.c<b> {
        @Override // f.d.a.o.n.b0.c
        public b a() {
            return new b(this);
        }

        public b d(int i2, Bitmap.Config config) {
            b b = b();
            b.b = i2;
            b.f3602c = config;
            return b;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f3596d = configArr;
        f3597e = configArr;
        f3598f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f3599g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f3600h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String h(int i2, Bitmap.Config config) {
        return "[" + i2 + "](" + config + ")";
    }

    @Override // f.d.a.o.n.b0.k
    @Nullable
    public Bitmap a(int i2, int i3, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int e2 = f.d.a.u.i.e(i2, i3, config);
        b b2 = this.a.b();
        b2.b = e2;
        b2.f3602c = config;
        int i4 = 0;
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            configArr = f3597e;
        } else {
            int i5 = a.a[config.ordinal()];
            if (i5 == 1) {
                configArr = f3596d;
            } else if (i5 == 2) {
                configArr = f3598f;
            } else if (i5 != 3) {
                configArr = i5 != 4 ? new Bitmap.Config[]{config} : f3600h;
            } else {
                configArr = f3599g;
            }
        }
        int length = configArr.length;
        while (true) {
            if (i4 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i4];
            Integer ceilingKey = i(config2).ceilingKey(Integer.valueOf(e2));
            if (ceilingKey == null || ceilingKey.intValue() > e2 * 8) {
                i4++;
            } else if (ceilingKey.intValue() != e2 || (config2 != null ? !config2.equals(config) : config != null)) {
                this.a.c(b2);
                b2 = this.a.d(ceilingKey.intValue(), config2);
            }
        }
        Bitmap a2 = this.b.a(b2);
        if (a2 != null) {
            g(Integer.valueOf(b2.b), a2);
            a2.reconfigure(i2, i3, config);
        }
        return a2;
    }

    @Override // f.d.a.o.n.b0.k
    public void b(Bitmap bitmap) {
        b d2 = this.a.d(f.d.a.u.i.f(bitmap), bitmap.getConfig());
        this.b.b(d2, bitmap);
        NavigableMap<Integer, Integer> i2 = i(bitmap.getConfig());
        Integer num = (Integer) i2.get(Integer.valueOf(d2.b));
        i2.put(Integer.valueOf(d2.b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // f.d.a.o.n.b0.k
    public String c(int i2, int i3, Bitmap.Config config) {
        return h(f.d.a.u.i.e(i2, i3, config), config);
    }

    @Override // f.d.a.o.n.b0.k
    public int d(Bitmap bitmap) {
        return f.d.a.u.i.f(bitmap);
    }

    @Override // f.d.a.o.n.b0.k
    @Nullable
    public Bitmap e() {
        Bitmap c2 = this.b.c();
        if (c2 != null) {
            g(Integer.valueOf(f.d.a.u.i.f(c2)), c2);
        }
        return c2;
    }

    @Override // f.d.a.o.n.b0.k
    public String f(Bitmap bitmap) {
        return h(f.d.a.u.i.f(bitmap), bitmap.getConfig());
    }

    public final void g(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> i2 = i(bitmap.getConfig());
        Integer num2 = (Integer) i2.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                i2.remove(num);
                return;
            } else {
                i2.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + f(bitmap) + ", this: " + this);
    }

    public final NavigableMap<Integer, Integer> i(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f3601c.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f3601c.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("SizeConfigStrategy{groupedMap=");
        o.append(this.b);
        o.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f3601c.entrySet()) {
            o.append(entry.getKey());
            o.append('[');
            o.append(entry.getValue());
            o.append("], ");
        }
        if (!this.f3601c.isEmpty()) {
            o.replace(o.length() - 2, o.length(), "");
        }
        o.append(")}");
        return o.toString();
    }
}
