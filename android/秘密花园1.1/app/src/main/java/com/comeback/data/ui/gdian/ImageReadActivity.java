package com.comeback.data.ui.gdian;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.commom.PicBrowseAdapter;
import com.comeback.data.ui.gdian.bean.Image;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.c;
import f.e.a.k.f;
import m.j;

/* loaded from: classes.dex */
public class ImageReadActivity extends BaseActivity {
    public PicBrowseAdapter b;

    /* renamed from: c  reason: collision with root package name */
    public String f800c;
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
    public class a extends j<Image> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.getMessage();
            f.a();
        }

        @Override // m.j
        public void f(Image image) {
            ImageReadActivity.l(ImageReadActivity.this, image);
        }
    }

    public static void l(ImageReadActivity imageReadActivity, Image image) {
        if (imageReadActivity != null) {
            imageReadActivity.b = new PicBrowseAdapter(imageReadActivity);
            imageReadActivity.rvList.setLayoutManager(new LinearLayoutManager(imageReadActivity));
            imageReadActivity.rvList.addItemDecoration(new c(imageReadActivity));
            imageReadActivity.rvList.setAdapter(imageReadActivity.b);
            imageReadActivity.b.a(image.getData().getAtlas_img());
            imageReadActivity.tvTitle.setText(image.getData().getAtlas_name());
            TextView textView = imageReadActivity.tvType;
            textView.setText(e.a("0NPYgfX41o/p") + image.getData().getLabelsText());
            TextView textView2 = imageReadActivity.tvCount;
            textView2.setText(e.a("0ffTjez81o/p") + image.getData().getAtlas_img().size());
            TextView textView3 = imageReadActivity.tvTime;
            textView3.setText(e.a("0fXVjfzH1o/p") + h.O0(image.getData().getPush_time()));
            return;
        }
        throw null;
    }

    public static void m(Context context, String str) {
        Intent intent = new Intent(context, ImageReadActivity.class);
        f.b.a.a.a.v("UwMXBQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f800c = intent.getStringExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gdian_image;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        k(f.e.a.j.l.e.e.a().b(this.f800c), new a());
    }
}
