package io.realm.internal.android;

import android.os.Handler;
import android.os.Looper;
import g.a.f1.a;
import io.realm.internal.Keep;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
@Keep
/* loaded from: classes.dex */
public class AndroidRealmNotifier extends RealmNotifier {
    public Handler handler;

    public AndroidRealmNotifier(OsSharedRealm osSharedRealm, a aVar) {
        super(osSharedRealm);
        if (((g.a.f1.s.a) aVar).a()) {
            this.handler = new Handler(Looper.myLooper());
        } else {
            this.handler = null;
        }
    }

    @Override // io.realm.internal.RealmNotifier
    public boolean post(Runnable runnable) {
        Handler handler = this.handler;
        return handler != null && handler.post(runnable);
    }
}
