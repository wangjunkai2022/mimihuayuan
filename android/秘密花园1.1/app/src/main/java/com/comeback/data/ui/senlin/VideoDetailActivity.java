package com.comeback.data.ui.senlin;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.senlin.adapter.ChapterAdapter;
import com.comeback.data.ui.senlin.bean.SenlinDetail;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.i0.c;
import f.e.a.j.i0.f.b;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoDetailActivity extends BaseRefreshActivity implements ChapterAdapter.a {

    /* renamed from: d  reason: collision with root package name */
    public SenlinDetail.ListEntity f1823d;

    /* renamed from: e  reason: collision with root package name */
    public String f1824e;
    @BindView
    public ImageView mIvBg;
    @BindView
    public TextView mTvDetail;
    @BindView
    public TextView mTvTitle;

    public static void r(VideoDetailActivity videoDetailActivity, SenlinDetail senlinDetail) {
        if (videoDetailActivity != null) {
            if (senlinDetail.getList() != null && senlinDetail.getList().size() != 0) {
                SmartRefreshLayout smartRefreshLayout = videoDetailActivity.refreshLayout;
                smartRefreshLayout.A = false;
                smartRefreshLayout.t(false);
                SenlinDetail.ListEntity listEntity = senlinDetail.getList().get(0);
                videoDetailActivity.f1823d = listEntity;
                videoDetailActivity.mTvTitle.setText(listEntity.getVod_name());
                videoDetailActivity.mTvDetail.setText(videoDetailActivity.f1823d.getVod_content());
                h.u0(videoDetailActivity.f1823d.getVod_pic(), videoDetailActivity.mIvBg);
                videoDetailActivity.f114c.a(videoDetailActivity.f1823d.getVod_play_urlList());
                return;
            }
            h.n1(e.a("39fngtHj3YvRg5DW"));
            return;
        }
        throw null;
    }

    public static void s(Context context, String str) {
        Intent intent = new Intent(context, VideoDetailActivity.class);
        a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1824e = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_senlin_video;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        i();
        BaseActivity.f(this, true);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ChapterAdapter(this, this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.i0.f.a a = b.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(a.i("UwcXBQIf", hashMap, e.a("VgE="), "XgYQ"), this.f1824e);
        k(a.a(hashMap), new c(this));
    }
}
