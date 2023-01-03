package f.d.a.o.p.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.m.c;
import f.d.a.m.d;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import f.d.a.u.e;
import f.d.a.u.i;
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
    public static final C0043a f3712f = new C0043a();

    /* renamed from: g  reason: collision with root package name */
    public static final b f3713g = new b();
    public final Context a;
    public final List<ImageHeaderParser> b;

    /* renamed from: c  reason: collision with root package name */
    public final b f3714c;

    /* renamed from: d  reason: collision with root package name */
    public final C0043a f3715d;

    /* renamed from: e  reason: collision with root package name */
    public final b f3716e;

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* renamed from: f.d.a.o.p.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0043a {
    }

    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {
        public final Queue<d> a = i.d(0);

        public synchronized void a(d dVar) {
            dVar.b = null;
            dVar.f3447c = null;
            this.a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, f.d.a.o.n.b0.d dVar, f.d.a.o.n.b0.b bVar) {
        b bVar2 = f3713g;
        C0043a aVar = f3712f;
        this.a = context.getApplicationContext();
        this.b = list;
        this.f3715d = aVar;
        this.f3716e = new b(dVar, bVar);
        this.f3714c = bVar2;
    }

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public w<GifDrawable> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull h hVar) throws IOException {
        d poll;
        ByteBuffer byteBuffer2 = byteBuffer;
        b bVar = this.f3714c;
        synchronized (bVar) {
            poll = bVar.a.poll();
            if (poll == null) {
                poll = new d();
            }
            poll.b = null;
            Arrays.fill(poll.a, (byte) 0);
            poll.f3447c = new c();
            poll.f3448d = 0;
            ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
            poll.b = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            poll.b.order(ByteOrder.LITTLE_ENDIAN);
        }
        try {
            return c(byteBuffer2, i2, i3, poll, hVar);
        } finally {
            this.f3714c.a(poll);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull h hVar) throws IOException {
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
                if (i2 >= size) {
                    imageType = ImageHeaderParser.ImageType.UNKNOWN;
                    break;
                }
                ImageHeaderParser.ImageType a = list.get(i2).a(byteBuffer2);
                if (a != ImageHeaderParser.ImageType.UNKNOWN) {
                    imageType = a;
                    break;
                }
                i2++;
            }
        }
        if (imageType == ImageHeaderParser.ImageType.GIF) {
            return true;
        }
        return false;
    }

    @Nullable
    public final d c(ByteBuffer byteBuffer, int i2, int i3, d dVar, h hVar) {
        Bitmap.Config config;
        int i4;
        long b2 = e.b();
        try {
            c b3 = dVar.b();
            if (b3.f3436c > 0 && b3.b == 0) {
                if (hVar.c(h.a) == f.d.a.o.b.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int min = Math.min(b3.f3440g / i3, b3.f3439f / i2);
                if (min == 0) {
                    i4 = 0;
                } else {
                    i4 = Integer.highestOneBit(min);
                }
                int max = Math.max(1, i4);
                Log.isLoggable("BufferGifDecoder", 2);
                C0043a aVar = this.f3715d;
                b bVar = this.f3716e;
                if (aVar != null) {
                    f.d.a.m.e eVar = new f.d.a.m.e(bVar, b3, byteBuffer, max);
                    eVar.j(config);
                    eVar.f3457k = (eVar.f3457k + 1) % eVar.f3458l.f3436c;
                    Bitmap b4 = eVar.b();
                    if (b4 == null) {
                        return null;
                    }
                    d dVar2 = new d(new GifDrawable(this.a, eVar, (f.d.a.o.p.b) f.d.a.o.p.b.b, i2, i3, b4));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        e.a(b2);
                    }
                    return dVar2;
                }
                throw null;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                e.a(b2);
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                e.a(b2);
            }
        }
    }
}
