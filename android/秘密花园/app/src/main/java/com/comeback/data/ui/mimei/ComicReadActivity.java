package com.comeback.data.ui.mimei;

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
import com.comeback.data.ui.mimei.adapter.ChapterAdapter;
import com.comeback.data.ui.mimei.adapter.PicAdapter;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import com.comeback.data.ui.mimei.bean.ReadBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e0.j.d;
import f.e.a.j.e0.j.f;
import f.e.a.k.g;
import g.a.x;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class ComicReadActivity extends BaseActivity implements View.OnClickListener {
    public MimeiComicItem b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1652c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1653d;

    /* renamed from: e  reason: collision with root package name */
    public int f1654e;

    /* renamed from: f  reason: collision with root package name */
    public ComicDetailBean f1655f;

    /* renamed from: g  reason: collision with root package name */
    public PicAdapter f1656g;

    /* renamed from: h  reason: collision with root package name */
    public ChapterAdapter f1657h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1658i;
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
            textView.setText(e.a("0M7P") + (comicReadActivity.f1654e + 1) + e.a("383+REs=") + (findFirstVisibleItemPosition + 1) + e.a("GA==") + comicReadActivity.f1656g.getItemCount());
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
            h.n1(e.a("0MnDjOHx0Kv2jpvcnc7Sg4PH"));
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(ReadBean readBean) {
            ReadBean readBean2 = readBean;
            ComicReadActivity comicReadActivity = ComicReadActivity.this;
            comicReadActivity.f1657h.f1685e = comicReadActivity.f1654e;
            TextView textView = comicReadActivity.tvTitle;
            textView.setText(e.a("F0KEyMc=") + (ComicReadActivity.this.f1654e + 1) + e.a("0MnD"));
            ComicReadActivity comicReadActivity2 = ComicReadActivity.this;
            PicAdapter picAdapter = comicReadActivity2.f1656g;
            if (picAdapter == null) {
                comicReadActivity2.f1656g = new PicAdapter(comicReadActivity2);
                ComicReadActivity comicReadActivity3 = ComicReadActivity.this;
                comicReadActivity3.f1656g.f1699d = comicReadActivity3;
                comicReadActivity3.rvList.setLayoutManager(new LinearLayoutManager(comicReadActivity3));
                ComicReadActivity comicReadActivity4 = ComicReadActivity.this;
                comicReadActivity4.rvList.setAdapter(comicReadActivity4.f1656g);
            } else {
                picAdapter.c();
            }
            ComicReadActivity.this.f1656g.a(readBean2.getSuccess().getData());
        }
    }

    public static void q(Context context, MimeiComicItem mimeiComicItem) {
        Intent intent = new Intent(context, ComicReadActivity.class);
        intent.putExtra(e.a("VA0ODQg6XQ=="), mimeiComicItem);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (MimeiComicItem) intent.getParcelableExtra(e.a("VA0ODQg6XQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        this.f1654e = 0;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("VAoCDQU="), d.b);
        hashMap.put(e.a("Xw0QEA=="), d.f3852c);
        k(f.a().a(String.valueOf(this.b.getId()), hashMap), new f.e.a.j.e0.d(this));
        this.rvList.addOnScrollListener(new a());
        this.f1658i = g.d(x.P()).b(MimeiComicItem.class, e.a("XgY="), String.valueOf(this.b.getId()));
        l();
    }

    public final void l() {
        Drawable drawable = getResources().getDrawable(R.mipmap.icon_reader_liked);
        Drawable drawable2 = getResources().getDrawable(R.mipmap.icon_reader_un_liked);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
        TextView textView = this.tvCollect;
        if (!this.f1658i) {
            drawable = drawable2;
        }
        textView.setCompoundDrawables(null, drawable, null, null);
        this.tvCollect.setText(e.a(this.f1658i ? "0u31gt3736fFjqPo" : "0fbVjPz8"));
    }

    public final void m() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("XgY="), String.valueOf(this.f1655f.getSuccess().getDirectory().get(this.f1654e).getId()));
        hashMap.put(f.b.a.a.a.i("Bg==", hashMap, f.b.a.a.a.i("AlJT", hashMap, e.a("VA0WCh8A"), "RwMEARg="), "VAoCDQU="), d.b);
        hashMap.put(e.a("Xw0QEA=="), d.f3852c);
        k(f.a().f(hashMap), new b());
    }

    public final void n() {
        this.f1653d = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, (float) this.llFolder.getWidth()).setDuration(400L).start();
    }

    public final void o() {
        this.f1652c = false;
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
        if (this.f1653d) {
            n();
        }
        if (this.f1652c) {
            o();
            return;
        }
        this.f1652c = true;
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
        if (this.f1655f != null) {
            switch (view.getId()) {
                case R.id.tv_collect /* 2131296929 */:
                    if (this.f1658i) {
                        x.P().O(new f.e.a.j.e0.e(this), new f.e.a.j.e0.f(this));
                    } else {
                        g.d(this.b.getRealm()).a(this.b);
                        h.n1(e.a("0fbVjPz837vjg774"));
                    }
                    this.f1658i = !this.f1658i;
                    l();
                    return;
                case R.id.tv_folder /* 2131296953 */:
                    o();
                    this.f1653d = true;
                    ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), (float) this.llFolder.getWidth(), 0.0f).setDuration(400L).start();
                    return;
                case R.id.tv_next /* 2131296994 */:
                    if (this.f1654e < this.f1655f.getSuccess().getDirectory().size() - 1) {
                        this.f1654e++;
                        m();
                        return;
                    }
                    h.n1(e.a("0t/wgeL+3ITBgY/onvLMjavihvTll4GzlM2Ug8Ls"));
                    return;
                case R.id.tv_pre /* 2131297011 */:
                    int i2 = this.f1654e;
                    if (i2 > 0) {
                        this.f1654e = i2 - 1;
                        m();
                        return;
                    }
                    h.n1(e.a("0t/wgeL+3ITBgY/onvLMjJvOh9zrlJKTl9yy"));
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void p(int i2) {
        this.f1654e = i2;
        m();
        n();
    }
}
