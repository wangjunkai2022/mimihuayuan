package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class ListViewCompat {
    public static boolean canScrollList(@NonNull ListView listView, int i2) {
        return listView.canScrollList(i2);
    }

    public static void scrollListBy(@NonNull ListView listView, int i2) {
        listView.scrollListBy(i2);
    }
}
