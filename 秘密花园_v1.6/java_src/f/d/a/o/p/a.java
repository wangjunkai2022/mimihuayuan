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
    public class C0047a implements ImageDecoder.OnHeaderDecodedListener {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f3750c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ f.d.a.o.b f3751d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ m f3752e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ i f3753f;

        /* compiled from: ImageDecoderResourceDecoder.java */
        /* renamed from: f.d.a.o.p.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0048a implements ImageDecoder.OnPartialImageListener {
            public C0048a(C0047a c0047a) {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C0047a(int i2, int i3, boolean z, f.d.a.o.b bVar, m mVar, i iVar) {
            this.a = i2;
            this.b = i3;
            this.f3750c = z;
            this.f3751d = bVar;
            this.f3752e = mVar;
            this.f3753f = iVar;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (a.this.a.b(this.a, this.b, this.f3750c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f3751d == f.d.a.o.b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0048a(this));
            Size size = imageInfo.getSize();
            int i2 = this.a;
            if (i2 == Integer.MIN_VALUE) {
                i2 = size.getWidth();
            }
            int i3 = this.b;
            if (i3 == Integer.MIN_VALUE) {
                i3 = size.getHeight();
            }
            float b = this.f3752e.b(size.getWidth(), size.getHeight(), i2, i3);
            int round = Math.round(size.getWidth() * b);
            int round2 = Math.round(b * size.getHeight());
            if (Log.isLoggable("ImageDecoder", 2)) {
                size.getWidth();
                size.getHeight();
            }
            imageDecoder.setTargetSize(round, round2);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 < 28) {
                if (i4 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                    return;
                }
                return;
            }
            if (this.f3753f == i.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                z = true;
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull ImageDecoder.Source source, @NonNull h hVar) throws IOException {
        return true;
    }

    @Override // f.d.a.o.j
    @Nullable
    /* renamed from: c */
    public final w<T> a(@NonNull ImageDecoder.Source source, int i2, int i3, @NonNull h hVar) throws IOException {
        C0047a c0047a = new C0047a(i2, i3, hVar.c(n.f3769i) != null && ((Boolean) hVar.c(n.f3769i)).booleanValue(), (f.d.a.o.b) hVar.c(n.f3766f), (m) hVar.c(m.f3763f), (i) hVar.c(n.f3767g));
        d dVar = (d) this;
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, c0047a);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new e(decodeBitmap, dVar.b);
    }
}
