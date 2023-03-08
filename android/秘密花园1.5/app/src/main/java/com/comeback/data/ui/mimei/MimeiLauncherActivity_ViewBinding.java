package com.comeback.data.ui.mimei;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MimeiLauncherActivity_ViewBinding implements Unbinder {
    public MimeiLauncherActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1750c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MimeiLauncherActivity f1751c;

        public a(MimeiLauncherActivity_ViewBinding mimeiLauncherActivity_ViewBinding, MimeiLauncherActivity mimeiLauncherActivity) {
            this.f1751c = mimeiLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1751c.p();
        }
    }

    @UiThread
    public MimeiLauncherActivity_ViewBinding(MimeiLauncherActivity mimeiLauncherActivity, View view) {
        this.b = mimeiLauncherActivity;
        mimeiLauncherActivity.radioHost1 = (RadioButton) c.c(view, R.id.radio_host1, e.a("UQsGCA9THkESAl0IMAUQHwZF"), RadioButton.class);
        RadioButton radioButton = (RadioButton) c.c(view, R.id.radio_host2, e.a("UQsGCA9THkESAl0IMAUQHwVF"), RadioButton.class);
        RadioButton radioButton2 = (RadioButton) c.c(view, R.id.radio_host3, e.a("UQsGCA9THkESAl0IMAUQHwRF"), RadioButton.class);
        mimeiLauncherActivity.radioGroupHost = (RadioGroup) c.c(view, R.id.radio_group_host, e.a("UQsGCA9THkESAl0IPxgMHkcqDBcfVA=="), RadioGroup.class);
        RadioButton radioButton3 = (RadioButton) c.c(view, R.id.radio_image1, e.a("UQsGCA9THkESAl0IMQcCDFJTRA=="), RadioButton.class);
        RadioButton radioButton4 = (RadioButton) c.c(view, R.id.radio_image2, e.a("UQsGCA9THkESAl0IMQcCDFJQRA=="), RadioButton.class);
        RadioButton radioButton5 = (RadioButton) c.c(view, R.id.radio_image3, e.a("UQsGCA9THkESAl0IMQcCDFJRRA=="), RadioButton.class);
        mimeiLauncherActivity.radioGroupImage = (RadioGroup) c.c(view, R.id.radio_group_image, e.a("UQsGCA9THkESAl0IPxgMHkcrDgUMFh4="), RadioGroup.class);
        RadioButton radioButton6 = (RadioButton) c.c(view, R.id.radio_novel1, e.a("UQsGCA9THkESAl0INgUVDltTRA=="), RadioButton.class);
        RadioButton radioButton7 = (RadioButton) c.c(view, R.id.radio_novel2, e.a("UQsGCA9THkESAl0INgUVDltQRA=="), RadioButton.class);
        RadioGroup radioGroup = (RadioGroup) c.c(view, R.id.radio_group_novel, e.a("UQsGCA9THkESAl0IPxgMHkcsDBIOHx4="), RadioGroup.class);
        View b = c.b(view, R.id.tv_login, e.a("UQsGCA9THkcFKlsAEQRES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        TextView textView = (TextView) c.a(b, R.id.tv_login, e.a("UQsGCA9THkcFKlsAEQRE"), TextView.class);
        this.f1750c = b;
        b.setOnClickListener(new a(this, mimeiLauncherActivity));
        mimeiLauncherActivity.flProgress = (FrameLayout) c.c(view, R.id.fl_progress, e.a("UQsGCA9THlUfNkYIHxgGGERF"), FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MimeiLauncherActivity mimeiLauncherActivity = this.b;
        if (mimeiLauncherActivity != null) {
            this.b = null;
            mimeiLauncherActivity.radioGroupHost = null;
            mimeiLauncherActivity.radioGroupImage = null;
            mimeiLauncherActivity.flProgress = null;
            this.f1750c.setOnClickListener(null);
            this.f1750c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
