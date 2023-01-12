package com.comeback.data.ui.km2;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.km2.VideoPlayActivity;
import com.comeback.data.ui.km2.bean.Km2Video;
import com.comeback.secret.garden.R;
import f.d.a.c;
import f.d.a.o.p.c.k;
import f.e.a.e;
import f.e.a.j.y.i;
import f.e.a.j.y.j.a;
import f.e.a.j.y.j.d;
import f.e.a.k.g;
import g.a.x;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VideoPlayActivity extends BaseActivity {

    /* renamed from: f  reason: collision with root package name */
    public static boolean f1437f = false;
    public Km2Video b;

    /* renamed from: c  reason: collision with root package name */
    public ExoUserPlayer f1438c;

    /* renamed from: d  reason: collision with root package name */
    public String f1439d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1440e;
    @BindView
    public LinearLayout llHead;
    @BindView
    public ImageView videoDetailAvatarCiv;
    @BindView
    public TextView videoDetailCancelTv;
    @BindView
    public ImageView videoDetailColletionImg;
    @BindView
    public RelativeLayout videoDetailHeadRl;
    @BindView
    public LinearLayout videoDetailLikeAvatarRootLl;
    @BindView
    public ImageView videoDetailLikeImg;
    @BindView
    public ImageView videoDetailShareImg;
    @BindView
    public VideoPlayerView videoView;

    public static void m(Context context, boolean z, String str) {
        Intent intent = new Intent(context, VideoPlayActivity.class);
        intent.putExtra(e.a("WwMNABgQWEMW"), z);
        intent.putExtra(e.a("XgY="), str);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1439d = intent.getStringExtra(e.a("XgY="));
        this.f1440e = intent.getBooleanExtra(e.a("WwMNABgQWEMW"), false);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_km_play;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        this.f1438c = h.h(this, this.videoView);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.videoView.getLayoutParams();
        if (this.f1440e) {
            this.videoDetailCancelTv.setCompoundDrawablesWithIntrinsicBounds(R.mipmap.return_re, 0, 0, 0);
            this.videoDetailLikeImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_like_normal));
            this.videoDetailShareImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_share_normal));
            this.videoDetailColletionImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_colletion));
            layoutParams.height = h.M(250.0f);
            j(-1);
        } else {
            this.videoDetailCancelTv.setCompoundDrawablesWithIntrinsicBounds(R.mipmap.return_re_white, 0, 0, 0);
            this.videoDetailLikeImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_like_white));
            this.videoDetailShareImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_share_white));
            this.videoDetailColletionImg.setImageDrawable(getResources().getDrawable(R.mipmap.ic_km_colletion_white));
            layoutParams.height = App.f102c;
            this.videoDetailHeadRl.setBackgroundColor(-16777216);
            g();
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.llHead.getLayoutParams();
            layoutParams2.topMargin = h.M(25.0f);
            this.llHead.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.videoDetailLikeAvatarRootLl.getLayoutParams();
            layoutParams3.topMargin = h.M(25.0f);
            this.videoDetailLikeAvatarRootLl.setLayoutParams(layoutParams3);
        }
        this.videoView.setLayoutParams(layoutParams);
        this.f1438c.setPlayUri(e.a("XxYXFFFcFkQEERoFGQMHHhkBDAk="));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("QQsHAQQsUFc="), this.f1439d);
        } catch (Exception unused) {
        }
        k(d.a().e(a.c(jSONObject)), new i(this));
        c.d(App.b).n(Integer.valueOf((int) R.mipmap.ic_km)).a(f.d.a.s.e.B(new k())).G(this.videoDetailAvatarCiv);
        if (g.d(x.P()).b(Km2Video.class, e.a("XgY="), this.f1439d)) {
            this.videoDetailLikeImg.setImageResource(R.mipmap.ic_km_like_selected);
            this.videoDetailLikeImg.setClickable(false);
            this.videoDetailLikeImg.setEnabled(false);
        }
        this.videoDetailLikeImg.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.y.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayActivity.this.l(view);
            }
        });
    }

    public /* synthetic */ void l(View view) {
        if (this.b == null) {
            return;
        }
        this.videoDetailLikeImg.setImageResource(R.mipmap.ic_km_like_selected);
        this.videoDetailLikeImg.setClickable(false);
        this.videoDetailLikeImg.setEnabled(false);
        h.n1(e.a("0fbVjPz837vjg774"));
        g.d(this.b.getRealm()).a(this.b);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1438c.onBackPressed()) {
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1438c.onConfigurationChanged(configuration);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f1438c.onDestroy();
        super.onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1438c.onPause();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1438c.onResume();
    }
}
