package androidx.navigation.ui;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {
    public final AppCompatActivity mActivity;

    public ActionBarOnDestinationChangedListener(@NonNull AppCompatActivity appCompatActivity, @NonNull AppBarConfiguration appBarConfiguration) {
        super(appCompatActivity.getDrawerToggleDelegate().getActionBarThemedContext(), appBarConfiguration);
        this.mActivity = appCompatActivity;
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    public void setNavigationIcon(Drawable drawable, @StringRes int i2) {
        ActionBar supportActionBar = this.mActivity.getSupportActionBar();
        if (drawable == null) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        this.mActivity.getDrawerToggleDelegate().setActionBarUpIndicator(drawable, i2);
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    public void setTitle(CharSequence charSequence) {
        this.mActivity.getSupportActionBar().setTitle(charSequence);
    }
}
