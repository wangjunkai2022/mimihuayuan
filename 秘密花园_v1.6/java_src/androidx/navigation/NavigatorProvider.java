package androidx.navigation;

import android.annotation.SuppressLint;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.navigation.Navigator;
import f.b.a.a.a;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"TypeParameterUnusedInFormals"})
/* loaded from: classes.dex */
public class NavigatorProvider {
    public static final HashMap<Class<?>, String> sAnnotationNames = new HashMap<>();
    public final HashMap<String, Navigator<? extends NavDestination>> mNavigators = new HashMap<>();

    @NonNull
    public static String getNameForNavigator(@NonNull Class<? extends Navigator> cls) {
        String str = sAnnotationNames.get(cls);
        if (str == null) {
            Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
            str = name != null ? name.value() : null;
            if (validateName(str)) {
                sAnnotationNames.put(cls, str);
            } else {
                StringBuilder o = a.o("No @Navigator.Name annotation found for ");
                o.append(cls.getSimpleName());
                throw new IllegalArgumentException(o.toString());
            }
        }
        return str;
    }

    public static boolean validateName(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    @Nullable
    public final Navigator<? extends NavDestination> addNavigator(@NonNull Navigator<? extends NavDestination> navigator) {
        return addNavigator(getNameForNavigator(navigator.getClass()), navigator);
    }

    @NonNull
    public final <T extends Navigator<?>> T getNavigator(@NonNull Class<T> cls) {
        return (T) getNavigator(getNameForNavigator(cls));
    }

    public Map<String, Navigator<? extends NavDestination>> getNavigators() {
        return this.mNavigators;
    }

    @Nullable
    @CallSuper
    public Navigator<? extends NavDestination> addNavigator(@NonNull String str, @NonNull Navigator<? extends NavDestination> navigator) {
        if (validateName(str)) {
            return this.mNavigators.put(str, navigator);
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }

    @NonNull
    @CallSuper
    public <T extends Navigator<?>> T getNavigator(@NonNull String str) {
        if (validateName(str)) {
            Navigator<? extends NavDestination> navigator = this.mNavigators.get(str);
            if (navigator != null) {
                return navigator;
            }
            throw new IllegalStateException(a.g("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }
}
