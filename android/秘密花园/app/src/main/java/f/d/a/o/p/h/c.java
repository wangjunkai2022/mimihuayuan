package f.d.a.o.p.h;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.h;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import f.d.a.o.p.c.e;

/* compiled from: DrawableBytesTranscoder.java */
/* loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {
    public final d a;
    public final e<Bitmap, byte[]> b;

    /* renamed from: c  reason: collision with root package name */
    public final e<GifDrawable, byte[]> f3733c;

    public c(@NonNull d dVar, @NonNull e<Bitmap, byte[]> eVar, @NonNull e<GifDrawable, byte[]> eVar2) {
        this.a = dVar;
        this.b = eVar;
        this.f3733c = eVar2;
    }

    @Override // f.d.a.o.p.h.e
    @Nullable
    public w<byte[]> a(@NonNull w<Drawable> wVar, @NonNull h hVar) {
        Drawable drawable = wVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.b.a(e.c(((BitmapDrawable) drawable).getBitmap(), this.a), hVar);
        }
        if (drawable instanceof GifDrawable) {
            return this.f3733c.a(wVar, hVar);
        }
        return null;
    }
}
