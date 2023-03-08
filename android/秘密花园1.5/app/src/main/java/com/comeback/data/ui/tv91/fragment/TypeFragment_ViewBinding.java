package com.comeback.data.ui.tv91.fragment;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TypeFragment_ViewBinding implements Unbinder {
    public TypeFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f2204c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ TypeFragment f2205c;

        public a(TypeFragment_ViewBinding typeFragment_ViewBinding, TypeFragment typeFragment) {
            this.f2205c = typeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2205c.etSearch.setText("");
        }
    }

    @UiThread
    public TypeFragment_ViewBinding(TypeFragment typeFragment, View view) {
        this.b = typeFragment;
        typeFragment.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        typeFragment.ivCancel = b;
        this.f2204c = b;
        b.setOnClickListener(new a(this, typeFragment));
        typeFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        TypeFragment typeFragment = this.b;
        if (typeFragment != null) {
            this.b = null;
            typeFragment.etSearch = null;
            typeFragment.ivCancel = null;
            typeFragment.rvList = null;
            this.f2204c.setOnClickListener(null);
            this.f2204c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
