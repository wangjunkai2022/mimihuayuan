package androidx.transition;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(18)
/* loaded from: classes.dex */
public class ViewGroupUtilsApi18 {
    public static final String TAG = "ViewUtilsApi18";
    public static Method sSuppressLayoutMethod;
    public static boolean sSuppressLayoutMethodFetched;

    public static void fetchSuppressLayoutMethod() {
        if (sSuppressLayoutMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
            sSuppressLayoutMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        sSuppressLayoutMethodFetched = true;
    }

    public static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        fetchSuppressLayoutMethod();
        Method method = sSuppressLayoutMethod;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }
}
