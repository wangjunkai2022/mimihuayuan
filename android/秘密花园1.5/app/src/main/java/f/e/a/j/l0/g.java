package f.e.a.j.l0;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.ui.slf.ImageReadActivity;

/* compiled from: ImageReadActivity.java */
/* loaded from: classes.dex */
public class g extends RecyclerView.ItemDecoration {
    public g(ImageReadActivity imageReadActivity) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getChildAdapterPosition(view) != 0) {
            rect.top = 14;
        }
        rect.left = 14;
        rect.right = 14;
    }
}
