package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.comeback.data.net.glide.OkHttpAppGlideModule;
import f.d.a.c;
import f.d.a.d;
import f.d.a.h;
import f.d.a.n.a.a;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    public final OkHttpAppGlideModule appGlideModule = new OkHttpAppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // f.d.a.q.a, f.d.a.q.b
    public void applyOptions(@NonNull Context context, @NonNull d dVar) {
        this.appGlideModule.applyOptions(context, dVar);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    public Set<Class<?>> getExcludedModuleClasses() {
        return Collections.emptySet();
    }

    @Override // f.d.a.q.a
    public boolean isManifestParsingEnabled() {
        return this.appGlideModule.isManifestParsingEnabled();
    }

    @Override // f.d.a.q.d, f.d.a.q.f
    public void registerComponents(@NonNull Context context, @NonNull c cVar, @NonNull h hVar) {
        new a().registerComponents(context, cVar, hVar);
        this.appGlideModule.registerComponents(context, cVar, hVar);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    @NonNull
    public f.d.a.a getRequestManagerFactory() {
        return new f.d.a.a();
    }
}
