package f.d.a.o.p.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import java.util.Queue;

/* compiled from: ByteBufferGifDecoder.java */
/* loaded from: classes.dex */
public class a implements j<ByteBuffer, GifDrawable> {

    /* renamed from: f  reason: collision with root package name */
    public static final C0050a f3787f = new C0050a();

    /* renamed from: g  reason: collision with root package name */
    public static final b f3788g = new b();
    public final Context a;
    public final List<ImageHeaderParser> b;

    /* renamed from: c  reason: collision with root package name */
    public final b f3789c;

    /* renamed from: d  reason: collision with root package name */
    public final C0050a f3790d;

    /* renamed from: e  reason: collision with root package name */
    public final f.d.a.o.p.g.b f3791e;

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* renamed from: f.d.a.o.p.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0050a {
    }

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {
        public final Queue<f.d.a.m.d> a = f.d.a.u.i.d(0);

        public synchronized void a(f.d.a.m.d dVar) {
            dVar.b = null;
            dVar.f3522c = null;
            this.a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, f.d.a.o.n.b0.d dVar, f.d.a.o.n.b0.b bVar) {
        b bVar2 = f3788g;
        C0050a c0050a = f3787f;
        this.a = context.getApplicationContext();
        this.b = list;
        this.f3790d = c0050a;
        this.f3791e = new f.d.a.o.p.g.b(dVar, bVar);
        this.f3789c = bVar2;
    }

    @Override // f.d.a.o.j
    public w<GifDrawable> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        f.d.a.m.d dVar;
        ByteBuffer byteBuffer2 = byteBuffer;
        b bVar = this.f3789c;
        synchronized (bVar) {
            f.d.a.m.d poll = bVar.a.poll();
            if (poll == null) {
                poll = new f.d.a.m.d();
            }
            dVar = poll;
            dVar.b = null;
            Arrays.fill(dVar.a, (byte) 0);
            dVar.f3522c = new f.d.a.m.c();
            dVar.f3523d = 0;
            ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            dVar.b = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            dVar.b.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            return c(byteBuffer2, i2, i3, dVar, hVar);
        } finally {
            this.f3789c.a(dVar);
        }
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull f.d.a.o.h hVar) throws IOException {
        ImageHeaderParser.ImageType imageType;
        ByteBuffer byteBuffer2 = byteBuffer;
        if (((Boolean) hVar.c(h.b)).booleanValue()) {
            return false;
        }
        List<ImageHeaderParser> list = this.b;
        if (byteBuffer2 == null) {
            imageType = ImageHeaderParser.ImageType.UNKNOWN;
        } else {
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    ImageHeaderParser.ImageType a = list.get(i2).a(byteBuffer2);
                    if (a != ImageHeaderParser.ImageType.UNKNOWN) {
                        imageType = a;
                        break;
                    }
                    i2++;
                } else {
                    imageType = ImageHeaderParser.ImageType.UNKNOWN;
                    break;
                }
            }
        }
        return imageType == ImageHeaderParser.ImageType.GIF;
    }

    @Nullable
    public final d c(ByteBuffer byteBuffer, int i2, int i3, f.d.a.m.d dVar, f.d.a.o.h hVar) {
        Bitmap.Config config;
        long b2 = f.d.a.u.e.b();
        try {
            f.d.a.m.c b3 = dVar.b();
            if (b3.f3511c > 0 && b3.b == 0) {
                if (hVar.c(h.a) == f.d.a.o.b.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int min = Math.min(b3.f3515g / i3, b3.f3514f / i2);
                int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
                Log.isLoggable("BufferGifDecoder", 2);
                C0050a c0050a = this.f3790d;
                f.d.a.o.p.g.b bVar = this.f3791e;
                if (c0050a != null) {
                    f.d.a.m.e eVar = new f.d.a.m.e(bVar, b3, byteBuffer, max);
                    eVar.j(config);
                    eVar.f3532k = (eVar.f3532k + 1) % eVar.f3533l.f3511c;
                    Bitmap b4 = eVar.b();
                    if (b4 == null) {
                        return null;
                    }
                    d dVar2 = new d(new GifDrawable(this.a, eVar, (f.d.a.o.p.b) f.d.a.o.p.b.b, i2, i3, b4));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        f.d.a.u.e.a(b2);
                    }
                    return dVar2;
                }
                throw null;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                f.d.a.u.e.a(b2);
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                f.d.a.u.e.a(b2);
            }
        }
    }
}
