package com.comeback.data.ui.xiami;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.xiami.adapter.PicAdapter;
import com.comeback.data.ui.xiami.bean.ImageDetail;
import com.comeback.data.ui.xiami.bean.ImageList;
import com.comeback.secret.garden.R;
import f.e.a.j.q0.e;
import f.e.a.j.q0.f.b;
import f.e.a.j.q0.f.d;
import java.util.HashMap;
import m.j;
/* loaded from: classes.dex */
public class ImageReadActivity extends BaseActivity {
    public PicAdapter b;

    /* renamed from: c  reason: collision with root package name */
    public ImageList.DataBean f2213c;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvTime;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvType;

    /* loaded from: classes.dex */
    public class a extends j<ImageDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ImageDetail imageDetail) {
            ImageReadActivity.l(ImageReadActivity.this, imageDetail);
        }
    }

    public static void l(ImageReadActivity imageReadActivity, ImageDetail imageDetail) {
        if (imageReadActivity != null) {
            imageReadActivity.b = new PicAdapter(imageReadActivity);
            imageReadActivity.rvList.setLayoutManager(new LinearLayoutManager(imageReadActivity));
            imageReadActivity.rvList.addItemDecoration(new e(imageReadActivity));
            imageReadActivity.rvList.setAdapter(imageReadActivity.b);
            imageReadActivity.b.a(imageDetail.getData().getGroup());
            return;
        }
        throw null;
    }

    public static void m(Context context, ImageList.DataBean dataBean) {
        Intent intent = new Intent(context, ImageReadActivity.class);
        intent.putExtra(f.e.a.e.a("UwMXBQ=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2213c = (ImageList.DataBean) intent.getParcelableExtra(f.e.a.e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_image;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.e.a.e.a("UAMPCA4BQHoX"), this.f2213c.getGalleryId());
        hashMap.put(f.e.a.e.a("VAoCCgUWVQ=="), f.e.a.e.a("QAcBOwQVX1oQD1UL"));
        k(a2.i(hashMap), new a());
        this.tvTitle.setText(this.f2213c.getGalleryTitle());
        TextView textView = this.tvType;
        textView.setText(f.e.a.e.a("0NPYgfX41o/p") + this.f2213c.getCategoryTitle());
        TextView textView2 = this.tvCount;
        textView2.setText(f.e.a.e.a("0ffTjez81o/p") + this.f2213c.getGalleryCounts());
        TextView textView3 = this.tvTime;
        textView3.setText(f.e.a.e.a("0fXVjfzH1o/p") + h.Q0(this.f2213c.getAddTime()));
    }
}
