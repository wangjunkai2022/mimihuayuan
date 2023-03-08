package f.e.a.j.x;

import android.widget.RadioGroup;
import com.comeback.data.ui.km.MineFragment;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements RadioGroup.OnCheckedChangeListener {
    public static final /* synthetic */ b a = new b();

    private /* synthetic */ b() {
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        MineFragment.h(radioGroup, i2);
    }
}
