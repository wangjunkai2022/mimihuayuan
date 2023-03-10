package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import c.a.a.b.g.h;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.slf.bean.ComicDetail;
import f.e.a.e;
import f.e.a.j.l0.h.b;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import m.j;
/* loaded from: classes.dex */
public class VideoDetailActivity extends BasePlayByIdActivity {

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
            if (!TextUtils.isEmpty(comicDetail2.getVideoLink())) {
                VideoDetailActivity.this.m(comicDetail2.getVideoLink());
            } else {
                h.p1(e.a("3+zUgeTl36HegKDZnfbTjqrihsDam42W"));
            }
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, VideoDetailActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        r rVar = new r();
        rVar.e(e.a("XgY="), str);
        k(b.a().e(d.a(rVar.toString())), new a());
    }
}
