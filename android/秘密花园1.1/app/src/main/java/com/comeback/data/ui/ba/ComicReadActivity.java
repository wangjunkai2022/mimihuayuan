package com.comeback.data.ui.ba;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.ba.adapter.ChapterAdapter;
import com.comeback.data.ui.ba.adapter.PicAdapter;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import com.comeback.data.ui.ba.bean.ComicDetailBean;
import com.comeback.data.ui.ba.bean.ReadBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c.d;
import f.e.a.j.c.g.c;
import f.e.a.k.g;
import g.a.x;
import m.j;

/* loaded from: classes.dex */
public class ComicReadActivity extends BaseActivity implements View.OnClickListener {
    public BaComicsBean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f223c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f224d;

    /* renamed from: e  reason: collision with root package name */
    public int f225e;

    /* renamed from: f  reason: collision with root package name */
    public ComicDetailBean f226f;

    /* renamed from: g  reason: collision with root package name */
    public PicAdapter f227g;

    /* renamed from: h  reason: collision with root package name */
    public ChapterAdapter f228h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f229i;
    @BindView
    public LinearLayout llBottom;
    @BindView
    public LinearLayout llFolder;
    @BindView
    public RecyclerView rvChapter;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvCollect;
    @BindView
    public TextView tvPage;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i3) {
            int findFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            TextView textView = comicReadActivity.tvPage;
            textView.setText(e.a("0M7P") + (comicReadActivity.f225e + 1) + e.a("383+REs=") + (findFirstVisibleItemPosition + 1) + e.a("GA==") + comicReadActivity.f227g.getItemCount());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ReadBean> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ReadBean readBean) {
            ReadBean readBean2 = readBean;
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            comicReadActivity.f228h.f240e = comicReadActivity.f225e;
            TextView textView = comicReadActivity.tvTitle;
            textView.setText(e.a("F0KEyMc=") + (ComicReadActivity.this.f225e + 1) + e.a("0MnD"));
            ComicReadActivity comicReadActivity2 = ComicReadActivity.this;
            PicAdapter picAdapter = comicReadActivity2.f227g;
            if (picAdapter == null) {
                comicReadActivity2.f227g = new PicAdapter(comicReadActivity2);
                ComicReadActivity comicReadActivity3 = ComicReadActivity.this;
                comicReadActivity3.f227g.f245d = comicReadActivity3;
                comicReadActivity3.rvList.setLayoutManager(new LinearLayoutManager(comicReadActivity3));
                ComicReadActivity comicReadActivity4 = ComicReadActivity.this;
                comicReadActivity4.rvList.setAdapter(comicReadActivity4.f227g);
            } else {
                picAdapter.c();
            }
            ComicReadActivity.this.f227g.a(readBean2.getResults().getEpisodes());
        }
    }

    public static void q(Context context, BaComicsBean baComicsBean) {
        Intent intent = new Intent(context, ComicReadActivity.class);
        intent.putExtra(e.a("VA0ODQg6XQ=="), baComicsBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (BaComicsBean) intent.getParcelableExtra(e.a("VA0ODQg6XQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ba_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        this.f225e = 0;
        k(c.a().b(this.b.getShow_id()), new f.e.a.j.c.c(this));
        this.rvList.addOnScrollListener(new a());
        this.f229i = g.d(x.P()).b(BaComicsBean.class, e.a("RAoMEzQaXQ=="), this.b.getShow_id());
        l();
    }

    public final void l() {
        Drawable drawable = getResources().getDrawable(R.mipmap.icon_reader_liked);
        Drawable drawable2 = getResources().getDrawable(R.mipmap.icon_reader_un_liked);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
        TextView textView = this.tvCollect;
        if (!this.f229i) {
            drawable = drawable2;
        }
        textView.setCompoundDrawables(null, drawable, null, null);
        this.tvCollect.setText(e.a(this.f229i ? "0u31gt3736fFjqPo" : "0fbVjPz8"));
    }

    public final void m() {
        k(c.a().f(this.f226f.getResults().getComic_episodes().get(this.f225e).getDetail_id()), new b());
    }

    public final void n() {
        this.f224d = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, this.llFolder.getWidth()).setDuration(400L).start();
    }

    public final void o() {
        this.f223c = false;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), 0.0f, -height);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), 0.0f, height2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f224d) {
            n();
        }
        if (this.f223c) {
            o();
            return;
        }
        this.f223c = true;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), -height, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), height2, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    @OnClick
    public void onViewClicked(View view) {
        if (this.f226f == null) {
            return;
        }
        switch (view.getId()) {
            case R.id.tv_collect /* 2131296929 */:
                if (this.f229i) {
                    x.P().O(new d(this), new f.e.a.j.c.e(this));
                } else {
                    g.d(this.b.getRealm()).a(this.b);
                    h.n1(e.a("0fbVjPz837vjg774"));
                }
                this.f229i = !this.f229i;
                l();
                return;
            case R.id.tv_folder /* 2131296953 */:
                o();
                this.f224d = true;
                ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), this.llFolder.getWidth(), 0.0f).setDuration(400L).start();
                return;
            case R.id.tv_next /* 2131296994 */:
                if (this.f225e < this.f226f.getResults().getComic_episodes().size() - 1) {
                    this.f225e++;
                    m();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"));
                return;
            case R.id.tv_pre /* 2131297011 */:
                int i2 = this.f225e;
                if (i2 > 0) {
                    this.f225e = i2 - 1;
                    m();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"));
                return;
            default:
                return;
        }
    }

    public /* synthetic */ void p(int i2) {
        this.f225e = i2;
        m();
        n();
    }
}
