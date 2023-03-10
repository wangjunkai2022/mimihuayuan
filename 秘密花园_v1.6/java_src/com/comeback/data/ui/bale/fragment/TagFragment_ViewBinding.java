package com.comeback.data.ui.bale.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.ui.bale.TagSearchActivity;
import com.comeback.data.ui.bale.adapter.TagAdapter;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class TagFragment_ViewBinding implements Unbinder {
    public TagFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f311c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ TagFragment f312c;

        public a(TagFragment_ViewBinding tagFragment_ViewBinding, TagFragment tagFragment) {
            this.f312c = tagFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            TagFragment tagFragment = this.f312c;
            if (tagFragment != null) {
                if (TagAdapter.f279e.size() == 0) {
                    h.p1(e.a("F4rM04LzsNX4z9LH/43O1Q=="));
                    return;
                }
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < TagAdapter.f279e.size(); i2++) {
                    sb.append(TagAdapter.f279e.valueAt(i2));
                    sb.append(e.a("Gw=="));
                }
                TagSearchActivity.t(tagFragment.getContext(), sb.substring(0, sb.length() - 1));
                return;
            }
            throw null;
        }
    }

    @UiThread
    public TagFragment_ViewBinding(TagFragment tagFragment, View view) {
        this.b = tagFragment;
        tagFragment.rvType = (RecyclerView) c.c(view, R.id.rv_type, e.a("UQsGCA9THkEFMk0XHU0="), RecyclerView.class);
        tagFragment.rvTags = (RecyclerView) c.c(view, R.id.rv_tags, e.a("UQsGCA9THkEFMlUAC00="), RecyclerView.class);
        tagFragment.tvSelectCount = (TextView) c.c(view, R.id.tv_select_count, e.a("UQsGCA9THkcFNVELHQkXKFgXDRBM"), TextView.class);
        View b = c.b(view, R.id.tv_confirm, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f311c = b;
        b.setOnClickListener(new a(this, tagFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        TagFragment tagFragment = this.b;
        if (tagFragment != null) {
            this.b = null;
            tagFragment.rvType = null;
            tagFragment.rvTags = null;
            tagFragment.tvSelectCount = null;
            this.f311c.setOnClickListener(null);
            this.f311c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
