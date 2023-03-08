package d.c;

import android.view.View;

/* compiled from: DebouncingOnClickListener.java */
/* loaded from: classes.dex */
public abstract class b implements View.OnClickListener {
    public static boolean a = true;
    public static final Runnable b = a.a;

    public abstract void a(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (a) {
            a = false;
            view.post(b);
            a(view);
        }
    }
}
