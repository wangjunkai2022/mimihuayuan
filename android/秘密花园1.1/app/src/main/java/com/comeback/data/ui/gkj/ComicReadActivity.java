package com.comeback.data.ui.gkj;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
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
import com.comeback.data.ui.gkj.ComicReadActivity;
import com.comeback.data.ui.gkj.adapter.ChapterAdapter;
import com.comeback.data.ui.gkj.adapter.PicAdapter;
import com.comeback.data.ui.gkj.bean.ComicDetail;
import com.comeback.data.ui.gkj.bean.ComicRead;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import m.j;

/* loaded from: classes.dex */
public class ComicReadActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: i  reason: collision with root package name */
    public static String f861i = e.a("dQcCFg4BGVYKLFwFPwkKJF4oKjERJkF+GiwNSR0TKRFTNSoNJBpzexcxYh0cKVIpeTY6VyQnaAA+JX0UMQctGG41DxAICnAFJFVHDiEyNVtWJVodCitrBjoMWw4qWTUHVFEyEDonbAE9HF9XNhAiAXoINlUmJ1IHOlR9HjYuMlh6NgBUMid3WT4iZgs3LSkCbQgtCDEeb1gqHGFWIVgqE3klLhMiHQlAFh9+DxwyMQRVUSkUDztSWjwPfjEtWjU4fgxTFw4Kc1sXPmYIGlkpG1MqCA0kGnBLPQxtVTYQIl96CCZXJSd4AjoIBQMeO00xf1olUSMpCkU+MEcNEB4XH1sqDTMpHF9VPD5XMwA6Eil+CS0qPThwRyYQYVVVNVsiaCpSHio3e0cdHBkWNSkiEg9VNidTC35VAwNXCRVfJQJCTy8nOg==");
    public NavBean.DataEntity.ArticleVOSEntity b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<ComicDetail.DataEntity.ChaptersEntity> f862c;

    /* renamed from: d  reason: collision with root package name */
    public int f863d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f864e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f865f;

    /* renamed from: g  reason: collision with root package name */
    public PicAdapter f866g;

    /* renamed from: h  reason: collision with root package name */
    public int f867h;
    @BindView
    public LinearLayout llBottom;
    @BindView
    public LinearLayout llFolder;
    @BindView
    public RecyclerView rvChapter;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvPage;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvTitle2;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i3) {
            int findFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            TextView textView = comicReadActivity.tvPage;
            textView.setText(e.a("0M7P") + (comicReadActivity.f867h + 1) + e.a("383+REs=") + (findFirstVisibleItemPosition + 1) + e.a("GA==") + comicReadActivity.f866g.getItemCount());
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ComicRead> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.printStackTrace();
            h.n1(e.a("0f7ugeHS3Krbg7nGkcvchIr8i8vclJG+lva6jv/ni8Si"));
        }

        @Override // m.j
        public void f(ComicRead comicRead) {
            ComicRead comicRead2 = comicRead;
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            PicAdapter picAdapter = comicReadActivity.f866g;
            if (picAdapter == null) {
                comicReadActivity.f866g = new PicAdapter(comicReadActivity);
                ComicReadActivity comicReadActivity2 = ComicReadActivity.this;
                comicReadActivity2.rvList.setLayoutManager(new LinearLayoutManager(comicReadActivity2));
                ComicReadActivity comicReadActivity3 = ComicReadActivity.this;
                comicReadActivity3.rvList.setAdapter(comicReadActivity3.f866g);
            } else {
                picAdapter.c();
            }
            ComicReadActivity.this.f866g.a(comicRead2.getContent().getDataList());
            ComicReadActivity comicReadActivity4 = ComicReadActivity.this;
            comicReadActivity4.f866g.f953d = comicReadActivity4;
        }
    }

    public static void p(Context context, NavBean.DataEntity.ArticleVOSEntity articleVOSEntity, ArrayList<ComicDetail.DataEntity.ChaptersEntity> arrayList, int i2) {
        Intent intent = new Intent(context, ComicReadActivity.class);
        intent.putExtra(e.a("XgwFCw=="), articleVOSEntity);
        intent.putExtra(e.a("UwMXBQ=="), arrayList);
        intent.putExtra(e.a("RQcQCx4BWlY6Ag=="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (NavBean.DataEntity.ArticleVOSEntity) intent.getParcelableExtra(e.a("XgwFCw=="));
        this.f862c = intent.getParcelableArrayListExtra(e.a("UwMXBQ=="));
        this.f863d = intent.getIntExtra(e.a("RQcQCx4BWlY6Ag=="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        int i2 = 0;
        this.f867h = 0;
        while (true) {
            if (i2 >= this.f862c.size()) {
                break;
            } else if (this.f863d == this.f862c.get(i2).getId()) {
                this.f867h = i2;
                break;
            } else {
                i2++;
            }
        }
        l();
        this.tvTitle2.setText(this.b.getNameCn());
        this.tvState.setText(e.a("F0KG09mWl7+U3ac="));
        this.rvList.addOnScrollListener(new a());
    }

    public final void l() {
        PicAdapter picAdapter = this.f866g;
        if (picAdapter != null) {
            picAdapter.c();
        }
        k(f.e.a.j.m.p.e.b().l(this.f862c.get(this.f867h).getId(), f861i), new b());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.rvChapter.setLayoutManager(linearLayoutManager);
        ChapterAdapter chapterAdapter = new ChapterAdapter(this);
        chapterAdapter.f908e = this.f867h;
        chapterAdapter.f907d = new ChapterAdapter.a() { // from class: f.e.a.j.m.a
            @Override // com.comeback.data.ui.gkj.adapter.ChapterAdapter.a
            public final void a(int i2) {
                ComicReadActivity.this.o(i2);
            }
        };
        this.rvChapter.setAdapter(chapterAdapter);
        chapterAdapter.a(this.f862c);
        linearLayoutManager.scrollToPosition(this.f867h);
        TextView textView = this.tvTitle;
        textView.setText(this.b.getNameCn() + e.a("F0KEyMc=") + (this.f867h + 1) + e.a("0MnD"));
    }

    public final void m() {
        this.f865f = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, this.llFolder.getWidth()).setDuration(400L).start();
    }

    public final void n() {
        this.f864e = false;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), 0.0f, -height);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), 0.0f, height2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    public /* synthetic */ void o(int i2) {
        this.f867h = i2;
        l();
        m();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f865f) {
            m();
        }
        if (this.f864e) {
            n();
            return;
        }
        this.f864e = true;
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
        switch (view.getId()) {
            case R.id.tv_collect /* 2131296929 */:
                h.n1(e.a("0fbVjPz837vjg774"));
                return;
            case R.id.tv_folder /* 2131296953 */:
                n();
                this.f865f = true;
                ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), this.llFolder.getWidth(), 0.0f).setDuration(400L).start();
                return;
            case R.id.tv_next /* 2131296994 */:
                if (this.f867h < this.f862c.size() - 1) {
                    this.f867h++;
                    l();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"));
                return;
            case R.id.tv_pre /* 2131297011 */:
                int i2 = this.f867h;
                if (i2 > 0) {
                    this.f867h = i2 - 1;
                    l();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"));
                return;
            default:
                return;
        }
    }
}
