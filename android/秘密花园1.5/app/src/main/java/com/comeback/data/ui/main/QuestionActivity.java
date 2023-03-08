package com.comeback.data.ui.main;

import android.content.Context;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;

/* loaded from: classes.dex */
public class QuestionActivity extends BaseActivity {
    public static void l(Context context) {
        a.u(context, QuestionActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_question;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
    }
}
