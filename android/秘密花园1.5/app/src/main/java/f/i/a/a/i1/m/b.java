package f.i.a.a.i1.m;

import android.text.Layout;
import androidx.annotation.NonNull;

/* compiled from: Cea708Cue.java */
/* loaded from: classes.dex */
public final class b extends f.i.a.a.i1.b implements Comparable<b> {
    public final int p;

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, boolean z, int i5, int i6) {
        super(charSequence, alignment, f2, i2, i3, f3, i4, f4, z, i5);
        this.p = i6;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull b bVar) {
        int i2 = bVar.p;
        int i3 = this.p;
        if (i2 < i3) {
            return -1;
        }
        return i2 > i3 ? 1 : 0;
    }
}
