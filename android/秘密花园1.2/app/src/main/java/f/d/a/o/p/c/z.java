package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TransformationUtils.java */
/* loaded from: classes.dex */
public final class z {
    public static final Paint a = new Paint(6);
    public static final Paint b = new Paint(7);

    /* renamed from: c  reason: collision with root package name */
    public static final Paint f3784c;

    /* renamed from: d  reason: collision with root package name */
    public static final Set<String> f3785d;

    /* renamed from: e  reason: collision with root package name */
    public static final Lock f3786e;

    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    public static final class a implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j2, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f3785d = hashSet;
        f3786e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new a();
        Paint paint = new Paint(7);
        f3784c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public static void a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        f3786e.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, a);
            canvas.setBitmap(null);
        } finally {
            f3786e.unlock();
        }
    }

    public static Bitmap b(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        float width;
        float height;
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i3) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f2 = 0.0f;
        if (bitmap.getWidth() * i3 > bitmap.getHeight() * i2) {
            width = i3 / bitmap.getHeight();
            f2 = (i2 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i2 / bitmap.getWidth();
            height = (i3 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f2 + 0.5f), (int) (height + 0.5f));
        Bitmap a2 = dVar.a(i2, i3, h(bitmap));
        a2.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, a2, matrix);
        return a2;
    }

    public static Bitmap c(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        if (bitmap.getWidth() <= i2 && bitmap.getHeight() <= i3) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Log.isLoggable("TransformationUtils", 2);
        return e(dVar, bitmap, i2, i3);
    }

    public static Bitmap d(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        int min = Math.min(i2, i3);
        float f2 = min;
        float f3 = f2 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f2 / width, f2 / height);
        float f4 = width * max;
        float f5 = max * height;
        float f6 = (f2 - f4) / 2.0f;
        float f7 = (f2 - f5) / 2.0f;
        RectF rectF = new RectF(f6, f7, f4 + f6, f5 + f7);
        Bitmap f8 = f(dVar, bitmap);
        Bitmap a2 = dVar.a(min, min, g(bitmap));
        a2.setHasAlpha(true);
        f3786e.lock();
        try {
            Canvas canvas = new Canvas(a2);
            canvas.drawCircle(f3, f3, f3, b);
            canvas.drawBitmap(f8, (Rect) null, rectF, f3784c);
            canvas.setBitmap(null);
            f3786e.unlock();
            if (!f8.equals(bitmap)) {
                dVar.b(f8);
            }
            return a2;
        } catch (Throwable th) {
            f3786e.unlock();
            throw th;
        }
    }

    public static Bitmap e(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2, int i3) {
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i3) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        float min = Math.min(i2 / bitmap.getWidth(), i3 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Bitmap a2 = dVar.a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), h(bitmap));
        a2.setHasAlpha(bitmap.hasAlpha());
        if (Log.isLoggable("TransformationUtils", 2)) {
            bitmap.getWidth();
            bitmap.getHeight();
            a2.getWidth();
            a2.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, a2, matrix);
        return a2;
    }

    public static Bitmap f(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap) {
        Bitmap.Config g2 = g(bitmap);
        if (g2.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap a2 = dVar.a(bitmap.getWidth(), bitmap.getHeight(), g2);
        new Canvas(a2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return a2;
    }

    @NonNull
    public static Bitmap.Config g(@NonNull Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.RGBA_F16;
        }
        return Bitmap.Config.ARGB_8888;
    }

    @NonNull
    public static Bitmap.Config h(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    public static Bitmap i(@NonNull f.d.a.o.n.b0.d dVar, @NonNull Bitmap bitmap, int i2) {
        c.a.a.b.g.h.o(i2 > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config g2 = g(bitmap);
        Bitmap f2 = f(dVar, bitmap);
        Bitmap a2 = dVar.a(f2.getWidth(), f2.getHeight(), g2);
        a2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(f2, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, a2.getWidth(), a2.getHeight());
        f3786e.lock();
        try {
            Canvas canvas = new Canvas(a2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f3 = i2;
            canvas.drawRoundRect(rectF, f3, f3, paint);
            canvas.setBitmap(null);
            f3786e.unlock();
            if (!f2.equals(bitmap)) {
                dVar.b(f2);
            }
            return a2;
        } catch (Throwable th) {
            f3786e.unlock();
            throw th;
        }
    }
}
