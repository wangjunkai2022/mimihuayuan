package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import f.i.a.a.k1.a;

/* loaded from: classes.dex */
public class ExoDefaultTimeBar extends a {
    public boolean openSeek;

    public ExoDefaultTimeBar(@NonNull Context context) {
        super(context, null);
        this.openSeek = true;
        new a(context, null);
    }

    @Override // f.i.a.a.k1.a, f.i.a.a.k1.g
    public boolean isOpenSeek() {
        return this.openSeek;
    }

    public void setOpenSeek(boolean z) {
        this.openSeek = z;
    }

    public ExoDefaultTimeBar(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.openSeek = true;
        new a(context, attributeSet);
    }
}
