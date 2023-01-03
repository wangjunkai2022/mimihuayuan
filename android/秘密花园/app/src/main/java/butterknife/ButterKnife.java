package butterknife;

import android.app.Activity;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import f.b.a.a.a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ButterKnife {
    @VisibleForTesting
    public static final Map<Class<?>, Constructor<? extends Unbinder>> a = new LinkedHashMap();

    public ButterKnife() {
        throw new AssertionError("No instances.");
    }

    @NonNull
    @UiThread
    public static Unbinder a(@NonNull Activity activity) {
        return b(activity, activity.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder b(@NonNull Object obj, @NonNull View view) {
        Constructor<? extends Unbinder> c2 = c(obj.getClass());
        if (c2 == null) {
            return Unbinder.a;
        }
        try {
            return (Unbinder) c2.newInstance(obj, view);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Unable to invoke " + c2, e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Unable to invoke " + c2, e3);
        } catch (InvocationTargetException e4) {
            Throwable cause = e4.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
        }
    }

    @Nullable
    @CheckResult
    @UiThread
    public static Constructor<? extends Unbinder> c(Class<?> cls) {
        Constructor<? extends Unbinder> constructor;
        Constructor<? extends Unbinder> constructor2 = a.get(cls);
        if (constructor2 != null || a.containsKey(cls)) {
            return constructor2;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            return null;
        }
        try {
            ClassLoader classLoader = cls.getClassLoader();
            constructor = classLoader.loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
        } catch (ClassNotFoundException unused) {
            constructor = c(cls.getSuperclass());
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(a.f("Unable to find binding constructor for ", name), e2);
        }
        a.put(cls, constructor);
        return constructor;
    }
}
