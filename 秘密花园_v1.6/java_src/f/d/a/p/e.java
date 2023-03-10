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
import f.d.a.j;
import f.d.a.p.c;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: DefaultConnectivityMonitor.java */
/* loaded from: classes.dex */
public final class e implements c {
    public final Context a;
    public final c.a b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3815c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3816d;

    /* renamed from: e  reason: collision with root package name */
    public final BroadcastReceiver f3817e = new a();

    /* compiled from: DefaultConnectivityMonitor.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            e eVar = e.this;
            boolean z = eVar.f3815c;
            eVar.f3815c = eVar.j(context);
            if (z != e.this.f3815c) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    boolean z2 = e.this.f3815c;
                }
                e eVar2 = e.this;
                c.a aVar = eVar2.b;
                boolean z3 = eVar2.f3815c;
                j.b bVar = (j.b) aVar;
                if (bVar == null) {
                    throw null;
                }
                if (z3) {
                    synchronized (f.d.a.j.this) {
                        n nVar = bVar.a;
                        Iterator it = ((ArrayList) f.d.a.u.i.g(nVar.a)).iterator();
                        while (it.hasNext()) {
                            f.d.a.s.b bVar2 = (f.d.a.s.b) it.next();
                            if (!bVar2.d() && !bVar2.a()) {
                                bVar2.clear();
                                if (!nVar.f3826c) {
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
        if (this.f3816d) {
            this.a.unregisterReceiver(this.f3817e);
            this.f3816d = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    public boolean j(@NonNull Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        c.a.a.b.g.h.s(connectivityManager, "Argument must not be null");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
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
        if (this.f3816d) {
            return;
        }
        this.f3815c = j(this.a);
        try {
            this.a.registerReceiver(this.f3817e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f3816d = true;
        } catch (SecurityException unused) {
            Log.isLoggable("ConnectivityMonitor", 5);
        }
    }
}
