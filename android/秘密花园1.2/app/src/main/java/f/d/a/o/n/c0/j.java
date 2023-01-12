package f.d.a.o.n.c0;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.appcompat.widget.ActivityChooserModel;

/* compiled from: MemorySizeCalculator.java */
/* loaded from: classes.dex */
public final class j {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f3603c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3604d;

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        public static final int f3605i;
        public final Context a;
        public ActivityManager b;

        /* renamed from: c  reason: collision with root package name */
        public c f3606c;

        /* renamed from: e  reason: collision with root package name */
        public float f3608e;

        /* renamed from: d  reason: collision with root package name */
        public float f3607d = 2.0f;

        /* renamed from: f  reason: collision with root package name */
        public float f3609f = 0.4f;

        /* renamed from: g  reason: collision with root package name */
        public float f3610g = 0.33f;

        /* renamed from: h  reason: collision with root package name */
        public int f3611h = 4194304;

        static {
            f3605i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f3608e = f3605i;
            this.a = context;
            this.b = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            this.f3606c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !this.b.isLowRamDevice()) {
                return;
            }
            this.f3608e = 0.0f;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class b implements c {
        public final DisplayMetrics a;

        public b(DisplayMetrics displayMetrics) {
            this.a = displayMetrics;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    public j(a aVar) {
        int i2;
        this.f3603c = aVar.a;
        if (aVar.b.isLowRamDevice()) {
            i2 = aVar.f3611h / 2;
        } else {
            i2 = aVar.f3611h;
        }
        this.f3604d = i2;
        ActivityManager activityManager = aVar.b;
        float f2 = aVar.f3609f;
        int round = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (activityManager.isLowRamDevice() ? aVar.f3610g : f2));
        DisplayMetrics displayMetrics = ((b) aVar.f3606c).a;
        float f3 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(aVar.f3608e * f3);
        int round3 = Math.round(f3 * aVar.f3607d);
        int i3 = round - this.f3604d;
        if (round3 + round2 <= i3) {
            this.b = round3;
            this.a = round2;
        } else {
            float f4 = i3;
            float f5 = aVar.f3608e;
            float f6 = aVar.f3607d;
            float f7 = f4 / (f5 + f6);
            this.b = Math.round(f6 * f7);
            this.a = Math.round(f7 * aVar.f3608e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            a(this.b);
            a(this.a);
            a(this.f3604d);
            a(round);
            aVar.b.getMemoryClass();
            aVar.b.isLowRamDevice();
        }
    }

    public final String a(int i2) {
        return Formatter.formatFileSize(this.f3603c, i2);
    }
}
