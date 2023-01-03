package f.d.a.u;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.o.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* compiled from: Util.java */
/* loaded from: classes.dex */
public final class i {
    public static final char[] a = "0123456789abcdef".toCharArray();
    public static final char[] b = new char[64];

    /* compiled from: Util.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
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
                a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a() {
        if (!l()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        } else if (obj instanceof l) {
            return ((l) obj).a(obj2);
        } else {
            return obj.equals(obj2);
        }
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @NonNull
    public static <T> Queue<T> d(int i2) {
        return new ArrayDeque(i2);
    }

    public static int e(int i2, int i3, @Nullable Bitmap.Config config) {
        int i4 = i2 * i3;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i5 = a.a[config.ordinal()];
        int i6 = 4;
        if (i5 == 1) {
            i6 = 1;
        } else if (i5 == 2 || i5 == 3) {
            i6 = 2;
        } else if (i5 == 4) {
            i6 = 8;
        }
        return i4 * i6;
    }

    @TargetApi(19)
    public static int f(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    @NonNull
    public static <T> List<T> g(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static int h(float f2) {
        return Float.floatToIntBits(f2) + 527;
    }

    public static int i(int i2) {
        return 527 + i2;
    }

    public static int j(@Nullable Object obj, int i2) {
        return (i2 * 31) + (obj == null ? 0 : obj.hashCode());
    }

    public static boolean k() {
        return !l();
    }

    public static boolean l() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean m(int i2, int i3) {
        if (i2 > 0 || i2 == Integer.MIN_VALUE) {
            if (i3 > 0 || i3 == Integer.MIN_VALUE) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    public static String n(@NonNull byte[] bArr) {
        String str;
        synchronized (b) {
            char[] cArr = b;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                int i3 = bArr[i2] & 255;
                int i4 = i2 * 2;
                char[] cArr2 = a;
                cArr[i4] = cArr2[i3 >>> 4];
                cArr[i4 + 1] = cArr2[i3 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }
}
