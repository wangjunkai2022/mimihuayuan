package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.slf.adapter.PicAdapter;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.g;
import f.e.a.j.l0.h.b;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import m.j;
/* loaded from: classes.dex */
public class ImageReadActivity extends BaseActivity {
    public PicAdapter b;

    /* renamed from: c  reason: collision with root package name */
    public String f2025c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<ChapterBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ChapterBean chapterBean) {
            ChapterBean chapterBean2 = chapterBean;
            ImageReadActivity imageReadActivity = ImageReadActivity.this;
            imageReadActivity.tvTitle.setText(chapterBean2.getName());
            TextView textView = imageReadActivity.tvTime;
            textView.setText(e.a("0u3ygdPw36TFj6PTl9b5") + chapterBean2.getUpdateTime());
            imageReadActivity.b = new PicAdapter(imageReadActivity);
            imageReadActivity.rvList.setLayoutManager(new LinearLayoutManager(imageReadActivity));
            imageReadActivity.rvList.addItemDecoration(new g(imageReadActivity));
            imageReadActivity.rvList.setAdapter(imageReadActivity.b);
            imageReadActivity.b.a(chapterBean2.getImages());
        }
    }

    public static void l(Context context, String str) {
        Intent intent = new Intent(context, ImageReadActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2025c = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_read2;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        r rVar = new r();
        rVar.e(e.a("XgY="), this.f2025c);
        k(b.a().c(d.a(rVar.toString())), new a());
    }
}
