package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: BitmapEncoder.java */
/* loaded from: classes.dex */
public class c implements f.d.a.o.k<Bitmap> {
    public static final f.d.a.o.g<Integer> b = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: c  reason: collision with root package name */
    public static final f.d.a.o.g<Bitmap.CompressFormat> f3680c = new f.d.a.o.g<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, f.d.a.o.g.f3472e);
    @Nullable
    public final f.d.a.o.n.b0.b a;

    public c(@NonNull f.d.a.o.n.b0.b bVar) {
        this.a = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
        if (r6 == null) goto L22;
     */
    @Override // f.d.a.o.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
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
            if (r1 == 0) goto L15
            goto L20
        L15:
            boolean r1 = r9.hasAlpha()
            if (r1 == 0) goto L1e
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG
            goto L20
        L1e:
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
        L20:
            r9.getWidth()
            r9.getHeight()
            long r2 = f.d.a.u.e.b()     // Catch: java.lang.Throwable -> Lb3
            f.d.a.o.g<java.lang.Integer> r4 = f.d.a.o.p.c.c.b     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r4 = r11.c(r4)     // Catch: java.lang.Throwable -> Lb3
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> Lb3
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            f.d.a.o.n.b0.b r10 = r8.a     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            if (r10 == 0) goto L4a
            f.d.a.o.m.c r10 = new f.d.a.o.m.c     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            f.d.a.o.n.b0.b r6 = r8.a     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r10.<init>(r7, r6)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r6 = r10
            goto L4b
        L4a:
            r6 = r7
        L4b:
            r9.compress(r1, r4, r6)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r6.close()     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r5 = 1
            goto L5f
        L53:
            r9 = move-exception
            goto Lad
        L55:
            r6 = r7
            goto L59
        L57:
            r9 = move-exception
            goto Lac
        L59:
            r10 = 3
            android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> L57
            if (r6 == 0) goto L62
        L5f:
            r6.close()     // Catch: java.io.IOException -> L62 java.lang.Throwable -> Lb3
        L62:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> Lb3
            if (r10 == 0) goto Lab
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            r10.<init>()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = "Compressed with type: "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            r10.append(r1)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = " of size "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            int r0 = f.d.a.u.i.f(r9)     // Catch: java.lang.Throwable -> Lb3
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = " in "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            double r0 = f.d.a.u.e.a(r2)     // Catch: java.lang.Throwable -> Lb3
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = ", options format: "
            r10.append(r0)     // Catch: java.lang.Throwable -> Lb3
            f.d.a.o.g<android.graphics.Bitmap$CompressFormat> r0 = f.d.a.o.p.c.c.f3680c     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r11 = r11.c(r0)     // Catch: java.lang.Throwable -> Lb3
            r10.append(r11)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch: java.lang.Throwable -> Lb3
            boolean r9 = r9.hasAlpha()     // Catch: java.lang.Throwable -> Lb3
            r10.append(r9)     // Catch: java.lang.Throwable -> Lb3
            r10.toString()     // Catch: java.lang.Throwable -> Lb3
        Lab:
            return r5
        Lac:
            r7 = r6
        Lad:
            if (r7 == 0) goto Lb2
            r7.close()     // Catch: java.io.IOException -> Lb2 java.lang.Throwable -> Lb3
        Lb2:
            throw r9     // Catch: java.lang.Throwable -> Lb3
        Lb3:
            r9 = move-exception
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.p.c.c.a(java.lang.Object, java.io.File, f.d.a.o.h):boolean");
    }

    @Override // f.d.a.o.k
    @NonNull
    public f.d.a.o.c b(@NonNull f.d.a.o.h hVar) {
        return f.d.a.o.c.TRANSFORMED;
    }
}
