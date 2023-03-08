package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.slf.adapter.ComicDetailAdapter;
import com.comeback.data.ui.slf.adapter.GuessLikeAdapter;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.data.ui.slf.bean.ComicDetail;
import com.comeback.data.ui.slf.bean.GuessLike;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import java.util.ArrayList;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class ComicDetailActivity extends BaseActivity implements ComicDetailAdapter.a {
    public SLFItemBean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1992c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1993d = false;

    /* renamed from: e  reason: collision with root package name */
    public ComicDetailAdapter f1994e;

    /* renamed from: f  reason: collision with root package name */
    public ComicDetailAdapter f1995f;

    /* renamed from: g  reason: collision with root package name */
    public List<ChapterBean> f1996g;

    /* renamed from: h  reason: collision with root package name */
    public List<ChapterBean> f1997h;
    @BindView
    public ImageView ivCover;
    @BindColor
    public int kmColorAccent;
    @BindView
    public LinearLayout llExpend;
    @BindColor
    public int primary_text;
    @BindView
    public RecyclerView rvLike;
    @BindView
    public RecyclerView rvList;
    @BindView
    public RecyclerView rvList2;
    @BindView
    public TextView tvHot;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvOrder;
    @BindView
    public TextView tvReverse;
    @BindView
    public TextView tvStar;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTag1;
    @BindView
    public TextView tvTag2;
    @BindView
    public TextView tvTag3;
    @BindView
    public TextView tvTag4;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvUpdate;

    /* loaded from: classes.dex */
    public class a extends j<ComicDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ComicDetail comicDetail) {
            List<ChapterBean> chapter = comicDetail.getChapter();
            ComicDetailActivity.l(ComicDetailActivity.this, chapter);
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            comicDetailActivity.f1995f = new ComicDetailAdapter(comicDetailActivity);
            ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
            comicDetailActivity2.rvList.setLayoutManager(new LinearLayoutManager(comicDetailActivity2));
            ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
            comicDetailActivity3.rvList.setAdapter(comicDetailActivity3.f1995f);
            ComicDetailActivity comicDetailActivity4 = ComicDetailActivity.this;
            comicDetailActivity4.f1994e = new ComicDetailAdapter(comicDetailActivity4);
            ComicDetailActivity comicDetailActivity5 = ComicDetailActivity.this;
            comicDetailActivity5.rvList2.setLayoutManager(new LinearLayoutManager(comicDetailActivity5));
            ComicDetailActivity comicDetailActivity6 = ComicDetailActivity.this;
            comicDetailActivity6.rvList2.setAdapter(comicDetailActivity6.f1994e);
            ComicDetailActivity comicDetailActivity7 = ComicDetailActivity.this;
            comicDetailActivity7.f1995f.a(comicDetailActivity7.f1997h);
            ComicDetailAdapter comicDetailAdapter = ComicDetailActivity.this.f1994e;
            comicDetailAdapter.b(chapter, comicDetailAdapter.b.size());
            ComicDetailActivity comicDetailActivity8 = ComicDetailActivity.this;
            comicDetailActivity8.f1995f.f2054d = comicDetailActivity8;
            comicDetailActivity8.f1994e.f2054d = comicDetailActivity8;
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<GuessLike> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(GuessLike guessLike) {
            GuessLikeAdapter guessLikeAdapter = new GuessLikeAdapter(ComicDetailActivity.this);
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            comicDetailActivity.rvLike.setLayoutManager(new LinearLayoutManager(comicDetailActivity, 0, false));
            ComicDetailActivity.this.rvLike.setAdapter(guessLikeAdapter);
            guessLikeAdapter.a(guessLike.getItems());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void l(ComicDetailActivity comicDetailActivity, List list) {
        if (comicDetailActivity != null) {
            comicDetailActivity.f1997h = new ArrayList();
            comicDetailActivity.f1996g = new ArrayList();
            for (int i2 = 0; i2 < list.size() && i2 < 5; i2++) {
                comicDetailActivity.f1997h.add(list.get(i2));
            }
            for (int i3 = 0; i3 < list.size() && i3 < 5; i3++) {
                comicDetailActivity.f1996g.add(list.get((list.size() - i3) - 1));
            }
            return;
        }
        throw null;
    }

    public static void n(Context context, SLFItemBean sLFItemBean) {
        Intent intent = new Intent(context, ComicDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), sLFItemBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (SLFItemBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_comic;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        this.tvTitle.setText(this.b.getName());
        this.tvTag1.setText(this.b.getTagStr());
        this.tvTag2.setVisibility(8);
        this.tvTag3.setVisibility(8);
        this.tvTag4.setText(this.b.getDescription());
        this.tvStar.setVisibility(8);
        this.tvHot.setVisibility(8);
        h.N0(this.b.getImg(), this.ivCover, 20);
        this.tvIntro.setText(this.b.getSummary());
        this.tvUpdate.setVisibility(8);
        this.tvState.setText(this.b.getDescription());
        r rVar = new r();
        rVar.e(e.a("XgY="), this.b.getId());
        k(f.e.a.j.l0.h.b.a().m(d.a(rVar.toString())), new a());
        k(f.e.a.j.l0.h.b.a().b(d.a(rVar.toString())), new b());
    }

    public final void m() {
        this.tvOrder.setTextColor(this.f1992c ? this.kmColorAccent : this.primary_text);
        this.tvReverse.setTextColor(this.f1992c ? this.primary_text : this.kmColorAccent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1993d) {
            this.f1993d = false;
            h.b0(this.llExpend, 0.0f, 600L);
            return;
        }
        super.onBackPressed();
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.tv_expend /* 2131296959 */:
                this.f1993d = true;
                h.m1(this.llExpend, 0.0f, 600L);
                return;
            case R.id.tv_expend2 /* 2131296960 */:
                this.f1993d = false;
                h.b0(this.llExpend, 0.0f, 600L);
                return;
            case R.id.tv_order /* 2131297011 */:
                if (this.f1992c) {
                    return;
                }
                this.f1995f.c();
                this.f1995f.a(this.f1997h);
                this.f1992c = true;
                m();
                return;
            case R.id.tv_reverse /* 2131297029 */:
                if (this.f1992c) {
                    this.f1992c = false;
                    this.f1995f.c();
                    this.f1995f.a(this.f1996g);
                    m();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
