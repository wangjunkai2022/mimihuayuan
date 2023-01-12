package f.d.a.o.p.c;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* compiled from: Downsampler.java */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: f  reason: collision with root package name */
    public static final f.d.a.o.g<f.d.a.o.b> f3762f = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", f.d.a.o.b.f3543c);

    /* renamed from: g  reason: collision with root package name */
    public static final f.d.a.o.g<f.d.a.o.i> f3763g = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", f.d.a.o.i.SRGB);

    /* renamed from: h  reason: collision with root package name */
    public static final f.d.a.o.g<Boolean> f3764h;

    /* renamed from: i  reason: collision with root package name */
    public static final f.d.a.o.g<Boolean> f3765i;

    /* renamed from: j  reason: collision with root package name */
    public static final Set<String> f3766j;

    /* renamed from: k  reason: collision with root package name */
    public static final b f3767k;

    /* renamed from: l  reason: collision with root package name */
    public static final Set<ImageHeaderParser.ImageType> f3768l;

    /* renamed from: m  reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f3769m;
    public final f.d.a.o.n.b0.d a;
    public final DisplayMetrics b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.n.b0.b f3770c;

    /* renamed from: d  reason: collision with root package name */
    public final List<ImageHeaderParser> f3771d;

    /* renamed from: e  reason: collision with root package name */
    public final s f3772e = s.a();

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public class a implements b {
        @Override // f.d.a.o.p.c.n.b
        public void a(f.d.a.o.n.b0.d dVar, Bitmap bitmap) {
        }

        @Override // f.d.a.o.p.c.n.b
        public void b() {
        }
    }

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(f.d.a.o.n.b0.d dVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        f.d.a.o.g<m> gVar = m.f3759f;
        f3764h = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);
        f3765i = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);
        f3766j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f3767k = new a();
        f3768l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f3769m = f.d.a.u.i.d(0);
    }

    public n(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, f.d.a.o.n.b0.d dVar, f.d.a.o.n.b0.b bVar) {
        this.f3771d = list;
        c.a.a.b.g.h.s(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        c.a.a.b.g.h.s(dVar, "Argument must not be null");
        this.a = dVar;
        c.a.a.b.g.h.s(bVar, "Argument must not be null");
        this.f3770c = bVar;
    }

    public static Bitmap c(InputStream inputStream, BitmapFactory.Options options, b bVar, f.d.a.o.n.b0.d dVar) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(10485760);
        } else {
            bVar.b();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        String str = options.outMimeType;
        z.f3786e.lock();
        try {
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                z.f3786e.unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
                return decodeStream;
            } catch (IllegalArgumentException e2) {
                IOException h2 = h(e2, i2, i3, str, options);
                Log.isLoggable("Downsampler", 3);
                if (options.inBitmap != null) {
                    try {
                        inputStream.reset();
                        dVar.b(options.inBitmap);
                        options.inBitmap = null;
                        Bitmap c2 = c(inputStream, options, bVar, dVar);
                        z.f3786e.unlock();
                        return c2;
                    } catch (IOException unused) {
                        throw h2;
                    }
                }
                throw h2;
            }
        } catch (Throwable th) {
            z.f3786e.unlock();
            throw th;
        }
    }

    @Nullable
    @TargetApi(19)
    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        StringBuilder o = f.b.a.a.a.o(" (");
        o.append(bitmap.getAllocationByteCount());
        o.append(")");
        String sb = o.toString();
        StringBuilder o2 = f.b.a.a.a.o("[");
        o2.append(bitmap.getWidth());
        o2.append("x");
        o2.append(bitmap.getHeight());
        o2.append("] ");
        o2.append(bitmap.getConfig());
        o2.append(sb);
        return o2.toString();
    }

    public static int e(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    public static int[] f(InputStream inputStream, BitmapFactory.Options options, b bVar, f.d.a.o.n.b0.d dVar) throws IOException {
        options.inJustDecodeBounds = true;
        c(inputStream, options, bVar, dVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    public static boolean g(int i2) {
        return i2 == 90 || i2 == 270;
    }

    public static IOException h(IllegalArgumentException illegalArgumentException, int i2, int i3, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + d(options.inBitmap), illegalArgumentException);
    }

    public static void i(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public static int j(double d2) {
        return (int) (d2 + 0.5d);
    }

    public f.d.a.o.n.w<Bitmap> a(InputStream inputStream, int i2, int i3, f.d.a.o.h hVar, b bVar) throws IOException {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        c.a.a.b.g.h.o(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f3770c.f(65536, byte[].class);
        synchronized (n.class) {
            synchronized (f3769m) {
                poll = f3769m.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                i(poll);
            }
            options = poll;
        }
        options.inTempStorage = bArr;
        f.d.a.o.b bVar2 = (f.d.a.o.b) hVar.c(f3762f);
        f.d.a.o.i iVar = (f.d.a.o.i) hVar.c(f3763g);
        try {
            e c2 = e.c(b(inputStream, options, (m) hVar.c(m.f3759f), bVar2, iVar, hVar.c(f3765i) != null && ((Boolean) hVar.c(f3765i)).booleanValue(), i2, i3, ((Boolean) hVar.c(f3764h)).booleanValue(), bVar), this.a);
            i(options);
            synchronized (f3769m) {
                f3769m.offer(options);
            }
            this.f3770c.e(bArr);
            return c2;
        } catch (Throwable th) {
            i(options);
            synchronized (f3769m) {
                f3769m.offer(options);
                this.f3770c.e(bArr);
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap b(java.io.InputStream r27, android.graphics.BitmapFactory.Options r28, f.d.a.o.p.c.m r29, f.d.a.o.b r30, f.d.a.o.i r31, boolean r32, int r33, int r34, boolean r35, f.d.a.o.p.c.n.b r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1096
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.p.c.n.b(java.io.InputStream, android.graphics.BitmapFactory$Options, f.d.a.o.p.c.m, f.d.a.o.b, f.d.a.o.i, boolean, int, int, boolean, f.d.a.o.p.c.n$b):android.graphics.Bitmap");
    }
}
