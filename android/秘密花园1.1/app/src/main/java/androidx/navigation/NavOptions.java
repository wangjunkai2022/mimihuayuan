package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class NavOptions {
    @AnimRes
    @AnimatorRes
    public int mEnterAnim;
    @AnimRes
    @AnimatorRes
    public int mExitAnim;
    @AnimRes
    @AnimatorRes
    public int mPopEnterAnim;
    @AnimRes
    @AnimatorRes
    public int mPopExitAnim;
    @IdRes
    public int mPopUpTo;
    public boolean mPopUpToInclusive;
    public boolean mSingleTop;

    /* loaded from: classes.dex */
    public static final class Builder {
        public boolean mPopUpToInclusive;
        public boolean mSingleTop;
        @IdRes
        public int mPopUpTo = -1;
        @AnimRes
        @AnimatorRes
        public int mEnterAnim = -1;
        @AnimRes
        @AnimatorRes
        public int mExitAnim = -1;
        @AnimRes
        @AnimatorRes
        public int mPopEnterAnim = -1;
        @AnimRes
        @AnimatorRes
        public int mPopExitAnim = -1;

        @NonNull
        public NavOptions build() {
            return new NavOptions(this.mSingleTop, this.mPopUpTo, this.mPopUpToInclusive, this.mEnterAnim, this.mExitAnim, this.mPopEnterAnim, this.mPopExitAnim);
        }

        @NonNull
        public Builder setEnterAnim(@AnimRes @AnimatorRes int i2) {
            this.mEnterAnim = i2;
            return this;
        }

        @NonNull
        public Builder setExitAnim(@AnimRes @AnimatorRes int i2) {
            this.mExitAnim = i2;
            return this;
        }

        @NonNull
        public Builder setLaunchSingleTop(boolean z) {
            this.mSingleTop = z;
            return this;
        }

        @NonNull
        public Builder setPopEnterAnim(@AnimRes @AnimatorRes int i2) {
            this.mPopEnterAnim = i2;
            return this;
        }

        @NonNull
        public Builder setPopExitAnim(@AnimRes @AnimatorRes int i2) {
            this.mPopExitAnim = i2;
            return this;
        }

        @NonNull
        public Builder setPopUpTo(@IdRes int i2, boolean z) {
            this.mPopUpTo = i2;
            this.mPopUpToInclusive = z;
            return this;
        }
    }

    public NavOptions(boolean z, @IdRes int i2, boolean z2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5, @AnimRes @AnimatorRes int i6) {
        this.mSingleTop = z;
        this.mPopUpTo = i2;
        this.mPopUpToInclusive = z2;
        this.mEnterAnim = i3;
        this.mExitAnim = i4;
        this.mPopEnterAnim = i5;
        this.mPopExitAnim = i6;
    }

    @AnimRes
    @AnimatorRes
    public int getEnterAnim() {
        return this.mEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getExitAnim() {
        return this.mExitAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getPopEnterAnim() {
        return this.mPopEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getPopExitAnim() {
        return this.mPopExitAnim;
    }

    @IdRes
    public int getPopUpTo() {
        return this.mPopUpTo;
    }

    public boolean isPopUpToInclusive() {
        return this.mPopUpToInclusive;
    }

    public boolean shouldLaunchSingleTop() {
        return this.mSingleTop;
    }
}
