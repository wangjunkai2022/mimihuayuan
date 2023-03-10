package com.comeback.data.ui.tv91;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.tv91.adapter.VideoList2Adapter;
import com.comeback.data.ui.tv91.bean.TiktopParam;
import com.comeback.data.ui.tv91.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.o0.i.b;
/* loaded from: classes.dex */
public class VideoBrowseActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f2182d;

    /* renamed from: e  reason: collision with root package name */
    public int f2183e;

    /* renamed from: f  reason: collision with root package name */
    public String f2184f;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2185f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2185f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2185f == 1) {
                VideoBrowseActivity.this.f114c.c();
            }
            VideoBrowseActivity.this.f114c.a(videoList.getMessage().getMovies());
        }
    }

    public static void t(Context context, String str, int i2) {
        Intent intent = new Intent(context, VideoBrowseActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("RBYCFiIX"), i2);
        context.startActivity(intent);
    }

    public static void u(Context context, String str, int i2) {
        Intent intent = new Intent(context, VideoBrowseActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("XgY="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2184f = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f2182d = intent.getIntExtra(e.a("XgY="), -1);
        this.f2183e = intent.getIntExtra(e.a("RBYCFiIX"), -1);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_tv91_video_browse;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFMmVS5CfA==")));
        super.e();
        this.tvTitle.setText(this.f2184f);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoList2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        m.e<VideoList> e2;
        if (this.f2182d != -1) {
            e2 = b.a().c(TiktopParam.buildTagListParams(this.f2182d, i2));
        } else {
            e2 = b.a().e(TiktopParam.buildStarListParams(this.f2183e, i2));
        }
        k(e2, new a(i2));
    }
}
