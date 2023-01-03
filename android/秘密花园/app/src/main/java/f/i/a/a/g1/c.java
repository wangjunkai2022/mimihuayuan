package f.i.a.a.g1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import f.i.a.a.m1.h0;

/* compiled from: RequirementsWatcher.java */
/* loaded from: classes.dex */
public final class c {
    public final Context a;
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final b f4719c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f4720d = new Handler(h0.D());

    /* renamed from: e  reason: collision with root package name */
    public C0066c f4721e;

    /* renamed from: f  reason: collision with root package name */
    public int f4722f;

    /* renamed from: g  reason: collision with root package name */
    public b f4723g;

    /* compiled from: RequirementsWatcher.java */
    @RequiresApi(api = 21)
    /* loaded from: classes.dex */
    public final class b extends ConnectivityManager.NetworkCallback {
        public b(a aVar) {
        }

        public /* synthetic */ void a() {
            c cVar = c.this;
            if (cVar.f4723g != null) {
                c.a(cVar);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            c.this.f4720d.post(new a(this));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            c.this.f4720d.post(new a(this));
        }
    }

    /* compiled from: RequirementsWatcher.java */
    /* renamed from: f.i.a.a.g1.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0066c extends BroadcastReceiver {
        public C0066c(a aVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                c cVar = c.this;
                int a = cVar.f4719c.a(cVar.a);
                if (cVar.f4722f != a) {
                    cVar.f4722f = a;
                    cVar.b.a(cVar, a);
                }
            }
        }
    }

    /* compiled from: RequirementsWatcher.java */
    /* loaded from: classes.dex */
    public interface d {
        void a(c cVar, int i2);
    }

    public c(Context context, d dVar, b bVar) {
        this.a = context.getApplicationContext();
        this.b = dVar;
        this.f4719c = bVar;
    }

    public static void a(c cVar) {
        int a2 = cVar.f4719c.a(cVar.a);
        if (cVar.f4722f != a2) {
            cVar.f4722f = a2;
            cVar.b.a(cVar, a2);
        }
    }
}
