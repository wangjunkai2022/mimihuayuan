package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination> {
    public final SparseArrayCompat<NavDestination> mNodes;
    public int mStartDestId;
    public String mStartDestIdName;

    public NavGraph(@NonNull Navigator<? extends NavGraph> navigator) {
        super(navigator);
        this.mNodes = new SparseArrayCompat<>();
    }

    public final void addAll(@NonNull NavGraph navGraph) {
        Iterator<NavDestination> it = navGraph.iterator();
        while (it.hasNext()) {
            it.remove();
            addDestination(it.next());
        }
    }

    public final void addDestination(@NonNull NavDestination navDestination) {
        if (navDestination.getId() != 0) {
            NavDestination navDestination2 = this.mNodes.get(navDestination.getId());
            if (navDestination2 == navDestination) {
                return;
            }
            if (navDestination.getParent() == null) {
                if (navDestination2 != null) {
                    navDestination2.setParent(null);
                }
                navDestination.setParent(this);
                this.mNodes.put(navDestination.getId(), navDestination);
                return;
            }
            throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
        }
        throw new IllegalArgumentException("Destinations must have an id. Call setId() or include an android:id in your navigation XML.");
    }

    public final void addDestinations(@NonNull Collection<NavDestination> collection) {
        for (NavDestination navDestination : collection) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    public final void clear() {
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Nullable
    public final NavDestination findNode(@IdRes int i2) {
        return findNode(i2, true);
    }

    @Override // androidx.navigation.NavDestination
    @NonNull
    public String getDisplayName() {
        return getId() != 0 ? super.getDisplayName() : "the root navigation";
    }

    @NonNull
    public String getStartDestDisplayName() {
        if (this.mStartDestIdName == null) {
            this.mStartDestIdName = Integer.toString(this.mStartDestId);
        }
        return this.mStartDestIdName;
    }

    @IdRes
    public final int getStartDestination() {
        return this.mStartDestId;
    }

    @Override // java.lang.Iterable
    @NonNull
    public final Iterator<NavDestination> iterator() {
        return new Iterator<NavDestination>() { // from class: androidx.navigation.NavGraph.1
            public int mIndex = -1;
            public boolean mWentToNext = false;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.mIndex + 1 < NavGraph.this.mNodes.size();
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.mWentToNext) {
                    NavGraph.this.mNodes.valueAt(this.mIndex).setParent(null);
                    NavGraph.this.mNodes.removeAt(this.mIndex);
                    this.mIndex--;
                    this.mWentToNext = false;
                    return;
                }
                throw new IllegalStateException("You must call next() before you can remove an element");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public NavDestination next() {
                if (hasNext()) {
                    this.mWentToNext = true;
                    SparseArrayCompat<NavDestination> sparseArrayCompat = NavGraph.this.mNodes;
                    int i2 = this.mIndex + 1;
                    this.mIndex = i2;
                    return sparseArrayCompat.valueAt(i2);
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // androidx.navigation.NavDestination
    @Nullable
    public NavDestination.DeepLinkMatch matchDeepLink(@NonNull Uri uri) {
        NavDestination.DeepLinkMatch matchDeepLink = super.matchDeepLink(uri);
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            NavDestination.DeepLinkMatch matchDeepLink2 = it.next().matchDeepLink(uri);
            if (matchDeepLink2 != null && (matchDeepLink == null || matchDeepLink2.compareTo(matchDeepLink) > 0)) {
                matchDeepLink = matchDeepLink2;
            }
        }
        return matchDeepLink;
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super.onInflate(context, attributeSet);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavGraphNavigator);
        setStartDestination(obtainAttributes.getResourceId(androidx.navigation.common.R.styleable.NavGraphNavigator_startDestination, 0));
        this.mStartDestIdName = NavDestination.getDisplayName(context, this.mStartDestId);
        obtainAttributes.recycle();
    }

    public final void remove(@NonNull NavDestination navDestination) {
        int indexOfKey = this.mNodes.indexOfKey(navDestination.getId());
        if (indexOfKey >= 0) {
            this.mNodes.valueAt(indexOfKey).setParent(null);
            this.mNodes.removeAt(indexOfKey);
        }
    }

    public final void setStartDestination(@IdRes int i2) {
        this.mStartDestId = i2;
        this.mStartDestIdName = null;
    }

    @Nullable
    public final NavDestination findNode(@IdRes int i2, boolean z) {
        NavDestination navDestination = this.mNodes.get(i2);
        if (navDestination != null) {
            return navDestination;
        }
        if (!z || getParent() == null) {
            return null;
        }
        return getParent().findNode(i2);
    }

    public final void addDestinations(@NonNull NavDestination... navDestinationArr) {
        for (NavDestination navDestination : navDestinationArr) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }
}
