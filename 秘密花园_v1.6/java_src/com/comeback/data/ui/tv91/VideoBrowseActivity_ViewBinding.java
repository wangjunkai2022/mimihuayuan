package com.comeback.data.ui.tv91;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoBrowseActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoBrowseActivity f2187c;

    /* renamed from: d  reason: collision with root package name */
    public View f2188d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoBrowseActivity f2189c;

        public a(VideoBrowseActivity_ViewBinding videoBrowseActivity_ViewBinding, VideoBrowseActivity videoBrowseActivity) {
            this.f2189c = videoBrowseActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            VideoBrowseActivity videoBrowseActivity = this.f2189c;
            if (videoBrowseActivity == null) {
                throw null;
            }
            SearchActivity.w(videoBrowseActivity);
        }
    }

    @UiThread
    public VideoBrowseActivity_ViewBinding(VideoBrowseActivity videoBrowseActivity, View view) {
        super(videoBrowseActivity, view);
        this.f2187c = videoBrowseActivity;
        videoBrowseActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2188d = b;
        b.setOnClickListener(new a(this, videoBrowseActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoBrowseActivity videoBrowseActivity = this.f2187c;
        if (videoBrowseActivity != null) {
            this.f2187c = null;
            videoBrowseActivity.tvTitle = null;
            this.f2188d.setOnClickListener(null);
            this.f2188d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
