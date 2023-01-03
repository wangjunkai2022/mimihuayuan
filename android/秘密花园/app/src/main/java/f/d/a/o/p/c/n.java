package f.d.a.o.p.c;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import com.bumptech.glide.load.ImageHeaderParser;
import f.d.a.o.g;
import f.d.a.o.i;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
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
    public static final g<f.d.a.o.b> f3687f = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", f.d.a.o.b.f3468c);

    /* renamed from: g  reason: collision with root package name */
    public static final g<i> f3688g = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", i.SRGB);

    /* renamed from: h  reason: collision with root package name */
    public static final g<Boolean> f3689h = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);

    /* renamed from: i  reason: collision with root package name */
    public static final g<Boolean> f3690i = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);

    /* renamed from: j  reason: collision with root package name */
    public static final Set<String> f3691j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: k  reason: collision with root package name */
    public static final b f3692k = new a();

    /* renamed from: l  reason: collision with root package name */
    public static final Set<ImageHeaderParser.ImageType> f3693l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: m  reason: collision with root package name */
    public static final Queue<BitmapFactory.Options> f3694m = f.d.a.u.i.d(0);
    public final d a;
    public final DisplayMetrics b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.n.b0.b f3695c;

    /* renamed from: d  reason: collision with root package name */
    public final List<ImageHeaderParser> f3696d;

    /* renamed from: e  reason: collision with root package name */
    public final s f3697e = s.a();

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public class a implements b {
        @Override // f.d.a.o.p.c.n.b
        public void a(d dVar, Bitmap bitmap) {
        }

        @Override // f.d.a.o.p.c.n.b
        public void b() {
        }
    }

    /* compiled from: Downsampler.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(d dVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        g<m> gVar = m.f3684f;
    }

    public n(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, d dVar, f.d.a.o.n.b0.b bVar) {
        this.f3696d = list;
        h.s(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        h.s(dVar, "Argument must not be null");
        this.a = dVar;
        h.s(bVar, "Argument must not be null");
        this.f3695c = bVar;
    }

    public static Bitmap c(InputStream inputStream, BitmapFactory.Options options, b bVar, d dVar) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(10485760);
        } else {
            bVar.b();
        }
        try {
            int i2 = options.outWidth;
            int i3 = options.outHeight;
            String str = options.outMimeType;
            z.f3711e.lock();
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                z.f3711e.unlock();
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
                        z.f3711e.unlock();
                        return c2;
                    } catch (IOException unused) {
                        throw h2;
                    }
                } else {
                    throw h2;
                }
            }
        } catch (Throwable th) {
            z.f3711e.unlock();
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

    public static int[] f(InputStream inputStream, BitmapFactory.Options options, b bVar, d dVar) throws IOException {
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

    public w<Bitmap> a(InputStream inputStream, int i2, int i3, f.d.a.o.h hVar, b bVar) throws IOException {
        BitmapFactory.Options poll;
        h.o(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f3695c.f(65536, byte[].class);
        synchronized (n.class) {
            try {
                synchronized (f3694m) {
                    poll = f3694m.poll();
                }
                if (poll == null) {
                    poll = new BitmapFactory.Options();
                    i(poll);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        poll.inTempStorage = bArr;
        f.d.a.o.b bVar2 = (f.d.a.o.b) hVar.c(f3687f);
        i iVar = (i) hVar.c(f3688g);
        try {
            e c2 = e.c(b(inputStream, poll, (m) hVar.c(m.f3684f), bVar2, iVar, hVar.c(f3690i) != null && ((Boolean) hVar.c(f3690i)).booleanValue(), i2, i3, ((Boolean) hVar.c(f3689h)).booleanValue(), bVar), this.a);
            i(poll);
            synchronized (f3694m) {
                try {
                    f3694m.offer(poll);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            this.f3695c.e(bArr);
            return c2;
        } catch (Throwable th3) {
            i(poll);
            synchronized (f3694m) {
                try {
                    f3694m.offer(poll);
                    this.f3695c.e(bArr);
                    throw th3;
                } catch (Throwable th4) {
                    throw th4;
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:101:0x0258  */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0260  */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x0265  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x02ad A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x02b7  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x02c2  */
    /* JADX WARNING: Removed duplicated region for block: B:133:0x02ca  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x02f3 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x02fb  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x0305  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0308  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x0316  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0337  */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x0353  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x0367  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x01b1  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01b5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.Bitmap b(java.io.InputStream r27, android.graphics.BitmapFactory.Options r28, f.d.a.o.p.c.m r29, f.d.a.o.b r30, f.d.a.o.i r31, boolean r32, int r33, int r34, boolean r35, f.d.a.o.p.c.n.b r36) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 1096
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.p.c.n.b(java.io.InputStream, android.graphics.BitmapFactory$Options, f.d.a.o.p.c.m, f.d.a.o.b, f.d.a.o.i, boolean, int, int, boolean, f.d.a.o.p.c.n$b):android.graphics.Bitmap");
    }
}
