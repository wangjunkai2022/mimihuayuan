package com.comeback.data.ui.slf;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
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
import com.comeback.data.ui.slf.ComicReadActivity;
import com.comeback.data.ui.slf.adapter.ChapterAdapter;
import com.comeback.data.ui.slf.adapter.PicAdapter;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.f;
import f.e.a.j.l0.h.d;
import f.i.b.j;
import f.i.b.r;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ComicReadActivity extends BaseActivity implements View.OnClickListener {
    public List<ChapterBean> b;

    /* renamed from: c  reason: collision with root package name */
    public String f2008c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2009d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2010e;

    /* renamed from: f  reason: collision with root package name */
    public PicAdapter f2011f;

    /* renamed from: g  reason: collision with root package name */
    public int f2012g;
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
    public class a extends f.i.b.d0.a<ArrayList<ChapterBean>> {
        public a(ComicReadActivity comicReadActivity) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i3) {
            int findFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            TextView textView = comicReadActivity.tvPage;
            textView.setText(e.a("0M7P") + (comicReadActivity.f2012g + 1) + e.a("383+REs=") + (findFirstVisibleItemPosition + 1) + e.a("GA==") + comicReadActivity.f2011f.getItemCount());
        }
    }

    public static void q(Context context, ArrayList<ChapterBean> arrayList, int i2, String str) {
        if (arrayList.size() > 20) {
            Intent intent = new Intent(context, ComicReadActivity.class);
            intent.putExtra(e.a("XgY="), str);
            intent.putExtra(e.a("XgwHARM="), i2);
            context.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent(context, ComicReadActivity.class);
        intent2.putExtra(e.a("UwMXBQ=="), new j().j(arrayList));
        intent2.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent2);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        String stringExtra = intent.getStringExtra(e.a("UwMXBQ=="));
        this.f2008c = intent.getStringExtra(e.a("XgY="));
        this.b = (List) new j().e(stringExtra, new a(this).b);
        this.f2012g = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        if (TextUtils.isEmpty(this.f2008c)) {
            n();
            return;
        }
        h.n1(e.a("0ffTgubd0LT8gJvzkNTgjpPFjNjnlZSQlvqcgvLKi9aKjd76"));
        r rVar = new r();
        rVar.e(e.a("XgY="), this.f2008c);
        k(f.e.a.j.l0.h.b.a().m(d.a(rVar.toString())), new f(this));
    }

    public final void l() {
        this.f2010e = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, this.llFolder.getWidth()).setDuration(300L).start();
    }

    public final void m() {
        this.f2009d = false;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), 0.0f, -height);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), 0.0f, height2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    public final void n() {
        p();
        this.tvTitle2.setVisibility(8);
        this.tvState.setVisibility(8);
        this.rvList.addOnScrollListener(new b());
        this.rvList.setOnClickListener(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.rvChapter.setLayoutManager(linearLayoutManager);
        ChapterAdapter chapterAdapter = new ChapterAdapter(this);
        chapterAdapter.f2051e = this.f2012g;
        chapterAdapter.f2050d = new ChapterAdapter.a() { // from class: f.e.a.j.l0.a
            @Override // com.comeback.data.ui.slf.adapter.ChapterAdapter.a
            public final void a(int i2) {
                ComicReadActivity.this.o(i2);
            }
        };
        this.rvChapter.setAdapter(chapterAdapter);
        chapterAdapter.a(this.b);
        linearLayoutManager.scrollToPosition(this.f2012g);
    }

    public /* synthetic */ void o(int i2) {
        this.f2012g = i2;
        l();
        p();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f2010e) {
            l();
        }
        if (this.f2009d) {
            m();
            return;
        }
        this.f2009d = true;
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
            case R.id.tv_collect /* 2131296936 */:
                h.n1(e.a("0fbVjPz837vjg774"));
                return;
            case R.id.tv_folder /* 2131296961 */:
                m();
                this.f2010e = true;
                ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), this.llFolder.getWidth(), 0.0f).setDuration(300L).start();
                return;
            case R.id.tv_next /* 2131297003 */:
                if (this.f2012g < this.b.size() - 1) {
                    this.f2012g++;
                    p();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"));
                return;
            case R.id.tv_pre /* 2131297021 */:
                int i2 = this.f2012g;
                if (i2 > 0) {
                    this.f2012g = i2 - 1;
                    p();
                    return;
                }
                h.n1(e.a("0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"));
                return;
            default:
                return;
        }
    }

    public final void p() {
        if (this.f2011f == null) {
            PicAdapter picAdapter = new PicAdapter(this);
            this.f2011f = picAdapter;
            picAdapter.f2086d = this;
            this.rvList.setLayoutManager(new LinearLayoutManager(this));
            this.rvList.setAdapter(this.f2011f);
        }
        this.f2011f.c();
        this.f2011f.a(this.b.get(this.f2012g).getImages());
        if (this.f2011f.getItemCount() == 0) {
            h.n1(e.a("3+zUgeTl3JfCjoDCl9f9"));
        }
    }
}
