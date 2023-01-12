package f.d.a.o.p.h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.h;
import f.d.a.o.n.w;

/* compiled from: GifDrawableBytesTranscoder.java */
/* loaded from: classes.dex */
public class d implements e<GifDrawable, byte[]> {
    @Override // f.d.a.o.p.h.e
    @Nullable
    public w<byte[]> a(@NonNull w<GifDrawable> wVar, @NonNull h hVar) {
        return new f.d.a.o.p.d.b(f.d.a.u.a.c(wVar.get().a.a.a.g().asReadOnlyBuffer()));
    }
}
