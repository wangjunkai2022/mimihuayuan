package com.comeback.data.ui.fengliu;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.fengliu.bean.MMInfo;
import com.comeback.data.ui.fengliu.bean.MMInfo2;
import com.comeback.secret.garden.R;
import f.e.a.e;
import m.j;

/* loaded from: classes.dex */
public class InfoActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public MMInfo2 f677c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvAddress;
    @BindView
    public TextView tvAge;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvBeauty;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvPhone;
    @BindView
    public TextView tvPrice;
    @BindView
    public TextView tvQq;
    @BindView
    public TextView tvServer;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTitle;
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
        }

        @Override // m.j
        public void f(MMInfo mMInfo) {
            MMInfo mMInfo2 = mMInfo;
            InfoActivity infoActivity = InfoActivity.this;
            infoActivity.tvTitle.setText(mMInfo2.getTitle());
            TextView textView = infoActivity.tvState;
            textView.setText(mMInfo2.getPublished_at() + e.a("F0IfREs=") + mMInfo2.getView_count() + e.a("0c7Cgt780ZT7"));
            TextView textView2 = infoActivity.tvArea;
            StringBuilder sb = new StringBuilder();
            sb.append(e.a("0evjgdrt3K/Dg7jdl9b5"));
            sb.append(mMInfo2.getCityCodeReadable());
            textView2.setText(sb.toString());
            TextView textView3 = infoActivity.tvAge;
            textView3.setText(e.a("0tLsgczj3IrHj4rjl9b5") + mMInfo2.getGirl_age());
            TextView textView4 = infoActivity.tvBeauty;
            textView4.setText(e.a("0tLsgczj0JHvg7Tbl9b5") + mMInfo2.getGirl_beauty());
            TextView textView5 = infoActivity.tvPrice;
            textView5.setText(e.a("0dTrjN/K34PHg43Ul9b5") + mMInfo2.getConsume_lv());
            TextView textView6 = infoActivity.tvServer;
            textView6.setText(e.a("0f7ugeHS0JLKga/Jl9b5") + mMInfo2.getServe_list());
            TextView textView7 = infoActivity.tvQq;
            textView7.setText(e.a("ZjOM2PE=") + mMInfo2.getQq());
            TextView textView8 = infoActivity.tvWechat;
            textView8.setText(e.a("0tzNgNTS1o/p") + mMInfo2.getWechat());
            TextView textView9 = infoActivity.tvPhone;
            textView9.setText(e.a("0PbWjMTu1o/p") + mMInfo2.getPhone());
            TextView textView10 = infoActivity.tvAddress;
            textView10.setText(e.a("0v7Tgfbz1o/p") + mMInfo2.getAddress());
            PicAdapter picAdapter = new PicAdapter(infoActivity, false);
            infoActivity.rvList.setLayoutManager(new LinearLayoutManager(infoActivity));
            infoActivity.rvList.setAdapter(picAdapter);
            picAdapter.a(mMInfo2.getPictureHrefs());
            infoActivity.tvIntro.setText(mMInfo2.getDesc());
        }
    }

    public static void l(Context context, MMInfo2 mMInfo2) {
        Intent intent = new Intent(context, InfoActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), mMInfo2);
        context.startActivity(intent);
    }

    public static void m(Context context, String str) {
        Intent intent = new Intent(context, InfoActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
        this.f677c = (MMInfo2) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fengliu_info;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        MMInfo2 mMInfo2 = this.f677c;
        if (mMInfo2 != null) {
            this.tvTitle.setText(mMInfo2.getTitle());
            this.tvState.setText(this.f677c.getPublished_at());
            TextView textView = this.tvArea;
            textView.setText(e.a("0evjgdrt3K/Dg7jdl9b5") + this.f677c.getCityCodeReadable());
            TextView textView2 = this.tvAge;
            textView2.setText(e.a("0tLsgczj3IrHj4rjl9b5") + this.f677c.getGirl_age());
            TextView textView3 = this.tvBeauty;
            textView3.setText(e.a("0tLsgczj0JHvg7Tbl9b5") + this.f677c.getGirl_beauty());
            TextView textView4 = this.tvPrice;
            textView4.setText(e.a("0dTrjN/K34PHg43Ul9b5") + this.f677c.getConsume_lv());
            TextView textView5 = this.tvServer;
            textView5.setText(e.a("0f7ugeHS0JLKga/Jl9b5") + this.f677c.getServe_list());
            TextView textView6 = this.tvQq;
            textView6.setText(e.a("ZjOM2PE=") + this.f677c.getQq());
            TextView textView7 = this.tvWechat;
            textView7.setText(e.a("0tzNgNTS1o/p") + this.f677c.getWechat());
            TextView textView8 = this.tvPhone;
            textView8.setText(e.a("0PbWjMTu1o/p") + this.f677c.getPhone());
            TextView textView9 = this.tvAddress;
            textView9.setText(e.a("0v7Tgfbz1o/p") + this.f677c.getAddress());
            PicAdapter picAdapter = new PicAdapter(this, this.f677c.isChaImage());
            this.rvList.setLayoutManager(new LinearLayoutManager(this));
            this.rvList.setAdapter(picAdapter);
            picAdapter.a(this.f677c.getPictureList());
            this.tvIntro.setText(this.f677c.getDesc());
            return;
        }
        k(f.e.a.j.j.m.e.a().a(this.b), new a());
    }
}
