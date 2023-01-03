package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import f.d.a.c;
import f.d.a.j;
import f.d.a.p.l;
import f.d.a.p.m;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class SupportRequestManagerFragment extends Fragment {
    public final f.d.a.p.a a;
    public final m b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final Set<SupportRequestManagerFragment> f98c = new HashSet();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public SupportRequestManagerFragment f99d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public j f100e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Fragment f101f;

    /* loaded from: classes.dex */
    public class a implements m {
        public a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        f.d.a.p.a aVar = new f.d.a.p.a();
        this.a = aVar;
    }

    @Nullable
    public final Fragment a() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f101f;
    }

    public final void b(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        c();
        l lVar = c.b(context).f3361f;
        if (lVar != null) {
            SupportRequestManagerFragment d2 = lVar.d(fragmentManager, null, l.e(context));
            this.f99d = d2;
            if (!equals(d2)) {
                this.f99d.f98c.add(this);
                return;
            }
            return;
        }
        throw null;
    }

    public final void c() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f99d;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.f98c.remove(this);
            this.f99d = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment fragment = this;
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager == null) {
            Log.isLoggable("SupportRMFragment", 5);
            return;
        }
        try {
            b(getContext(), fragmentManager);
        } catch (IllegalStateException unused) {
            Log.isLoggable("SupportRMFragment", 5);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.a.c();
        c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f101f = null;
        c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.a.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.a.e();
    }

    @Override // androidx.fragment.app.Fragment, java.lang.Object
    public String toString() {
        return super.toString() + "{parent=" + a() + "}";
    }
}
