package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.g;
import f.d.a.o.h;
import f.d.a.o.k;
import f.d.a.o.n.b0.b;

/* compiled from: BitmapEncoder.java */
/* loaded from: classes.dex */
public class c implements k<Bitmap> {
    public static final g<Integer> b = g.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: c  reason: collision with root package name */
    public static final g<Bitmap.CompressFormat> f3680c = new g<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, g.f3472e);
    @Nullable
    public final b a;

    public c(@NonNull b bVar) {
        this.a = bVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005d, code lost:
        if (r6 == null) goto L_0x0062;
     */
    @Override // f.d.a.o.d
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(@androidx.annotation.NonNull java.lang.Object r9, @androidx.annotation.NonNull java.io.File r10, @androidx.annotation.NonNull f.d.a.o.h r11) {
        /*
            r8 = this;
            f.d.a.o.n.w r9 = (f.d.a.o.n.w) r9
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            f.d.a.o.g<android.graphics.Bitmap$CompressFormat> r1 = f.d.a.o.p.c.c.f3680c
            java.lang.Object r1 = r11.c(r1)
            android.graphics.Bitmap$CompressFormat r1 = (android.graphics.Bitmap.CompressFormat) r1
            if (r1 == 0) goto L_0x0015
            goto L_0x0020
        L_0x0015:
            boolean r1 = r9.hasAlpha()
            if (r1 == 0) goto L_0x001e
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG
            goto L_0x0020
        L_0x001e:
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
        L_0x0020:
            r9.getWidth()
            r9.getHeight()
            long r2 = f.d.a.u.e.b()     // Catch: all -> 0x00b3
            f.d.a.o.g<java.lang.Integer> r4 = f.d.a.o.p.c.c.b     // Catch: all -> 0x00b3
            java.lang.Object r4 = r11.c(r4)     // Catch: all -> 0x00b3
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: all -> 0x00b3
            int r4 = r4.intValue()     // Catch: all -> 0x00b3
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: IOException -> 0x0059, all -> 0x0057
            r7.<init>(r10)     // Catch: IOException -> 0x0059, all -> 0x0057
            f.d.a.o.n.b0.b r10 = r8.a     // Catch: IOException -> 0x0055, all -> 0x0053
            if (r10 == 0) goto L_0x004a
            f.d.a.o.m.c r10 = new f.d.a.o.m.c     // Catch: IOException -> 0x0055, all -> 0x0053
            f.d.a.o.n.b0.b r6 = r8.a     // Catch: IOException -> 0x0055, all -> 0x0053
            r10.<init>(r7, r6)     // Catch: IOException -> 0x0055, all -> 0x0053
            r6 = r10
            goto L_0x004b
        L_0x004a:
            r6 = r7
        L_0x004b:
            r9.compress(r1, r4, r6)     // Catch: IOException -> 0x0059, all -> 0x0057
            r6.close()     // Catch: IOException -> 0x0059, all -> 0x0057
            r5 = 1
            goto L_0x005f
        L_0x0053:
            r9 = move-exception
            goto L_0x00ad
        L_0x0055:
            r6 = r7
            goto L_0x0059
        L_0x0057:
            r9 = move-exception
            goto L_0x00ac
        L_0x0059:
            r10 = 3
            android.util.Log.isLoggable(r0, r10)     // Catch: all -> 0x0057
            if (r6 == 0) goto L_0x0062
        L_0x005f:
            r6.close()     // Catch: IOException -> 0x0062, all -> 0x00b3
        L_0x0062:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: all -> 0x00b3
            if (r10 == 0) goto L_0x00ab
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: all -> 0x00b3
            r10.<init>()     // Catch: all -> 0x00b3
            java.lang.String r0 = "Compressed with type: "
            r10.append(r0)     // Catch: all -> 0x00b3
            r10.append(r1)     // Catch: all -> 0x00b3
            java.lang.String r0 = " of size "
            r10.append(r0)     // Catch: all -> 0x00b3
            int r0 = f.d.a.u.i.f(r9)     // Catch: all -> 0x00b3
            r10.append(r0)     // Catch: all -> 0x00b3
            java.lang.String r0 = " in "
            r10.append(r0)     // Catch: all -> 0x00b3
            double r0 = f.d.a.u.e.a(r2)     // Catch: all -> 0x00b3
            r10.append(r0)     // Catch: all -> 0x00b3
            java.lang.String r0 = ", options format: "
            r10.append(r0)     // Catch: all -> 0x00b3
            f.d.a.o.g<android.graphics.Bitmap$CompressFormat> r0 = f.d.a.o.p.c.c.f3680c     // Catch: all -> 0x00b3
            java.lang.Object r11 = r11.c(r0)     // Catch: all -> 0x00b3
            r10.append(r11)     // Catch: all -> 0x00b3
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch: all -> 0x00b3
            boolean r9 = r9.hasAlpha()     // Catch: all -> 0x00b3
            r10.append(r9)     // Catch: all -> 0x00b3
            r10.toString()     // Catch: all -> 0x00b3
        L_0x00ab:
            return r5
        L_0x00ac:
            r7 = r6
        L_0x00ad:
            if (r7 == 0) goto L_0x00b2
            r7.close()     // Catch: IOException -> 0x00b2, all -> 0x00b3
        L_0x00b2:
            throw r9     // Catch: all -> 0x00b3
        L_0x00b3:
            r9 = move-exception
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.p.c.c.a(java.lang.Object, java.io.File, f.d.a.o.h):boolean");
    }

    @Override // f.d.a.o.k
    @NonNull
    public f.d.a.o.c b(@NonNull h hVar) {
        return f.d.a.o.c.TRANSFORMED;
    }
}
