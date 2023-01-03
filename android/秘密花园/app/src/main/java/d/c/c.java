package d.c;

import android.util.TypedValue;
import android.view.View;
import androidx.annotation.IdRes;
import f.b.a.a.a;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class c {
    static {
        new TypedValue();
    }

    public static <T> T a(View view, @IdRes int i2, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e2) {
            String d2 = d(view, i2);
            StringBuilder sb = new StringBuilder();
            sb.append("View '");
            sb.append(d2);
            sb.append("' with ID ");
            sb.append(i2);
            sb.append(" for ");
            throw new IllegalStateException(a.l(sb, str, " was of the wrong type. See cause for more info."), e2);
        }
    }

    public static View b(View view, @IdRes int i2, String str) {
        View findViewById = view.findViewById(i2);
        if (findViewById != null) {
            return findViewById;
        }
        String d2 = d(view, i2);
        StringBuilder sb = new StringBuilder();
        sb.append("Required view '");
        sb.append(d2);
        sb.append("' with ID ");
        sb.append(i2);
        sb.append(" for ");
        throw new IllegalStateException(a.l(sb, str, " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation."));
    }

    public static <T> T c(View view, @IdRes int i2, String str, Class<T> cls) {
        return (T) a(b(view, i2, str), i2, str, cls);
    }

    public static String d(View view, @IdRes int i2) {
        if (view.isInEditMode()) {
            return "<unavailable while editing>";
        }
        return view.getContext().getResources().getResourceEntryName(i2);
    }
}
