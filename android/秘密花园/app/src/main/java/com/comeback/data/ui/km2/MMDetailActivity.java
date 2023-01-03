package com.comeback.data.ui.km2;

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
import com.comeback.data.ui.km2.bean.MMInfo;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.j.x.j.d;
import java.util.List;
import m.j;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MMDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1333c;
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
    public class a extends j<MMInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.printStackTrace();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(MMInfo mMInfo) {
            MMDetailActivity mMDetailActivity = MMDetailActivity.this;
            MMInfo.DataEntity.InfoEntity info = mMInfo.getData().getInfo();
            TextView textView = mMDetailActivity.tvArea;
            textView.setText(e.a("0v7TgefJ1o/p") + info.getArea_name());
            try {
                TextView textView2 = mMDetailActivity.tvTime;
                textView2.setText(e.a("0fnXgv3D36TFj6PTl9b5") + h.O0(((long) Integer.valueOf(info.getCreate_at()).intValue()) * 1000));
            } catch (Exception unused) {
            }
            TextView textView3 = mMDetailActivity.tvCount;
            textView3.setText(e.a("0ffTjez81o/p") + info.getFee_num() + e.a("09jZ"));
            TextView textView4 = mMDetailActivity.tvPrice;
            textView4.setText(e.a("09nUgsvP1o/p") + info.getPrice());
            TextView textView5 = mMDetailActivity.tvQq;
            textView5.setText(e.a("RhOM2PE=") + info.getQq());
            TextView textView6 = mMDetailActivity.tvWechat;
            textView6.setText(e.a("0tzNgNTS1o/p") + info.getWechat());
            TextView textView7 = mMDetailActivity.tvPhone;
            textView7.setText(e.a("0evogvfJ1o/p") + info.getPhone());
            mMDetailActivity.tvDetail.setText(info.getContent());
            PicAdapter picAdapter = new PicAdapter(mMDetailActivity);
            mMDetailActivity.rvList.setLayoutManager(new LinearLayoutManager(mMDetailActivity));
            mMDetailActivity.rvList.setAdapter(picAdapter);
            List<String> image = info.getImage();
            picAdapter.a(image);
            TabLayout.Tab text = mMDetailActivity.tabLayout.newTab().setText(e.a("09rJgNHJ3YzSgLXI"));
            text.select();
            mMDetailActivity.tabLayout.addTab(text);
            TabLayout.Tab newTab = mMDetailActivity.tabLayout.newTab();
            mMDetailActivity.tabLayout.addTab(newTab.setText(e.a("0OfEg+L0EQ==") + image.size() + e.a("Hg==")));
            mMDetailActivity.tabLayout.addOnTabSelectedListener(new f.e.a.j.x.h(mMDetailActivity));
        }
    }

    public static void l(Context context, ImageView imageView, String str, String str2) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, MMDetailActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("XgY="), str2);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f1333c = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_km_mm_detail;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        h.z0(this.b, this.ivHead);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("VRAMEAMWVWwaAg=="), this.f1333c);
        } catch (Exception unused) {
        }
        k(d.a().c(f.e.a.j.x.j.a.a(jSONObject)), new a());
    }
}
