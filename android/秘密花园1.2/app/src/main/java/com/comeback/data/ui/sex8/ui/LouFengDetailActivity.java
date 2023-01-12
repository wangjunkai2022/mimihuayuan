package com.comeback.data.ui.sex8.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.PicAdapter;
import com.comeback.data.ui.sex8.bean.LouFengDetail;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.k0.a.d;
import f.e.a.j.k0.b.b;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class LouFengDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1953c;
    @BindView
    public ImageView ivHead;
    @BindView
    public RecyclerView rvList;
    @BindView
    public NestedScrollView scrollView;
    @BindView
    public TabLayout tabLayout;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvPhone;
    @BindView
    public TextView tvPrice;
    @BindView
    public TextView tvQq;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvWechat;

    /* loaded from: classes.dex */
    public class a extends j<LouFengDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(LouFengDetail louFengDetail) {
            LouFengDetailActivity louFengDetailActivity = LouFengDetailActivity.this;
            LouFengDetail.DataBean data = louFengDetail.getData();
            louFengDetailActivity.tvArea.setText(data.getLocal());
            louFengDetailActivity.tvTime.setText(data.getUp_date());
            TextView textView = louFengDetailActivity.tvCount;
            textView.setText(data.getServer_num() + e.a("09jZ"));
            louFengDetailActivity.tvPrice.setText(data.getPrice());
            louFengDetailActivity.tvQq.setText(data.getQq());
            louFengDetailActivity.tvWechat.setText(data.getWechat());
            louFengDetailActivity.tvPhone.setText(data.getPhone());
            louFengDetailActivity.tvDetail.setText(data.getVerif_live());
            PicAdapter picAdapter = new PicAdapter(louFengDetailActivity);
            louFengDetailActivity.rvList.setLayoutManager(new LinearLayoutManager(louFengDetailActivity));
            louFengDetailActivity.rvList.setAdapter(picAdapter);
            List<String> picList = data.getPicList();
            picAdapter.a(picList);
            TabLayout.Tab text = louFengDetailActivity.tabLayout.newTab().setText(e.a("09rJgNHJ3YzSgLXI"));
            text.select();
            louFengDetailActivity.tabLayout.addTab(text);
            TabLayout.Tab newTab = louFengDetailActivity.tabLayout.newTab();
            louFengDetailActivity.tabLayout.addTab(newTab.setText(e.a("0OfEg+L0EQ==") + picList.size() + e.a("Hg==")));
            louFengDetailActivity.tabLayout.addOnTabSelectedListener(new b(louFengDetailActivity));
        }
    }

    public static void l(Context context, ImageView imageView, String str, String str2) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, LouFengDetailActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("XgY="), str2);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f1953c = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_loufeng_detail;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        h.z0(this.b, this.ivHead);
        k(f.e.a.j.k0.a.b.a().b(d.a(this.f1953c), System.currentTimeMillis()), new a());
    }
}
