package f.d.a.p;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.manager.SupportRequestManagerFragment;
import f.d.a.c;
import f.d.a.j;
import f.d.a.u.i;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestManagerRetriever.java */
/* loaded from: classes.dex */
public class l implements Handler.Callback {

    /* renamed from: f  reason: collision with root package name */
    public static final b f3743f = new a();
    public volatile j a;
    @VisibleForTesting
    public final Map<FragmentManager, k> b = new HashMap();
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    public final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f3744c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Handler f3745d;

    /* renamed from: e  reason: collision with root package name */
    public final b f3746e;

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    public class a implements b {
        @Override // f.d.a.p.l.b
        @NonNull
        public j a(@NonNull c cVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context) {
            return new j(cVar, hVar, mVar, context);
        }
    }

    /* compiled from: RequestManagerRetriever.java */
    /* loaded from: classes.dex */
    public interface b {
        @NonNull
        j a(@NonNull c cVar, @NonNull h hVar, @NonNull m mVar, @NonNull Context context);
    }

    public l(@Nullable b bVar) {
        new ArrayMap();
        new ArrayMap();
        new Bundle();
        this.f3746e = bVar == null ? f3743f : bVar;
        this.f3745d = new Handler(Looper.getMainLooper(), this);
    }

    @Nullable
    public static Activity a(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static boolean e(Context context) {
        Activity a2 = a(context);
        return a2 == null || !a2.isFinishing();
    }

    @NonNull
    public j b(@NonNull Context context) {
        if (context != null) {
            if (i.l() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    if (i.k()) {
                        return b(fragmentActivity.getApplicationContext());
                    }
                    if (!fragmentActivity.isDestroyed()) {
                        SupportRequestManagerFragment d2 = d(fragmentActivity.getSupportFragmentManager(), null, e(fragmentActivity));
                        j jVar = d2.f100e;
                        if (jVar != null) {
                            return jVar;
                        }
                        j a2 = this.f3746e.a(c.b(fragmentActivity), d2.a, d2.b, fragmentActivity);
                        d2.f100e = a2;
                        return a2;
                    }
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                } else if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    if (i.k()) {
                        return b(activity.getApplicationContext());
                    }
                    if (!activity.isDestroyed()) {
                        k c2 = c(activity.getFragmentManager(), null, e(activity));
                        j jVar2 = c2.f3740d;
                        if (jVar2 != null) {
                            return jVar2;
                        }
                        j a3 = this.f3746e.a(c.b(activity), c2.a, c2.b, activity);
                        c2.f3740d = a3;
                        return a3;
                    }
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                } else if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return b(contextWrapper.getBaseContext());
                    }
                }
            }
            if (this.a == null) {
                synchronized (this) {
                    if (this.a == null) {
                        this.a = this.f3746e.a(c.b(context.getApplicationContext()), new b(), new g(), context.getApplicationContext());
                    }
                }
            }
            return this.a;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @NonNull
    public final k c(@NonNull FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        k kVar = (k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kVar == null && (kVar = this.b.get(fragmentManager)) == null) {
            kVar = new k();
            kVar.f3742f = fragment;
            if (!(fragment == null || fragment.getActivity() == null)) {
                kVar.a(fragment.getActivity());
            }
            if (z) {
                kVar.a.d();
            }
            this.b.put(fragmentManager, kVar);
            fragmentManager.beginTransaction().add(kVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f3745d.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return kVar;
    }

    @NonNull
    public final SupportRequestManagerFragment d(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable androidx.fragment.app.Fragment fragment, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment == null && (supportRequestManagerFragment = this.f3744c.get(fragmentManager)) == null) {
            supportRequestManagerFragment = new SupportRequestManagerFragment();
            supportRequestManagerFragment.f101f = fragment;
            if (!(fragment == null || fragment.getContext() == null)) {
                androidx.fragment.app.Fragment fragment2 = fragment;
                while (fragment2.getParentFragment() != null) {
                    fragment2 = fragment2.getParentFragment();
                }
                androidx.fragment.app.FragmentManager fragmentManager2 = fragment2.getFragmentManager();
                if (fragmentManager2 != null) {
                    supportRequestManagerFragment.b(fragment.getContext(), fragmentManager2);
                }
            }
            if (z) {
                supportRequestManagerFragment.a.d();
            }
            this.f3744c.put(fragmentManager, supportRequestManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestManagerFragment, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f3745d.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return supportRequestManagerFragment;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Object obj2;
        Object obj3;
        int i2 = message.what;
        Object obj4 = null;
        boolean z = true;
        if (i2 == 1) {
            obj3 = (FragmentManager) message.obj;
            obj2 = this.b.remove(obj3);
        } else if (i2 != 2) {
            z = false;
            obj = null;
            if (z && obj4 == null && Log.isLoggable("RMRetriever", 5)) {
                String str = "Failed to remove expected request manager fragment, manager: " + obj;
            }
            return z;
        } else {
            obj3 = (androidx.fragment.app.FragmentManager) message.obj;
            obj2 = this.f3744c.remove(obj3);
        }
        obj4 = obj2;
        obj = obj3;
        if (z) {
            String str = "Failed to remove expected request manager fragment, manager: " + obj;
        }
        return z;
    }
}
