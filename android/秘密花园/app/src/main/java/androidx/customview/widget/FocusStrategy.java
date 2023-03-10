package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
public class FocusStrategy {

    /* loaded from: classes.dex */
    public interface BoundsAdapter<T> {
        void obtainBounds(T t, Rect rect);
    }

    /* loaded from: classes.dex */
    public interface CollectionAdapter<T, V> {
        V get(T t, int i2);

        int size(T t);
    }

    /* loaded from: classes.dex */
    public static class SequentialComparator<T> implements Comparator<T> {
        public final BoundsAdapter<T> mAdapter;
        public final boolean mIsLayoutRtl;
        public final Rect mTemp1 = new Rect();
        public final Rect mTemp2 = new Rect();

        public SequentialComparator(boolean z, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t, rect);
            this.mAdapter.obtainBounds(t2, rect2);
            int i2 = rect.top;
            int i3 = rect2.top;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            int i4 = rect.left;
            int i5 = rect2.left;
            if (i4 < i5) {
                if (this.mIsLayoutRtl) {
                    return 1;
                }
                return -1;
            } else if (i4 <= i5) {
                int i6 = rect.bottom;
                int i7 = rect2.bottom;
                if (i6 < i7) {
                    return -1;
                }
                if (i6 > i7) {
                    return 1;
                }
                int i8 = rect.right;
                int i9 = rect2.right;
                if (i8 < i9) {
                    if (this.mIsLayoutRtl) {
                        return 1;
                    }
                    return -1;
                } else if (i8 <= i9) {
                    return 0;
                } else {
                    if (this.mIsLayoutRtl) {
                        return -1;
                    }
                    return 1;
                }
            } else if (this.mIsLayoutRtl) {
                return -1;
            } else {
                return 1;
            }
        }
    }

    public static boolean beamBeats(int i2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean beamsOverlap = beamsOverlap(i2, rect, rect2);
        if (beamsOverlap(i2, rect, rect3) || !beamsOverlap) {
            return false;
        }
        if (isToDirectionOf(i2, rect, rect3) && i2 != 17 && i2 != 66 && majorAxisDistance(i2, rect, rect2) >= majorAxisDistanceToFarEdge(i2, rect, rect3)) {
            return false;
        }
        return true;
    }

    public static boolean beamsOverlap(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                return false;
            }
            return true;
        }
        if (rect2.bottom < rect.top || rect2.top > rect.bottom) {
            return false;
        }
        return true;
    }

    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l2, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, @NonNull Rect rect, int i2) {
        Rect rect2 = new Rect(rect);
        if (i2 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i2 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i2 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i2 == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t2 = null;
        int size = collectionAdapter.size(l2);
        Rect rect3 = new Rect();
        for (int i3 = 0; i3 < size; i3++) {
            T t3 = collectionAdapter.get(l2, i3);
            if (t3 != t) {
                boundsAdapter.obtainBounds(t3, rect3);
                if (isBetterCandidate(i2, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t2 = t3;
                }
            }
        }
        return t2;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l2, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, int i2, boolean z, boolean z2) {
        int size = collectionAdapter.size(l2);
        ArrayList arrayList = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.add(collectionAdapter.get(l2, i3));
        }
        Collections.sort(arrayList, new SequentialComparator(z, boundsAdapter));
        if (i2 == 1) {
            return (T) getPreviousFocusable(t, arrayList, z2);
        }
        if (i2 == 2) {
            return (T) getNextFocusable(t, arrayList, z2);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    public static <T> T getNextFocusable(T t, ArrayList<T> arrayList, boolean z) {
        int i2;
        int size = arrayList.size();
        if (t == null) {
            i2 = -1;
        } else {
            i2 = arrayList.lastIndexOf(t);
        }
        int i3 = i2 + 1;
        if (i3 < size) {
            return arrayList.get(i3);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    public static <T> T getPreviousFocusable(T t, ArrayList<T> arrayList, boolean z) {
        int i2;
        int size = arrayList.size();
        if (t == null) {
            i2 = size;
        } else {
            i2 = arrayList.indexOf(t);
        }
        int i3 = i2 - 1;
        if (i3 >= 0) {
            return arrayList.get(i3);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    public static int getWeightedDistanceFor(int i2, int i3) {
        return (i3 * i3) + (i2 * 13 * i2);
    }

    public static boolean isBetterCandidate(int i2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (!isCandidate(rect, rect2, i2)) {
            return false;
        }
        if (!isCandidate(rect, rect3, i2) || beamBeats(i2, rect, rect2, rect3)) {
            return true;
        }
        if (!beamBeats(i2, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i2, rect, rect2), minorAxisDistance(i2, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i2, rect, rect3), minorAxisDistance(i2, rect, rect3))) {
            return true;
        }
        return false;
    }

    public static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int i2) {
        if (i2 == 17) {
            int i3 = rect.right;
            int i4 = rect2.right;
            if ((i3 > i4 || rect.left >= i4) && rect.left > rect2.left) {
                return true;
            }
            return false;
        } else if (i2 == 33) {
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            if ((i5 > i6 || rect.top >= i6) && rect.top > rect2.top) {
                return true;
            }
            return false;
        } else if (i2 == 66) {
            int i7 = rect.left;
            int i8 = rect2.left;
            if ((i7 < i8 || rect.right <= i8) && rect.right < rect2.right) {
                return true;
            }
            return false;
        } else if (i2 == 130) {
            int i9 = rect.top;
            int i10 = rect2.top;
            return (i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    public static boolean isToDirectionOf(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 == 130) {
                        return rect.bottom <= rect2.top;
                    }
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                } else if (rect.right <= rect2.left) {
                    return true;
                } else {
                    return false;
                }
            } else if (rect.top >= rect2.bottom) {
                return true;
            } else {
                return false;
            }
        } else if (rect.left >= rect2.right) {
            return true;
        } else {
            return false;
        }
    }

    public static int majorAxisDistance(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i2, rect, rect2));
    }

    public static int majorAxisDistanceRaw(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.right;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.bottom;
        } else if (i2 == 66) {
            i3 = rect2.left;
            i4 = rect.right;
        } else if (i2 == 130) {
            i3 = rect2.top;
            i4 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i3 - i4;
    }

    public static int majorAxisDistanceToFarEdge(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i2, rect, rect2));
    }

    public static int majorAxisDistanceToFarEdgeRaw(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.left;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.top;
        } else if (i2 == 66) {
            i3 = rect2.right;
            i4 = rect.right;
        } else if (i2 == 130) {
            i3 = rect2.bottom;
            i4 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i3 - i4;
    }

    public static int minorAxisDistance(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }
}
