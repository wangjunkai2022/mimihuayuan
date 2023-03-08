package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class GhostViewUtils {
    public static GhostViewImpl addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        return GhostViewApi21.addGhost(view, viewGroup, matrix);
    }

    public static void removeGhost(View view) {
        GhostViewApi21.removeGhost(view);
    }
}
