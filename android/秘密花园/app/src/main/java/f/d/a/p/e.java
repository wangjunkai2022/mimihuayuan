package f.d.a.p;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.j;
import f.d.a.p.c;
import f.d.a.s.b;
import f.d.a.u.i;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: DefaultConnectivityMonitor.java */
/* loaded from: classes.dex */
public final class e implements c {
    public final Context a;
    public final c.a b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3736c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3737d;

    /* renamed from: e  reason: collision with root package name */
    public final BroadcastReceiver f3738e = new a();

    /* compiled from: DefaultConnectivityMonitor.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            e eVar = e.this;
            boolean z = eVar.f3736c;
            eVar.f3736c = eVar.j(context);
            if (z != e.this.f3736c) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    boolean z2 = e.this.f3736c;
                }
                e eVar2 = e.this;
                c.a aVar = eVar2.b;
                boolean z3 = eVar2.f3736c;
                j.b bVar = (j.b) aVar;
                if (bVar == null) {
                    throw null;
                } else if (z3) {
                    synchronized (j.this) {
                        n nVar = bVar.a;
                        Iterator it = ((ArrayList) i.g(nVar.a)).iterator();
                        while (it.hasNext()) {
                            b bVar2 = (b) it.next();
                            if (!bVar2.d() && !bVar2.a()) {
                                bVar2.clear();
                                if (!nVar.f3747c) {
                                    bVar2.c();
                                } else {
                                    nVar.b.add(bVar2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public e(@NonNull Context context, @NonNull c.a aVar) {
        this.a = context.getApplicationContext();
        this.b = aVar;
    }

    @Override // f.d.a.p.i
    public void d() {
        if (this.f3737d) {
            this.a.unregisterReceiver(this.f3738e);
            this.f3737d = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    public boolean j(@NonNull Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        h.s(connectivityManager, "Argument must not be null");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            return true;
        } catch (RuntimeException unused) {
            Log.isLoggable("ConnectivityMonitor", 5);
            return true;
        }
    }

    @Override // f.d.a.p.i
    public void onDestroy() {
    }

    @Override // f.d.a.p.i
    public void onStart() {
        if (!this.f3737d) {
            this.f3736c = j(this.a);
            try {
                this.a.registerReceiver(this.f3738e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f3737d = true;
            } catch (SecurityException unused) {
                Log.isLoggable("ConnectivityMonitor", 5);
            }
        }
    }
}
