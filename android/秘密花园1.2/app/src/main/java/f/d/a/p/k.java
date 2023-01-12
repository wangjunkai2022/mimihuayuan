package f.d.a.p;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashSet;
import java.util.Set;

/* compiled from: RequestManagerFragment.java */
@Deprecated
/* loaded from: classes.dex */
public class k extends Fragment {
    public final f.d.a.p.a a;
    public final m b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<k> f3814c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public f.d.a.j f3815d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public k f3816e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Fragment f3817f;

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
        f.d.a.p.a aVar = new f.d.a.p.a();
        this.b = new a();
        this.f3814c = new HashSet();
        this.a = aVar;
    }

    public final void a(@NonNull Activity activity) {
        b();
        l lVar = f.d.a.c.b(activity).f3436f;
        if (lVar != null) {
            k c2 = lVar.c(activity.getFragmentManager(), null, l.e(activity));
            this.f3816e = c2;
            if (equals(c2)) {
                return;
            }
            this.f3816e.f3814c.add(this);
            return;
        }
        throw null;
    }

    public final void b() {
        k kVar = this.f3816e;
        if (kVar != null) {
            kVar.f3814c.remove(this);
            this.f3816e = null;
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

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f3817f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
