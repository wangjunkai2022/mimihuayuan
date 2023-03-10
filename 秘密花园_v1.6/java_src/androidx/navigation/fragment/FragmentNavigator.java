package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
@Navigator.Name("fragment")
/* loaded from: classes.dex */
public class FragmentNavigator extends Navigator<Destination> {
    public static final String KEY_BACK_STACK_IDS = "androidx-nav-fragment:navigator:backStackIds";
    public static final String TAG = "FragmentNavigator";
    public ArrayDeque<Integer> mBackStack = new ArrayDeque<>();
    public final int mContainerId;
    public final Context mContext;
    public final FragmentManager mFragmentManager;

    @NavDestination.ClassType(Fragment.class)
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination {
        public String mClassName;

        public Destination(@NonNull NavigatorProvider navigatorProvider) {
            this(navigatorProvider.getNavigator(FragmentNavigator.class));
        }

        @NonNull
        public final String getClassName() {
            String str = this.mClassName;
            if (str != null) {
                return str;
            }
            throw new IllegalStateException("Fragment class was not set");
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
            super.onInflate(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.FragmentNavigator);
            String string = obtainAttributes.getString(R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            obtainAttributes.recycle();
        }

        @NonNull
        public final Destination setClassName(@NonNull String str) {
            this.mClassName = str;
            return this;
        }

        public Destination(@NonNull Navigator<? extends Destination> navigator) {
            super(navigator);
        }
    }

    /* loaded from: classes.dex */
    public static final class Extras implements Navigator.Extras {
        public final LinkedHashMap<View, String> mSharedElements;

        /* loaded from: classes.dex */
        public static final class Builder {
            public final LinkedHashMap<View, String> mSharedElements = new LinkedHashMap<>();

            @NonNull
            public Builder addSharedElement(@NonNull View view, @NonNull String str) {
                this.mSharedElements.put(view, str);
                return this;
            }

            @NonNull
            public Builder addSharedElements(@NonNull Map<View, String> map) {
                for (Map.Entry<View, String> entry : map.entrySet()) {
                    View key = entry.getKey();
                    String value = entry.getValue();
                    if (key != null && value != null) {
                        addSharedElement(key, value);
                    }
                }
                return this;
            }

            @NonNull
            public Extras build() {
                return new Extras(this.mSharedElements);
            }
        }

        public Extras(Map<View, String> map) {
            LinkedHashMap<View, String> linkedHashMap = new LinkedHashMap<>();
            this.mSharedElements = linkedHashMap;
            linkedHashMap.putAll(map);
        }

        @NonNull
        public Map<View, String> getSharedElements() {
            return Collections.unmodifiableMap(this.mSharedElements);
        }
    }

    public FragmentNavigator(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i2) {
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        this.mContainerId = i2;
    }

    @NonNull
    private String generateBackStackName(int i2, int i3) {
        return i2 + "-" + i3;
    }

    private int getDestId(@Nullable String str) {
        String[] split = str != null ? str.split("-") : new String[0];
        if (split.length == 2) {
            try {
                Integer.parseInt(split[0]);
                return Integer.parseInt(split[1]);
            } catch (NumberFormatException unused) {
                throw new IllegalStateException("Invalid back stack entry on the NavHostFragment's back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph.");
            }
        }
        throw new IllegalStateException("Invalid back stack entry on the NavHostFragment's back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph.");
    }

    @NonNull
    @Deprecated
    public Fragment instantiateFragment(@NonNull Context context, @NonNull FragmentManager fragmentManager, @NonNull String str, @Nullable Bundle bundle) {
        return fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), str);
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(@Nullable Bundle bundle) {
        int[] intArray;
        if (bundle == null || (intArray = bundle.getIntArray(KEY_BACK_STACK_IDS)) == null) {
            return;
        }
        this.mBackStack.clear();
        for (int i2 : intArray) {
            this.mBackStack.add(Integer.valueOf(i2));
        }
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public Bundle onSaveState() {
        Bundle bundle = new Bundle();
        int[] iArr = new int[this.mBackStack.size()];
        Iterator<Integer> it = this.mBackStack.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        bundle.putIntArray(KEY_BACK_STACK_IDS, iArr);
        return bundle;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        if (this.mBackStack.isEmpty() || this.mFragmentManager.isStateSaved()) {
            return false;
        }
        this.mFragmentManager.popBackStack(generateBackStackName(this.mBackStack.size(), this.mBackStack.peekLast().intValue()), 1);
        this.mBackStack.removeLast();
        return true;
    }

    @Override // androidx.navigation.Navigator
    @NonNull
    public Destination createDestination() {
        return new Destination(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d A[RETURN] */
    @Override // androidx.navigation.Navigator
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.navigation.NavDestination navigate(@androidx.annotation.NonNull androidx.navigation.fragment.FragmentNavigator.Destination r9, @androidx.annotation.Nullable android.os.Bundle r10, @androidx.annotation.Nullable androidx.navigation.NavOptions r11, @androidx.annotation.Nullable androidx.navigation.Navigator.Extras r12) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.fragment.FragmentNavigator.navigate(androidx.navigation.fragment.FragmentNavigator$Destination, android.os.Bundle, androidx.navigation.NavOptions, androidx.navigation.Navigator$Extras):androidx.navigation.NavDestination");
    }
}
