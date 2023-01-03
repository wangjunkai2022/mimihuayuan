package com.comeback.data.ui.main;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.ui.main.AddCollectActivity;
import com.comeback.data.ui.main.bean.CollectVideo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;

/* loaded from: classes.dex */
public class AddCollectActivity_ViewBinding implements Unbinder {
    public AddCollectActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1459c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ AddCollectActivity f1460c;

        public a(AddCollectActivity_ViewBinding addCollectActivity_ViewBinding, AddCollectActivity addCollectActivity) {
            this.f1460c = addCollectActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            final AddCollectActivity addCollectActivity = this.f1460c;
            String obj = addCollectActivity.etName.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                h.n1(e.a("0sbkgtjb3Yv+jrfanNLZjJ7Y"));
                return;
            }
            CollectVideo collectVideo = new CollectVideo();
            collectVideo.setUrl(addCollectActivity.b);
            collectVideo.setName(obj);
            collectVideo.setAddTime(System.currentTimeMillis());
            g.d(collectVideo.getRealm()).a(collectVideo);
            addCollectActivity.tvUrl.postDelayed(new Runnable() { // from class: f.e.a.j.b0.a
                @Override // java.lang.Runnable
                public final void run() {
                    AddCollectActivity.this.l();
                }
            }, 300L);
        }
    }

    @UiThread
    public AddCollectActivity_ViewBinding(AddCollectActivity addCollectActivity, View view) {
        this.b = addCollectActivity;
        addCollectActivity.tvUrl = (TextView) c.c(view, R.id.tv_url, e.a("UQsGCA9THkcFM0YLXw=="), TextView.class);
        addCollectActivity.etName = (EditText) c.c(view, R.id.et_name, e.a("UQsGCA9THlYHKFUKHU0="), EditText.class);
        View b = c.b(view, R.id.tv_save, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1459c = b;
        b.setOnClickListener(new a(this, addCollectActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AddCollectActivity addCollectActivity = this.b;
        if (addCollectActivity != null) {
            this.b = null;
            addCollectActivity.tvUrl = null;
            addCollectActivity.etName = null;
            this.f1459c.setOnClickListener(null);
            this.f1459c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
