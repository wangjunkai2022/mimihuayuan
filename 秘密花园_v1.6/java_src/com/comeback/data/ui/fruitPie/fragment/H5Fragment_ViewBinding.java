package com.comeback.data.ui.fruitPie.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.fruitPie.ActorDetailActivity;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class H5Fragment_ViewBinding implements Unbinder {
    public H5Fragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f751c;

    /* renamed from: d  reason: collision with root package name */
    public View f752d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ H5Fragment f753c;

        public a(H5Fragment_ViewBinding h5Fragment_ViewBinding, H5Fragment h5Fragment) {
            this.f753c = h5Fragment;
        }

        @Override // d.c.b
        public void a(View view) {
            H5Fragment h5Fragment = this.f753c;
            if (TextUtils.isEmpty(h5Fragment.f745i)) {
                return;
            }
            PlayActivity.l(h5Fragment.getContext(), h5Fragment.f745i);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ H5Fragment f754c;

        public b(H5Fragment_ViewBinding h5Fragment_ViewBinding, H5Fragment h5Fragment) {
            this.f754c = h5Fragment;
        }

        @Override // d.c.b
        public void a(View view) {
            H5Fragment h5Fragment = this.f754c;
            if (h5Fragment.f748l == -1) {
                return;
            }
            ActorDetailActivity.t(h5Fragment.getContext(), h5Fragment.f748l, e.a(h5Fragment.f747k ? "Bg==" : "BQ=="), h5Fragment.f749m);
        }
    }

    @UiThread
    public H5Fragment_ViewBinding(H5Fragment h5Fragment, View view) {
        this.b = h5Fragment;
        h5Fragment.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        h5Fragment.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
        h5Fragment.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        h5Fragment.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
        h5Fragment.tvDate = (TextView) c.c(view, R.id.tv_date, e.a("UQsGCA9THkcFIlUTHU0="), TextView.class);
        h5Fragment.webView1 = (WebView) c.c(view, R.id.web_view1, e.a("UQsGCA9THkQWBGIOHR1STA=="), WebView.class);
        h5Fragment.webView2 = (WebView) c.c(view, R.id.web_view2, e.a("UQsGCA9THkQWBGIOHR1RTA=="), WebView.class);
        View b2 = c.b(view, R.id.fl_play, e.a("UQsGCA9THlUfNlgGAU1DClkGQwkOB1FcF0YTFxQLGkw="));
        h5Fragment.flPlay = (FrameLayout) c.a(b2, R.id.fl_play, e.a("UQsGCA9THlUfNlgGAU0="), FrameLayout.class);
        this.f751c = b2;
        b2.setOnClickListener(new a(this, h5Fragment));
        View b3 = c.b(view, R.id.ll_author, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f752d = b3;
        b3.setOnClickListener(new b(this, h5Fragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        H5Fragment h5Fragment = this.b;
        if (h5Fragment != null) {
            this.b = null;
            h5Fragment.tvTitle = null;
            h5Fragment.ivHead = null;
            h5Fragment.ivCover = null;
            h5Fragment.tvAuthor = null;
            h5Fragment.tvDate = null;
            h5Fragment.webView1 = null;
            h5Fragment.webView2 = null;
            h5Fragment.flPlay = null;
            this.f751c.setOnClickListener(null);
            this.f751c = null;
            this.f752d.setOnClickListener(null);
            this.f752d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
