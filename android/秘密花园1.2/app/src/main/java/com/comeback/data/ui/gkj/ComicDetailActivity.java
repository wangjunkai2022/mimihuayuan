package com.comeback.data.ui.gkj;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.gkj.adapter.ComicDetailAdapter;
import com.comeback.data.ui.gkj.bean.ComicDetail;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class ComicDetailActivity extends BaseActivity implements ComicDetailAdapter.a {
    public NavBean.DataEntity.ArticleVOSEntity b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f919c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f920d = false;

    /* renamed from: e  reason: collision with root package name */
    public ComicDetailAdapter f921e;

    /* renamed from: f  reason: collision with root package name */
    public ComicDetailAdapter f922f;

    /* renamed from: g  reason: collision with root package name */
    public List<ComicDetail.DataEntity.ChaptersEntity> f923g;

    /* renamed from: h  reason: collision with root package name */
    public List<ComicDetail.DataEntity.ChaptersEntity> f924h;
    @BindView
    public ImageView ivCover;
    @BindColor
    public int kmColorAccent;
    @BindView
    public LinearLayout llExpend;
    @BindColor
    public int primary_text;
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
            ComicDetail comicDetail2 = comicDetail;
            ComicDetailActivity.l(ComicDetailActivity.this, comicDetail2);
            List<ComicDetail.DataEntity.ChaptersEntity> chapters = comicDetail2.getData().getChapters();
            ComicDetailActivity comicDetailActivity = ComicDetailActivity.this;
            if (comicDetailActivity != null) {
                comicDetailActivity.f924h = new ArrayList();
                comicDetailActivity.f923g = new ArrayList();
                for (int i2 = 0; i2 < chapters.size() && i2 < 5; i2++) {
                    comicDetailActivity.f924h.add(chapters.get(i2));
                }
                for (int i3 = 0; i3 < chapters.size() && i3 < 5; i3++) {
                    comicDetailActivity.f923g.add(chapters.get((chapters.size() - i3) - 1));
                }
                ComicDetailActivity comicDetailActivity2 = ComicDetailActivity.this;
                comicDetailActivity2.f922f = new ComicDetailAdapter(comicDetailActivity2);
                ComicDetailActivity comicDetailActivity3 = ComicDetailActivity.this;
                comicDetailActivity3.rvList.setLayoutManager(new GridLayoutManager(comicDetailActivity3, 5));
                ComicDetailActivity comicDetailActivity4 = ComicDetailActivity.this;
                comicDetailActivity4.rvList.setAdapter(comicDetailActivity4.f922f);
                ComicDetailActivity comicDetailActivity5 = ComicDetailActivity.this;
                comicDetailActivity5.f921e = new ComicDetailAdapter(comicDetailActivity5);
                ComicDetailActivity comicDetailActivity6 = ComicDetailActivity.this;
                comicDetailActivity6.rvList2.setLayoutManager(new GridLayoutManager(comicDetailActivity6, 5));
                ComicDetailActivity comicDetailActivity7 = ComicDetailActivity.this;
                comicDetailActivity7.rvList2.setAdapter(comicDetailActivity7.f921e);
                ComicDetailActivity comicDetailActivity8 = ComicDetailActivity.this;
                comicDetailActivity8.f922f.a(comicDetailActivity8.f924h);
                ComicDetailAdapter comicDetailAdapter = ComicDetailActivity.this.f921e;
                comicDetailAdapter.b(chapters, comicDetailAdapter.b.size());
                ComicDetailActivity comicDetailActivity9 = ComicDetailActivity.this;
                comicDetailActivity9.f922f.f1008d = comicDetailActivity9;
                comicDetailActivity9.f921e.f1008d = comicDetailActivity9;
                return;
            }
            throw null;
        }
    }

    public static void l(ComicDetailActivity comicDetailActivity, ComicDetail comicDetail) {
        if (comicDetailActivity != null) {
            List<ComicDetail.DataEntity.TagsEntity> tags = comicDetail.getData().getTags();
            if (tags != null) {
                for (int i2 = 0; i2 < tags.size(); i2++) {
                    ComicDetail.DataEntity.TagsEntity tagsEntity = tags.get(i2);
                    if (i2 == 0) {
                        comicDetailActivity.tvTag1.setVisibility(0);
                        comicDetailActivity.tvTag1.setText(tagsEntity.getTagName());
                    } else if (i2 == 1) {
                        comicDetailActivity.tvTag2.setVisibility(0);
                        comicDetailActivity.tvTag2.setText(tagsEntity.getTagName());
                    } else if (i2 == 2) {
                        comicDetailActivity.tvTag3.setVisibility(0);
                        comicDetailActivity.tvTag3.setText(tagsEntity.getTagName());
                    } else if (i2 == 3) {
                        comicDetailActivity.tvTag4.setVisibility(0);
                        comicDetailActivity.tvTag4.setText(tagsEntity.getTagName());
                    }
                }
            }
            TextView textView = comicDetailActivity.tvUpdate;
            textView.setText(e.a("Hw==") + comicDetail.getData().getUpdate() + e.a("Hg=="));
            comicDetailActivity.tvState.setText(e.a(comicDetail.getData().isHaveNew() ? "3939jNbO3Yve" : "0tXRgcX/3ojg"));
            return;
        }
        throw null;
    }

    public static void n() {
    }

    public static void o(Context context, NavBean.DataEntity.ArticleVOSEntity articleVOSEntity) {
        Intent intent = new Intent(context, ComicDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), articleVOSEntity);
        context.startActivity(intent);
    }

    public static void p() {
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (NavBean.DataEntity.ArticleVOSEntity) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_comic;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        this.tvTitle.setText(this.b.getNameCn());
        this.tvStar.setText(String.valueOf(this.b.getGrade()));
        this.tvHot.setText(String.valueOf(this.b.getPlayPre()));
        h.D0(this.b.getCoverS(), this.ivCover, 20);
        this.tvIntro.setText(this.b.getInfo());
        k(f.e.a.j.n.p.e.b().j(this.b.getId()), new a());
    }

    public final void m() {
        this.tvOrder.setTextColor(this.f919c ? this.kmColorAccent : this.primary_text);
        this.tvReverse.setTextColor(this.f919c ? this.primary_text : this.kmColorAccent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f920d) {
            this.f920d = false;
            h.b0(this.llExpend, 0.0f, 600L);
            return;
        }
        super.onBackPressed();
    }

    @OnClick
    public void onViewClicked(View view) {
        ComicDetailAdapter comicDetailAdapter;
        ComicDetailAdapter comicDetailAdapter2;
        switch (view.getId()) {
            case R.id.tv_expend /* 2131296959 */:
                this.f920d = true;
                h.m1(this.llExpend, 0.0f, 600L);
                return;
            case R.id.tv_expend2 /* 2131296960 */:
                this.f920d = false;
                h.b0(this.llExpend, 0.0f, 600L);
                return;
            case R.id.tv_order /* 2131297011 */:
                if (this.f919c || (comicDetailAdapter = this.f922f) == null || this.f921e == null) {
                    return;
                }
                comicDetailAdapter.c();
                this.f922f.a(this.f924h);
                this.f919c = true;
                m();
                return;
            case R.id.tv_reverse /* 2131297029 */:
                if (!this.f919c || (comicDetailAdapter2 = this.f922f) == null || this.f921e == null) {
                    return;
                }
                this.f919c = false;
                comicDetailAdapter2.c();
                this.f922f.a(this.f923g);
                m();
                return;
            default:
                return;
        }
    }
}
