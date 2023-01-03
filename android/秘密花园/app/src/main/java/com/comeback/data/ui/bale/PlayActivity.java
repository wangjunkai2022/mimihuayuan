package com.comeback.data.ui.bale;

import android.content.Context;
import android.content.Intent;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.bale.bean.VideoPlay;
import f.e.a.e;
import f.e.a.j.d.e.b;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<VideoPlay> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD0=");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(VideoPlay videoPlay) {
            PlayActivity.this.m(videoPlay.getResult().getUrl());
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(b.a().a(str), new a());
    }
}
