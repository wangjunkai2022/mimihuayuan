package com.tencent.smtt.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.tbs.video.interfaces.IUserStateChangedListener;

/* compiled from: TbsVideoPlayer.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: e  reason: collision with root package name */
    public static o f2592e;
    public q a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public f.k.a.a.a.a f2593c;

    /* renamed from: d  reason: collision with root package name */
    public IUserStateChangedListener f2594d;

    public o(Context context) {
        this.a = null;
        this.b = context.getApplicationContext();
        this.a = new q(this.b);
    }

    public static synchronized o a(Context context) {
        o oVar;
        synchronized (o.class) {
            if (f2592e == null) {
                f2592e = new o(context);
            }
            oVar = f2592e;
        }
        return oVar;
    }

    public boolean a(String str, Bundle bundle, f.k.a.a.a.a aVar) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("videoUrl", str);
        }
        if (aVar != null) {
            this.a.a();
            if (!this.a.b()) {
                return false;
            }
            this.f2593c = aVar;
            IUserStateChangedListener iUserStateChangedListener = new IUserStateChangedListener() { // from class: com.tencent.smtt.sdk.o.1
                @Override // com.tencent.tbs.video.interfaces.IUserStateChangedListener
                public void onUserStateChanged() {
                    o.this.a.c();
                }
            };
            this.f2594d = iUserStateChangedListener;
            this.f2593c.a(iUserStateChangedListener);
            bundle.putInt("callMode", 3);
        } else {
            bundle.putInt("callMode", 1);
        }
        this.a.a(bundle, aVar == null ? null : this);
        return true;
    }

    public void a(Activity activity, int i2) {
        this.a.a(activity, i2);
    }

    public boolean a() {
        this.a.a();
        return this.a.b();
    }

    public void a(int i2, int i3, Intent intent) {
        f.k.a.a.a.a aVar = this.f2593c;
        if (aVar != null) {
            aVar.b(i2, i3, intent);
        }
    }
}
