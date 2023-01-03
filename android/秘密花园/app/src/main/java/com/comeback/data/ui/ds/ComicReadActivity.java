package com.comeback.data.ui.ds;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.ds.adapter.ChapterAdapter;
import com.comeback.data.ui.ds.adapter.PicAdapter;
import com.comeback.data.ui.ds.bean.ComicDetailBean;
import com.comeback.data.ui.ds.bean.DsItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i.f;
import f.e.a.j.i.h;
import f.e.a.j.i.j.b;
import f.e.a.k.g;
import g.a.x;

/* loaded from: classes.dex */
public class ComicReadActivity extends BaseActivity implements View.OnClickListener {
    public DsItemBean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f577c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f578d;

    /* renamed from: e  reason: collision with root package name */
    public int f579e;

    /* renamed from: f  reason: collision with root package name */
    public ComicDetailBean f580f;
    @BindView
    public FrameLayout flComic;

    /* renamed from: g  reason: collision with root package name */
    public PicAdapter f581g;

    /* renamed from: h  reason: collision with root package name */
    public ChapterAdapter f582h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f583i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f584j;
    @BindView
    public LinearLayout llBottom;
    @BindView
    public LinearLayout llFolder;
    @BindView
    public RecyclerView rvChapter;
    @BindView
    public RecyclerView rvList;
    @BindView
    public NestedScrollView scrollView;
    @BindView
    public TextView tvCollect;
    @BindView
    public TextView tvNovel;
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
            textView.setText(e.a("0M7P") + (comicReadActivity.f579e + 1) + e.a("383+REs=") + (findFirstVisibleItemPosition + 1) + e.a("GA==") + comicReadActivity.f581g.getItemCount());
        }
    }

    public static void q(Context context, DsItemBean dsItemBean, boolean z) {
        if (!TextUtils.isEmpty(dsItemBean.getContentType())) {
            z = dsItemBean.getContentType().equals(e.a("WQ0VAQc="));
        }
        Intent intent = new Intent(context, ComicReadActivity.class);
        intent.putExtra(e.a("VA0ODQg6XQ=="), dsItemBean);
        intent.putExtra(e.a("XhEtCx0WVQ=="), z);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (DsItemBean) intent.getParcelableExtra(e.a("VA0ODQg6XQ=="));
        this.f584j = intent.getBooleanExtra(e.a("XhEtCx0WVQ=="), false);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ds_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        int i2 = 0;
        this.f579e = 0;
        k(b.a().b(this.b.getId()), new f(this));
        this.rvList.addOnScrollListener(new a());
        this.f583i = g.d(x.P()).b(DsItemBean.class, e.a("XgY="), this.b.getId());
        l();
        this.tvNovel.setOnClickListener(this);
        this.scrollView.setVisibility(this.f584j ? 0 : 8);
        FrameLayout frameLayout = this.flComic;
        if (this.f584j) {
            i2 = 8;
        }
        frameLayout.setVisibility(i2);
    }

    public final void l() {
        Drawable drawable = getResources().getDrawable(R.mipmap.icon_reader_liked);
        Drawable drawable2 = getResources().getDrawable(R.mipmap.icon_reader_un_liked);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
        TextView textView = this.tvCollect;
        if (!this.f583i) {
            drawable = drawable2;
        }
        textView.setCompoundDrawables(null, drawable, null, null);
        this.tvCollect.setText(e.a(this.f583i ? "0u31gt3736fFjqPo" : "0fbVjPz8"));
    }

    public final void m() {
        this.f582h.f608e = this.f579e;
        this.tvNovel.setText(this.f580f.getResult().getList().get(this.f579e).getContent());
        this.scrollView.fullScroll(33);
        TextView textView = this.tvTitle;
        textView.setText(e.a("F0KEyMc=") + (this.f579e + 1) + e.a("0MnD"));
        PicAdapter picAdapter = this.f581g;
        if (picAdapter == null) {
            PicAdapter picAdapter2 = new PicAdapter(this);
            this.f581g = picAdapter2;
            picAdapter2.f622d = this;
            this.rvList.setLayoutManager(new LinearLayoutManager(this));
            this.rvList.setAdapter(this.f581g);
        } else {
            picAdapter.c();
        }
        this.f581g.a(this.f580f.getResult().getList().get(this.f579e).getAllImage());
    }

    public final void n() {
        this.f578d = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, (float) this.llFolder.getWidth()).setDuration(400L).start();
    }

    public final void o() {
        this.f577c = false;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), 0.0f, (float) (-height));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), 0.0f, (float) height2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f578d) {
            n();
        }
        if (this.f577c) {
            o();
            return;
        }
        this.f577c = true;
        int height = this.tvTitle.getHeight();
        int height2 = this.llBottom.getHeight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tvTitle, e.a("QxACChgfWEcaCVo+"), (float) (-height), 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.llBottom, e.a("QxACChgfWEcaCVo+"), (float) height2, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(400L);
        animatorSet.start();
    }

    @OnClick
    public void onViewClicked(View view) {
        if (this.f580f != null) {
            switch (view.getId()) {
                case R.id.tv_collect /* 2131296929 */:
                    if (this.f583i) {
                        x.P().O(new f.e.a.j.i.g(this), new h(this));
                    } else {
                        this.b.setContentType(e.a(this.f584j ? "WQ0VAQc=" : "VA0ODQg="));
                        g.d(this.b.getRealm()).a(this.b);
                        c.a.a.b.g.h.n1(e.a("0fbVjPz837vjg774"));
                    }
                    this.f583i = !this.f583i;
                    l();
                    return;
                case R.id.tv_folder /* 2131296953 */:
                    o();
                    this.f578d = true;
                    ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), (float) this.llFolder.getWidth(), 0.0f).setDuration(400L).start();
                    return;
                case R.id.tv_next /* 2131296994 */:
                    if (this.f579e < this.f580f.getResult().getList().size() - 1) {
                        this.f579e++;
                        m();
                        return;
                    }
                    c.a.a.b.g.h.n1(e.a("0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"));
                    return;
                case R.id.tv_pre /* 2131297011 */:
                    int i2 = this.f579e;
                    if (i2 > 0) {
                        this.f579e = i2 - 1;
                        m();
                        return;
                    }
                    c.a.a.b.g.h.n1(e.a("0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"));
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void p(int i2) {
        this.f579e = i2;
        m();
        n();
    }
}
