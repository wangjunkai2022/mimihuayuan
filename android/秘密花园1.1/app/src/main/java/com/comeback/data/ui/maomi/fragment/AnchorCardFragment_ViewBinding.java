package com.comeback.data.ui.maomi.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.ui.maomi.VoiceAnchorDetailActivity;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class AnchorCardFragment_ViewBinding implements Unbinder {
    public AnchorCardFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f1609c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ AnchorCardFragment f1610c;

        public a(AnchorCardFragment_ViewBinding anchorCardFragment_ViewBinding, AnchorCardFragment anchorCardFragment) {
            this.f1610c = anchorCardFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            AnchorCardFragment anchorCardFragment = this.f1610c;
            VoiceAnchorDetailActivity.n(anchorCardFragment.getContext(), anchorCardFragment.f1608g);
        }
    }

    @UiThread
    public AnchorCardFragment_ViewBinding(AnchorCardFragment anchorCardFragment, View view) {
        this.b = anchorCardFragment;
        View b = c.b(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH01DClkGQwkOB1FcF0YTCBY8Cg5AIQ8NCBhcV1Q="));
        anchorCardFragment.mIvImg = (RatioImageView) c.a(b, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
        this.f1609c = b;
        b.setOnClickListener(new a(this, anchorCardFragment));
        TextView textView = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THl4nEHACDAsKBxA="), TextView.class);
        anchorCardFragment.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AnchorCardFragment anchorCardFragment = this.b;
        if (anchorCardFragment != null) {
            this.b = null;
            anchorCardFragment.mIvImg = null;
            anchorCardFragment.mTvTitle = null;
            this.f1609c.setOnClickListener(null);
            this.f1609c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
