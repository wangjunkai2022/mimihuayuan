package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.export.external.DexLoader;
/* loaded from: classes.dex */
public class TbsMediaFactory {
    public Context a;
    public r b = null;

    /* renamed from: c  reason: collision with root package name */
    public DexLoader f2544c = null;

    public TbsMediaFactory(Context context) {
        this.a = null;
        this.a = context.getApplicationContext();
        a();
    }

    private void a() {
        if (this.a == null) {
            return;
        }
        if (this.b == null) {
            d.a(true).a(this.a, false, false);
            r a = d.a(true).a();
            this.b = a;
            if (a != null) {
                this.f2544c = a.b();
            }
        }
        if (this.b == null || this.f2544c == null) {
            throw new RuntimeException("tbs core dex(s) load failure !!!");
        }
    }

    public TbsMediaPlayer createPlayer() {
        DexLoader dexLoader;
        if (this.b != null && (dexLoader = this.f2544c) != null) {
            return new TbsMediaPlayer(new m(dexLoader, this.a));
        }
        throw new RuntimeException("tbs core dex(s) did not loaded !!!");
    }
}
