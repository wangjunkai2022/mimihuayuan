package androidx.navigation;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
/* loaded from: classes.dex */
public final class NavHostController extends NavController {
    public NavHostController(@NonNull Context context) {
        super(context);
    }

    @Override // androidx.navigation.NavController
    public void enableOnBackPressed(boolean z) {
        super.enableOnBackPressed(z);
    }

    @Override // androidx.navigation.NavController
    public void setLifecycleOwner(@NonNull LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.navigation.NavController
    public void setOnBackPressedDispatcher(@NonNull OnBackPressedDispatcher onBackPressedDispatcher) {
        super.setOnBackPressedDispatcher(onBackPressedDispatcher);
    }

    @Override // androidx.navigation.NavController
    public void setViewModelStore(@NonNull ViewModelStore viewModelStore) {
        super.setViewModelStore(viewModelStore);
    }
}
