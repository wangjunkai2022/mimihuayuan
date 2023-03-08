package com.comeback.data.ui.sex8.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.ui.sex8.bean.YXNovelDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class YXDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public YXDetailActivity f1962c;

    /* renamed from: d  reason: collision with root package name */
    public View f1963d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXDetailActivity f1964c;

        public a(YXDetailActivity_ViewBinding yXDetailActivity_ViewBinding, YXDetailActivity yXDetailActivity) {
            this.f1964c = yXDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            YXDetailActivity yXDetailActivity = this.f1964c;
            YXNovelDetail.DataBean dataBean = yXDetailActivity.f1960d;
            if (dataBean != null) {
                YXAuthorDetailActivity.t(yXDetailActivity, dataBean.getHost());
            }
        }
    }

    @UiThread
    public YXDetailActivity_ViewBinding(YXDetailActivity yXDetailActivity, View view) {
        super(yXDetailActivity, view);
        this.f1962c = yXDetailActivity;
        yXDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        yXDetailActivity.ivPic = (ImageView) c.c(view, R.id.iv_pic, e.a("UQsGCA9THloFNl0EXw=="), ImageView.class);
        yXDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        yXDetailActivity.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
        yXDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        LinearLayout linearLayout = (LinearLayout) c.c(view, R.id.ll_root, e.a("UQsGCA9THl8fNFsIDE0="), LinearLayout.class);
        yXDetailActivity.ivHeader = (RatioImageView) c.c(view, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTA=="), RatioImageView.class);
        yXDetailActivity.tvAuthor2 = (TextView) c.c(view, R.id.tv_author2, e.a("UQsGCA9THkcFJ0ETEAURWRA="), TextView.class);
        yXDetailActivity.tvDetail2 = (TextView) c.c(view, R.id.tv_detail2, e.a("UQsGCA9THkcFIlETGQMPWRA="), TextView.class);
        View b = c.b(view, R.id.rl_author, e.a("UQsGCA9THkEfJ0ETEAURTBcDDQBLHlxHGwlQR18ZCwRAIxYQAxxLFA=="));
        RelativeLayout relativeLayout = (RelativeLayout) c.a(b, R.id.rl_author, e.a("UQsGCA9THkEfJ0ETEAURTA=="), RelativeLayout.class);
        this.f1963d = b;
        b.setOnClickListener(new a(this, yXDetailActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        YXDetailActivity yXDetailActivity = this.f1962c;
        if (yXDetailActivity != null) {
            this.f1962c = null;
            yXDetailActivity.tvTitle = null;
            yXDetailActivity.ivPic = null;
            yXDetailActivity.tvName = null;
            yXDetailActivity.tvAuthor = null;
            yXDetailActivity.tvDetail = null;
            yXDetailActivity.ivHeader = null;
            yXDetailActivity.tvAuthor2 = null;
            yXDetailActivity.tvDetail2 = null;
            this.f1963d.setOnClickListener(null);
            this.f1963d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
