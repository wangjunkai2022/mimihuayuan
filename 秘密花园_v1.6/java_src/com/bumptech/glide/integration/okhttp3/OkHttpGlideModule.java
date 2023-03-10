package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import androidx.annotation.NonNull;
import f.d.a.d;
import f.d.a.h;
import f.d.a.n.a.c;
import f.d.a.o.o.g;
import f.d.a.q.c;
import java.io.InputStream;
@Deprecated
/* loaded from: classes.dex */
public class OkHttpGlideModule implements c {
    @Override // f.d.a.q.b
    public void applyOptions(@NonNull Context context, @NonNull d dVar) {
    }

    @Override // f.d.a.q.f
    public void registerComponents(Context context, f.d.a.c cVar, h hVar) {
        hVar.i(g.class, InputStream.class, new c.a());
    }
}
