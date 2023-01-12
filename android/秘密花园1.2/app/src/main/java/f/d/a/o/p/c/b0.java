package f.d.a.o.p.c;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import f.d.a.o.g;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: VideoDecoder.java */
/* loaded from: classes.dex */
public class b0<T> implements f.d.a.o.j<T, Bitmap> {

    /* renamed from: d  reason: collision with root package name */
    public static final f.d.a.o.g<Long> f3751d = new f.d.a.o.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* renamed from: e  reason: collision with root package name */
    public static final f.d.a.o.g<Integer> f3752e = new f.d.a.o.g<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* renamed from: f  reason: collision with root package name */
    public static final d f3753f = new d();
    public final e<T> a;
    public final f.d.a.o.n.b0.d b;

    /* renamed from: c  reason: collision with root package name */
    public final d f3754c;

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public class a implements g.b<Long> {
        public final ByteBuffer a = ByteBuffer.allocate(8);

        @Override // f.d.a.o.g.b
        public void a(@NonNull byte[] bArr, @NonNull Long l2, @NonNull MessageDigest messageDigest) {
            Long l3 = l2;
            messageDigest.update(bArr);
            synchronized (this.a) {
                this.a.position(0);
                messageDigest.update(this.a.putLong(l3.longValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public class b implements g.b<Integer> {
        public final ByteBuffer a = ByteBuffer.allocate(4);

        @Override // f.d.a.o.g.b
        public void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.a) {
                this.a.position(0);
                messageDigest.update(this.a.putInt(num2.intValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class c implements e<AssetFileDescriptor> {
        public c(a aVar) {
        }

        @Override // f.d.a.o.p.c.b0.e
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class d {
    }

    /* compiled from: VideoDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface e<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class f implements e<ParcelFileDescriptor> {
        @Override // f.d.a.o.p.c.b0.e
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public b0(f.d.a.o.n.b0.d dVar, e<T> eVar) {
        d dVar2 = f3753f;
        this.b = dVar;
        this.a = eVar;
        this.f3754c = dVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap c(android.media.MediaMetadataRetriever r9, long r10, int r12, int r13, int r14, f.d.a.o.p.c.m r15) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 27
            if (r0 < r1) goto L59
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r13 == r0) goto L59
            if (r14 == r0) goto L59
            f.d.a.o.p.c.m r0 = f.d.a.o.p.c.m.f3757d
            if (r15 == r0) goto L59
            r0 = 18
            java.lang.String r0 = r9.extractMetadata(r0)     // Catch: java.lang.Throwable -> L53
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L53
            r1 = 19
            java.lang.String r1 = r9.extractMetadata(r1)     // Catch: java.lang.Throwable -> L53
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L53
            r2 = 24
            java.lang.String r2 = r9.extractMetadata(r2)     // Catch: java.lang.Throwable -> L53
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L53
            r3 = 90
            if (r2 == r3) goto L36
            r3 = 270(0x10e, float:3.78E-43)
            if (r2 != r3) goto L39
        L36:
            r8 = r1
            r1 = r0
            r0 = r8
        L39:
            float r13 = r15.b(r0, r1, r13, r14)     // Catch: java.lang.Throwable -> L53
            float r14 = (float) r0     // Catch: java.lang.Throwable -> L53
            float r14 = r14 * r13
            int r6 = java.lang.Math.round(r14)     // Catch: java.lang.Throwable -> L53
            float r14 = (float) r1     // Catch: java.lang.Throwable -> L53
            float r13 = r13 * r14
            int r7 = java.lang.Math.round(r13)     // Catch: java.lang.Throwable -> L53
            r2 = r9
            r3 = r10
            r5 = r12
            android.graphics.Bitmap r13 = r2.getScaledFrameAtTime(r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L53
            goto L5a
        L53:
            r13 = 3
            java.lang.String r14 = "VideoDecoder"
            android.util.Log.isLoggable(r14, r13)
        L59:
            r13 = 0
        L5a:
            if (r13 != 0) goto L60
            android.graphics.Bitmap r13 = r9.getFrameAtTime(r10, r12)
        L60:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.p.c.b0.c(android.media.MediaMetadataRetriever, long, int, int, int, f.d.a.o.p.c.m):android.graphics.Bitmap");
    }

    @Override // f.d.a.o.j
    public f.d.a.o.n.w<Bitmap> a(@NonNull T t, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        long longValue = ((Long) hVar.c(f3751d)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException(f.b.a.a.a.c("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", longValue));
        }
        Integer num = (Integer) hVar.c(f3752e);
        if (num == null) {
            num = 2;
        }
        m mVar = (m) hVar.c(m.f3759f);
        if (mVar == null) {
            mVar = m.f3758e;
        }
        m mVar2 = mVar;
        if (this.f3754c != null) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    this.a.a(mediaMetadataRetriever, t);
                    Bitmap c2 = c(mediaMetadataRetriever, longValue, num.intValue(), i2, i3, mVar2);
                    mediaMetadataRetriever.release();
                    return f.d.a.o.p.c.e.c(c2, this.b);
                } catch (RuntimeException e2) {
                    throw new IOException(e2);
                }
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        }
        throw null;
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull T t, @NonNull f.d.a.o.h hVar) {
        return true;
    }
}
