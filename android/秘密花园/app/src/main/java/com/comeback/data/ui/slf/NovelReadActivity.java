package com.comeback.data.ui.slf;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.slf.adapter.ChapterAdapter;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.data.ui.slf.bean.ComicDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.i.b.r;
import i.i0;
import java.io.IOException;
import java.util.List;
import l.d;
import l.f;
import l.g0;
import m.j;

/* loaded from: classes.dex */
public class NovelReadActivity extends BaseActivity {
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public d<i0> f1948c;

    /* renamed from: d  reason: collision with root package name */
    public List<ChapterBean> f1949d;

    /* renamed from: e  reason: collision with root package name */
    public String f1950e;

    /* renamed from: f  reason: collision with root package name */
    public int f1951f = 0;
    @BindView
    public LinearLayout llFolder;
    @BindView
    public RecyclerView rvChapter;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvName;

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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(ComicDetail comicDetail) {
            NovelReadActivity.this.f1949d = comicDetail.getChapter();
            NovelReadActivity novelReadActivity = NovelReadActivity.this;
            novelReadActivity.o();
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(novelReadActivity);
            novelReadActivity.rvChapter.setLayoutManager(linearLayoutManager);
            ChapterAdapter chapterAdapter = new ChapterAdapter(novelReadActivity);
            chapterAdapter.f1976e = 0;
            chapterAdapter.f1975d = new f.e.a.j.k0.b(novelReadActivity, linearLayoutManager);
            novelReadActivity.rvChapter.setAdapter(chapterAdapter);
            chapterAdapter.a(novelReadActivity.f1949d);
        }
    }

    /* loaded from: classes.dex */
    public class b implements f<i0> {
        public b() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            try {
                NovelReadActivity.this.tvDetail.setText(NovelReadActivity.l(g0Var.b.H()));
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
        }
    }

    public static String l(String str) {
        try {
            return new String(Base64.decode(str.replace(e.a("HUg="), e.a("Cg==")).replace(e.a("E0Y="), e.a("fQ==")).replace(e.a("FEE="), e.a("fw==")).replace(e.a("aTw="), e.a("dg==")), 0), e.a("YjYlSVM="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void p(Context context, String str) {
        Intent intent = new Intent(context, NovelReadActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1950e = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_novel_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        r rVar = new r();
        rVar.e(e.a("XgY="), this.f1950e);
        k(f.e.a.j.k0.h.b.a().l(f.e.a.j.k0.h.d.a(rVar.toString())), new a());
    }

    public final void m() {
        this.b = false;
        ObjectAnimator.ofFloat(this.llFolder, e.a("QxACChgfWEcaCVo/"), 0.0f, (float) this.llFolder.getWidth()).setDuration(300L).start();
    }

    public /* synthetic */ void n(LinearLayoutManager linearLayoutManager, int i2) {
        this.f1951f = i2;
        m();
        o();
        linearLayoutManager.scrollToPosition(this.f1951f);
    }

    public final void o() {
        ChapterBean chapterBean = this.f1949d.get(this.f1951f);
        this.tvName.setText(chapterBean.getName());
        d<i0> c2 = c.a().c(chapterBean.getTextUrl());
        this.f1948c = c2;
        c2.X(new b());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.b) {
            m();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1948c;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
