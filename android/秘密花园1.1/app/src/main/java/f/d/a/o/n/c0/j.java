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
    public final Context f3528c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3529d;

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: i  reason: collision with root package name */
        public static final int f3530i;
        public final Context a;
        public ActivityManager b;

        /* renamed from: c  reason: collision with root package name */
        public c f3531c;

        /* renamed from: e  reason: collision with root package name */
        public float f3533e;

        /* renamed from: d  reason: collision with root package name */
        public float f3532d = 2.0f;

        /* renamed from: f  reason: collision with root package name */
        public float f3534f = 0.4f;

        /* renamed from: g  reason: collision with root package name */
        public float f3535g = 0.33f;

        /* renamed from: h  reason: collision with root package name */
        public int f3536h = 4194304;

        static {
            f3530i = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f3533e = f3530i;
            this.a = context;
            this.b = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            this.f3531c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !this.b.isLowRamDevice()) {
                return;
            }
            this.f3533e = 0.0f;
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
        this.f3528c = aVar.a;
        if (aVar.b.isLowRamDevice()) {
            i2 = aVar.f3536h / 2;
        } else {
            i2 = aVar.f3536h;
        }
        this.f3529d = i2;
        ActivityManager activityManager = aVar.b;
        float f2 = aVar.f3534f;
        int round = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (activityManager.isLowRamDevice() ? aVar.f3535g : f2));
        DisplayMetrics displayMetrics = ((b) aVar.f3531c).a;
        float f3 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(aVar.f3533e * f3);
        int round3 = Math.round(f3 * aVar.f3532d);
        int i3 = round - this.f3529d;
        if (round3 + round2 <= i3) {
            this.b = round3;
            this.a = round2;
        } else {
            float f4 = i3;
            float f5 = aVar.f3533e;
            float f6 = aVar.f3532d;
            float f7 = f4 / (f5 + f6);
            this.b = Math.round(f6 * f7);
            this.a = Math.round(f7 * aVar.f3533e);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            a(this.b);
            a(this.a);
            a(this.f3529d);
            a(round);
            aVar.b.getMemoryClass();
            aVar.b.isLowRamDevice();
        }
    }

    public final String a(int i2) {
        return Formatter.formatFileSize(this.f3528c, i2);
    }
}
