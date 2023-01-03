package f.d.a.o.p.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.h;
import f.d.a.o.n.w;
import f.d.a.o.p.d.b;
import f.d.a.u.a;

/* compiled from: GifDrawableBytesTranscoder.java */
/* loaded from: classes.dex */
public class d implements e<GifDrawable, byte[]> {
    @Override // f.d.a.o.p.h.e
    @Nullable
    public w<byte[]> a(@NonNull w<GifDrawable> wVar, @NonNull h hVar) {
        return new b(a.c(wVar.get().a.a.a.g().asReadOnlyBuffer()));
    }
}
