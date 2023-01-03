package f.d.a.o.p.g;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: StreamGifDecoder.java */
/* loaded from: classes.dex */
public class i implements j<InputStream, GifDrawable> {
    public final List<ImageHeaderParser> a;
    public final j<ByteBuffer, GifDrawable> b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.n.b0.b f3732c;

    public i(List<ImageHeaderParser> list, j<ByteBuffer, GifDrawable> jVar, f.d.a.o.n.b0.b bVar) {
        this.a = list;
        this.b = jVar;
        this.f3732c = bVar;
    }

    @Override // f.d.a.o.j
    public w<GifDrawable> a(@NonNull InputStream inputStream, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        byte[] bArr;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream2.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            Log.isLoggable("StreamGifDecoder", 5);
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        return this.b.a(ByteBuffer.wrap(bArr), i2, i3, hVar);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull InputStream inputStream, @NonNull f.d.a.o.h hVar) throws IOException {
        return !((Boolean) hVar.c(h.b)).booleanValue() && c.a.a.b.g.h.X(this.a, inputStream, this.f3732c) == ImageHeaderParser.ImageType.GIF;
    }
}
