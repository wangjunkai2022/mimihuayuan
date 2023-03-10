package androidx.navigation.ui;

import android.annotation.SuppressLint;
import android.view.Menu;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavGraph;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class AppBarConfiguration {
    @Nullable
    public final DrawerLayout mDrawerLayout;
    @Nullable
    public final OnNavigateUpListener mFallbackOnNavigateUpListener;
    @NonNull
    public final Set<Integer> mTopLevelDestinations;

    /* loaded from: classes.dex */
    public interface OnNavigateUpListener {
        boolean onNavigateUp();
    }

    @Nullable
    public DrawerLayout getDrawerLayout() {
        return this.mDrawerLayout;
    }

    @Nullable
    public OnNavigateUpListener getFallbackOnNavigateUpListener() {
        return this.mFallbackOnNavigateUpListener;
    }

    @NonNull
    public Set<Integer> getTopLevelDestinations() {
        return this.mTopLevelDestinations;
    }

    public AppBarConfiguration(@NonNull Set<Integer> set, @Nullable DrawerLayout drawerLayout, @Nullable OnNavigateUpListener onNavigateUpListener) {
        this.mTopLevelDestinations = set;
        this.mDrawerLayout = drawerLayout;
        this.mFallbackOnNavigateUpListener = onNavigateUpListener;
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        @Nullable
        public DrawerLayout mDrawerLayout;
        @Nullable
        public OnNavigateUpListener mFallbackOnNavigateUpListener;
        @NonNull
        public final Set<Integer> mTopLevelDestinations;

        public Builder(@NonNull NavGraph navGraph) {
            HashSet hashSet = new HashSet();
            this.mTopLevelDestinations = hashSet;
            hashSet.add(Integer.valueOf(NavigationUI.findStartDestination(navGraph).getId()));
        }

        @NonNull
        @SuppressLint({"SyntheticAccessor"})
        public AppBarConfiguration build() {
            return new AppBarConfiguration(this.mTopLevelDestinations, this.mDrawerLayout, this.mFallbackOnNavigateUpListener);
        }

        @NonNull
        public Builder setDrawerLayout(@Nullable DrawerLayout drawerLayout) {
            this.mDrawerLayout = drawerLayout;
            return this;
        }

        @NonNull
        public Builder setFallbackOnNavigateUpListener(@Nullable OnNavigateUpListener onNavigateUpListener) {
            this.mFallbackOnNavigateUpListener = onNavigateUpListener;
            return this;
        }

        public Builder(@NonNull Menu menu) {
            this.mTopLevelDestinations = new HashSet();
            int size = menu.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mTopLevelDestinations.add(Integer.valueOf(menu.getItem(i2).getItemId()));
            }
        }

        public Builder(@NonNull int... iArr) {
            this.mTopLevelDestinations = new HashSet();
            for (int i2 : iArr) {
                this.mTopLevelDestinations.add(Integer.valueOf(i2));
            }
        }

        public Builder(@NonNull Set<Integer> set) {
            HashSet hashSet = new HashSet();
            this.mTopLevelDestinations = hashSet;
            hashSet.addAll(set);
        }
    }
}
