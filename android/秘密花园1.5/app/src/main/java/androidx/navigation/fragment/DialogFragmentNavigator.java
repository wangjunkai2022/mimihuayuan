package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import f.b.a.a.a;

@Navigator.Name("dialog")
/* loaded from: classes.dex */
public final class DialogFragmentNavigator extends Navigator<Destination> {
    public static final String DIALOG_TAG = "androidx-nav-fragment:navigator:dialog:";
    public static final String KEY_DIALOG_COUNT = "androidx-nav-dialogfragment:navigator:count";
    public static final String TAG = "DialogFragmentNavigator";
    public final Context mContext;
    public final FragmentManager mFragmentManager;
    public int mDialogCount = 0;
    public LifecycleEventObserver mObserver = new LifecycleEventObserver() { // from class: androidx.navigation.fragment.DialogFragmentNavigator.1
        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_STOP) {
                DialogFragment dialogFragment = (DialogFragment) lifecycleOwner;
                if (dialogFragment.requireDialog().isShowing()) {
                    return;
                }
                NavHostFragment.findNavController(dialogFragment).popBackStack();
            }
        }
    };

    @NavDestination.ClassType(DialogFragment.class)
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination implements FloatingWindow {
        public String mClassName;

        public Destination(@NonNull NavigatorProvider navigatorProvider) {
            this(navigatorProvider.getNavigator(DialogFragmentNavigator.class));
        }

        @NonNull
        public final String getClassName() {
            String str = this.mClassName;
            if (str != null) {
                return str;
            }
            throw new IllegalStateException("DialogFragment class was not set");
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
            super.onInflate(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.DialogFragmentNavigator);
            String string = obtainAttributes.getString(R.styleable.DialogFragmentNavigator_android_name);
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

    public DialogFragmentNavigator(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(@Nullable Bundle bundle) {
        if (bundle != null) {
            this.mDialogCount = bundle.getInt(KEY_DIALOG_COUNT, 0);
            for (int i2 = 0; i2 < this.mDialogCount; i2++) {
                FragmentManager fragmentManager = this.mFragmentManager;
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(DIALOG_TAG + i2);
                if (dialogFragment != null) {
                    dialogFragment.getLifecycle().addObserver(this.mObserver);
                } else {
                    throw new IllegalStateException(a.K("DialogFragment ", i2, " doesn't exist in the FragmentManager"));
                }
            }
        }
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public Bundle onSaveState() {
        if (this.mDialogCount == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_DIALOG_COUNT, this.mDialogCount);
        return bundle;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        if (this.mDialogCount == 0 || this.mFragmentManager.isStateSaved()) {
            return false;
        }
        FragmentManager fragmentManager = this.mFragmentManager;
        StringBuilder o = a.o(DIALOG_TAG);
        int i2 = this.mDialogCount - 1;
        this.mDialogCount = i2;
        o.append(i2);
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(o.toString());
        if (findFragmentByTag != null) {
            findFragmentByTag.getLifecycle().removeObserver(this.mObserver);
            ((DialogFragment) findFragmentByTag).dismiss();
        }
        return true;
    }

    @Override // androidx.navigation.Navigator
    @NonNull
    public Destination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public NavDestination navigate(@NonNull Destination destination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        if (this.mFragmentManager.isStateSaved()) {
            return null;
        }
        String className = destination.getClassName();
        if (className.charAt(0) == '.') {
            className = this.mContext.getPackageName() + className;
        }
        Fragment instantiate = this.mFragmentManager.getFragmentFactory().instantiate(this.mContext.getClassLoader(), className);
        if (DialogFragment.class.isAssignableFrom(instantiate.getClass())) {
            DialogFragment dialogFragment = (DialogFragment) instantiate;
            dialogFragment.setArguments(bundle);
            dialogFragment.getLifecycle().addObserver(this.mObserver);
            FragmentManager fragmentManager = this.mFragmentManager;
            StringBuilder o = a.o(DIALOG_TAG);
            int i2 = this.mDialogCount;
            this.mDialogCount = i2 + 1;
            o.append(i2);
            dialogFragment.show(fragmentManager, o.toString());
            return destination;
        }
        StringBuilder o2 = a.o("Dialog destination ");
        o2.append(destination.getClassName());
        o2.append(" is not an instance of DialogFragment");
        throw new IllegalArgumentException(o2.toString());
    }
}
