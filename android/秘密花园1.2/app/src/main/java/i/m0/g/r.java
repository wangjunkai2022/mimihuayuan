package i.m0.g;

import androidx.core.internal.view.SupportMenu;

/* compiled from: Settings.kt */
/* loaded from: classes.dex */
public final class r {
    public int a;
    public final int[] b = new int[10];

    public final int a() {
        return (this.a & 128) != 0 ? this.b[7] : SupportMenu.USER_MASK;
    }

    public final r b(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.b;
            if (i2 < iArr.length) {
                this.a = (1 << i2) | this.a;
                iArr[i2] = i3;
            }
        }
        return this;
    }
}
