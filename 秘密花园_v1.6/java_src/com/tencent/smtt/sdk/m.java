package com.tencent.smtt.sdk;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import com.tencent.smtt.export.external.DexLoader;
import com.tencent.smtt.sdk.TbsMediaPlayer;
/* compiled from: TbsMediaPlayerWizard.java */
/* loaded from: classes.dex */
public class m {
    public DexLoader a;
    public Object b;

    public m(DexLoader dexLoader, Context context) {
        this.a = null;
        this.b = null;
        this.a = dexLoader;
        this.b = dexLoader.newInstance("com.tencent.tbs.player.TbsMediaPlayerProxy", new Class[]{Context.class}, context);
    }

    public boolean a() {
        return this.b != null;
    }

    public float b() {
        Float f2 = (Float) this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "getVolume", new Class[0], new Object[0]);
        if (f2 != null) {
            return f2.floatValue();
        }
        return 0.0f;
    }

    public void c() {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "pause", new Class[0], new Object[0]);
    }

    public void d() {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "play", new Class[0], new Object[0]);
    }

    public void e() {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "close", new Class[0], new Object[0]);
    }

    public void a(SurfaceTexture surfaceTexture) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "setSurfaceTexture", new Class[]{SurfaceTexture.class}, surfaceTexture);
    }

    public void a(TbsMediaPlayer.TbsMediaPlayerListener tbsMediaPlayerListener) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "setPlayerListener", new Class[]{Object.class}, tbsMediaPlayerListener);
    }

    public void b(int i2) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "audio", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
    }

    public void a(float f2) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "setVolume", new Class[]{Float.TYPE}, Float.valueOf(f2));
    }

    public void a(String str, Bundle bundle) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "startPlay", new Class[]{String.class, Bundle.class}, str, bundle);
    }

    public void a(int i2) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "subtitle", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
    }

    public void a(long j2) {
        this.a.invokeMethod(this.b, "com.tencent.tbs.player.TbsMediaPlayerProxy", "seek", new Class[]{Long.TYPE}, Long.valueOf(j2));
    }
}
