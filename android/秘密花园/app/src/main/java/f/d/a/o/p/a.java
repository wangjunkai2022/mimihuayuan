package f.d.a.o.p;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import f.d.a.o.b;
import f.d.a.o.h;
import f.d.a.o.i;
import f.d.a.o.j;
import f.d.a.o.n.w;
import f.d.a.o.p.c.d;
import f.d.a.o.p.c.e;
import f.d.a.o.p.c.m;
import f.d.a.o.p.c.n;
import f.d.a.o.p.c.s;
import java.io.IOException;

/* compiled from: ImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public abstract class a<T> implements j<ImageDecoder.Source, T> {
    public final s a = s.a();

    /* compiled from: ImageDecoderResourceDecoder.java */
    /* renamed from: f.d.a.o.p.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0040a implements ImageDecoder.OnHeaderDecodedListener {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f3671c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ b f3672d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ m f3673e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ i f3674f;

        /* compiled from: ImageDecoderResourceDecoder.java */
        /* renamed from: f.d.a.o.p.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0041a implements ImageDecoder.OnPartialImageListener {
            public C0041a(C0040a aVar) {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C0040a(int i2, int i3, boolean z, b bVar, m mVar, i iVar) {
            this.a = i2;
            this.b = i3;
            this.f3671c = z;
            this.f3672d = bVar;
            this.f3673e = mVar;
            this.f3674f = iVar;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (a.this.a.b(this.a, this.b, this.f3671c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f3672d == b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0041a(this));
            Size size = imageInfo.getSize();
            int i2 = this.a;
            if (i2 == Integer.MIN_VALUE) {
                i2 = size.getWidth();
            }
            int i3 = this.b;
            if (i3 == Integer.MIN_VALUE) {
                i3 = size.getHeight();
            }
            float b = this.f3673e.b(size.getWidth(), size.getHeight(), i2, i3);
            int round = Math.round(((float) size.getWidth()) * b);
            int round2 = Math.round(b * ((float) size.getHeight()));
            if (Log.isLoggable("ImageDecoder", 2)) {
                size.getWidth();
                size.getHeight();
            }
            imageDecoder.setTargetSize(round, round2);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 28) {
                if (this.f3674f == i.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i4 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull ImageDecoder.Source source, @NonNull h hVar) throws IOException {
        return true;
    }

    @Nullable
    /* renamed from: c */
    public final w<T> a(@NonNull ImageDecoder.Source source, int i2, int i3, @NonNull h hVar) throws IOException {
        C0040a aVar = new C0040a(i2, i3, hVar.c(n.f3690i) != null && ((Boolean) hVar.c(n.f3690i)).booleanValue(), (b) hVar.c(n.f3687f), (m) hVar.c(m.f3684f), (i) hVar.c(n.f3688g));
        d dVar = (d) this;
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, aVar);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new e(decodeBitmap, dVar.b);
    }
}
