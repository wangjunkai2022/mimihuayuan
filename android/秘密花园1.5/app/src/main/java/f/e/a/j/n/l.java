package f.e.a.j.n;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.ui.gkj.CgReadActivity;

/* compiled from: CgReadActivity.java */
/* loaded from: classes.dex */
public class l extends RecyclerView.ItemDecoration {
    public l(CgReadActivity.a aVar) {
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
