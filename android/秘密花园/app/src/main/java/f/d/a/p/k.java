package f.d.a.p;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.c;
import f.d.a.j;
import java.util.HashSet;
import java.util.Set;

/* compiled from: RequestManagerFragment.java */
@Deprecated
/* loaded from: classes.dex */
public class k extends Fragment {
    public final a a;
    public final m b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final Set<k> f3739c = new HashSet();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public j f3740d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public k f3741e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Fragment f3742f;

    /* compiled from: RequestManagerFragment.java */
    /* loaded from: classes.dex */
    public class a implements m {
        public a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        a aVar = new a();
        this.a = aVar;
    }

    public final void a(@NonNull Activity activity) {
        b();
        l lVar = c.b(activity).f3361f;
        if (lVar != null) {
            k c2 = lVar.c(activity.getFragmentManager(), null, l.e(activity));
            this.f3741e = c2;
            if (!equals(c2)) {
                this.f3741e.f3739c.add(this);
                return;
            }
            return;
        }
        throw null;
    }

    public final void b() {
        k kVar = this.f3741e;
        if (kVar != null) {
            kVar.f3739c.remove(this);
            this.f3741e = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException unused) {
            Log.isLoggable("RMFragment", 5);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.a.c();
        b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        b();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.a.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.a.e();
    }

    @Override // android.app.Fragment, java.lang.Object
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f3742f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
