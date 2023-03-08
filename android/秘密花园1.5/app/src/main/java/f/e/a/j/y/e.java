package f.e.a.j.y;

import android.widget.RadioGroup;
import com.comeback.data.ui.km2.MineFragment;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements RadioGroup.OnCheckedChangeListener {
    public static final /* synthetic */ e a = new e();

    private /* synthetic */ e() {
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        MineFragment.h(radioGroup, i2);
    }
}
