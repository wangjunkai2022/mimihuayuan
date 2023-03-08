package f.i.a.a.k1;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import chuangyuan.ycj.videolibrary.R;
import f.i.a.a.k1.g;
import f.i.a.a.m1.h0;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: DefaultTimeBar.java */
/* loaded from: classes.dex */
public class a extends View implements g {
    public static final int DEFAULT_AD_MARKER_COLOR = -1291845888;
    public static final int DEFAULT_AD_MARKER_WIDTH_DP = 4;
    public static final int DEFAULT_BAR_HEIGHT_DP = 4;
    public static final int DEFAULT_INCREMENT_COUNT = 20;
    public static final int DEFAULT_PLAYED_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_DISABLED_SIZE_DP = 0;
    public static final int DEFAULT_SCRUBBER_DRAGGED_SIZE_DP = 16;
    public static final int DEFAULT_SCRUBBER_ENABLED_SIZE_DP = 12;
    public static final int DEFAULT_TOUCH_TARGET_HEIGHT_DP = 26;
    public static final int FINE_SCRUB_RATIO = 3;
    public static final int FINE_SCRUB_Y_THRESHOLD_DP = -50;
    public static final long STOP_SCRUBBING_TIMEOUT_MS = 1000;
    public int adGroupCount;
    public long[] adGroupTimesMs;
    public final Paint adMarkerPaint;
    public final int adMarkerWidth;
    public final int barHeight;
    public final Rect bufferedBar;
    public final Paint bufferedPaint;
    public long bufferedPosition;
    public long duration;
    public final int fineScrubYThreshold;
    public final StringBuilder formatBuilder;
    public final Formatter formatter;
    public int keyCountIncrement;
    public long keyTimeIncrement;
    public int lastCoarseScrubXPosition;
    public final CopyOnWriteArraySet<g.a> listeners;
    public int[] locationOnScreen;
    public boolean[] playedAdGroups;
    public final Paint playedAdMarkerPaint;
    public final Paint playedPaint;
    public long position;
    public final Rect progressBar;
    public long scrubPosition;
    public final Rect scrubberBar;
    public final int scrubberDisabledSize;
    public final int scrubberDraggedSize;
    public final Drawable scrubberDrawable;
    public final int scrubberEnabledSize;
    public final int scrubberPadding;
    public final Paint scrubberPaint;
    public boolean scrubbing;
    public final Rect seekBounds;
    public final Runnable stopScrubbingRunnable;
    public Point touchPosition;
    public final int touchTargetHeight;
    public final Paint unplayedPaint;

    /* compiled from: DefaultTimeBar.java */
    /* renamed from: f.i.a.a.k1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0086a implements Runnable {
        public RunnableC0086a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.stopScrubbing(false);
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.seekBounds = new Rect();
        this.progressBar = new Rect();
        this.bufferedBar = new Rect();
        this.scrubberBar = new Rect();
        this.playedPaint = new Paint();
        this.bufferedPaint = new Paint();
        this.unplayedPaint = new Paint();
        this.adMarkerPaint = new Paint();
        this.playedAdMarkerPaint = new Paint();
        Paint paint = new Paint();
        this.scrubberPaint = paint;
        paint.setAntiAlias(true);
        this.listeners = new CopyOnWriteArraySet<>();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.fineScrubYThreshold = dpToPx(displayMetrics, -50);
        int dpToPx = dpToPx(displayMetrics, 4);
        int dpToPx2 = dpToPx(displayMetrics, 26);
        int dpToPx3 = dpToPx(displayMetrics, 4);
        int dpToPx4 = dpToPx(displayMetrics, 12);
        int dpToPx5 = dpToPx(displayMetrics, 0);
        int dpToPx6 = dpToPx(displayMetrics, 16);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DefaultTimeBar, 0, 0);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.DefaultTimeBar_scrubber_drawable);
                this.scrubberDrawable = drawable;
                if (drawable != null) {
                    setDrawableLayoutDirection(drawable);
                    dpToPx2 = Math.max(this.scrubberDrawable.getMinimumHeight(), dpToPx2);
                }
                this.barHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_bar_height, dpToPx);
                this.touchTargetHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_touch_target_height, dpToPx2);
                this.adMarkerWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_ad_marker_width, dpToPx3);
                this.scrubberEnabledSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_enabled_size, dpToPx4);
                this.scrubberDisabledSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_disabled_size, dpToPx5);
                this.scrubberDraggedSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DefaultTimeBar_scrubber_dragged_size, dpToPx6);
                int i2 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_played_color, -1);
                int i3 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_scrubber_color, getDefaultScrubberColor(i2));
                int i4 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_buffered_color, getDefaultBufferedColor(i2));
                int i5 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_unplayed_color, getDefaultUnplayedColor(i2));
                int i6 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_ad_marker_color, DEFAULT_AD_MARKER_COLOR);
                int i7 = obtainStyledAttributes.getInt(R.styleable.DefaultTimeBar_played_ad_marker_color, getDefaultPlayedAdMarkerColor(i6));
                this.playedPaint.setColor(i2);
                this.scrubberPaint.setColor(i3);
                this.bufferedPaint.setColor(i4);
                this.unplayedPaint.setColor(i5);
                this.adMarkerPaint.setColor(i6);
                this.playedAdMarkerPaint.setColor(i7);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.barHeight = dpToPx;
            this.touchTargetHeight = dpToPx2;
            this.adMarkerWidth = dpToPx3;
            this.scrubberEnabledSize = dpToPx4;
            this.scrubberDisabledSize = dpToPx5;
            this.scrubberDraggedSize = dpToPx6;
            this.playedPaint.setColor(-1);
            this.scrubberPaint.setColor(getDefaultScrubberColor(-1));
            this.bufferedPaint.setColor(getDefaultBufferedColor(-1));
            this.unplayedPaint.setColor(getDefaultUnplayedColor(-1));
            this.adMarkerPaint.setColor(DEFAULT_AD_MARKER_COLOR);
            this.scrubberDrawable = null;
        }
        this.formatBuilder = new StringBuilder();
        this.formatter = new Formatter(this.formatBuilder, Locale.getDefault());
        this.stopScrubbingRunnable = new RunnableC0086a();
        Drawable drawable2 = this.scrubberDrawable;
        if (drawable2 != null) {
            this.scrubberPadding = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.scrubberPadding = (Math.max(this.scrubberDisabledSize, Math.max(this.scrubberEnabledSize, this.scrubberDraggedSize)) + 1) / 2;
        }
        this.duration = -9223372036854775807L;
        this.keyTimeIncrement = -9223372036854775807L;
        this.keyCountIncrement = 20;
        setFocusable(true);
        if (h0.a >= 16) {
            maybeSetImportantForAccessibilityV16();
        }
    }

    public static int dpToPx(DisplayMetrics displayMetrics, int i2) {
        return (int) ((i2 * displayMetrics.density) + 0.5f);
    }

    private void drawPlayhead(Canvas canvas) {
        int i2;
        if (this.duration <= 0) {
            return;
        }
        Rect rect = this.scrubberBar;
        int o = h0.o(rect.right, rect.left, this.progressBar.right);
        int centerY = this.scrubberBar.centerY();
        Drawable drawable = this.scrubberDrawable;
        if (drawable == null) {
            if (!this.scrubbing && !isFocused()) {
                i2 = isEnabled() ? this.scrubberEnabledSize : this.scrubberDisabledSize;
            } else {
                i2 = this.scrubberDraggedSize;
            }
            canvas.drawCircle(o, centerY, i2 / 2, this.scrubberPaint);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
        int intrinsicHeight = this.scrubberDrawable.getIntrinsicHeight() / 2;
        this.scrubberDrawable.setBounds(o - intrinsicWidth, centerY - intrinsicHeight, o + intrinsicWidth, centerY + intrinsicHeight);
        this.scrubberDrawable.draw(canvas);
    }

    private void drawTimeBar(Canvas canvas) {
        int height = this.progressBar.height();
        int centerY = this.progressBar.centerY() - (height / 2);
        int i2 = height + centerY;
        if (this.duration <= 0) {
            Rect rect = this.progressBar;
            canvas.drawRect(rect.left, centerY, rect.right, i2, this.unplayedPaint);
            return;
        }
        Rect rect2 = this.bufferedBar;
        int i3 = rect2.left;
        int i4 = rect2.right;
        int max = Math.max(Math.max(this.progressBar.left, i4), this.scrubberBar.right);
        int i5 = this.progressBar.right;
        if (max < i5) {
            canvas.drawRect(max, centerY, i5, i2, this.unplayedPaint);
        }
        int max2 = Math.max(i3, this.scrubberBar.right);
        if (i4 > max2) {
            canvas.drawRect(max2, centerY, i4, i2, this.bufferedPaint);
        }
        if (this.scrubberBar.width() > 0) {
            Rect rect3 = this.scrubberBar;
            canvas.drawRect(rect3.left, centerY, rect3.right, i2, this.playedPaint);
        }
        int i6 = this.adMarkerWidth / 2;
        for (int i7 = 0; i7 < this.adGroupCount; i7++) {
            long p = h0.p(this.adGroupTimesMs[i7], 0L, this.duration);
            Rect rect4 = this.progressBar;
            int min = Math.min(rect4.width() - this.adMarkerWidth, Math.max(0, ((int) ((this.progressBar.width() * p) / this.duration)) - i6)) + rect4.left;
            canvas.drawRect(min, centerY, min + this.adMarkerWidth, i2, this.playedAdGroups[i7] ? this.playedAdMarkerPaint : this.adMarkerPaint);
        }
    }

    public static int getDefaultBufferedColor(int i2) {
        return (i2 & ViewCompat.MEASURED_SIZE_MASK) | (-872415232);
    }

    public static int getDefaultPlayedAdMarkerColor(int i2) {
        return (i2 & ViewCompat.MEASURED_SIZE_MASK) | 855638016;
    }

    public static int getDefaultScrubberColor(int i2) {
        return i2 | (-16777216);
    }

    public static int getDefaultUnplayedColor(int i2) {
        return (i2 & ViewCompat.MEASURED_SIZE_MASK) | 855638016;
    }

    private long getPositionIncrement() {
        long j2 = this.keyTimeIncrement;
        if (j2 == -9223372036854775807L) {
            long j3 = this.duration;
            if (j3 == -9223372036854775807L) {
                return 0L;
            }
            return j3 / this.keyCountIncrement;
        }
        return j2;
    }

    private String getProgressText() {
        return h0.L(this.formatBuilder, this.formatter, this.position);
    }

    private long getScrubberPosition() {
        if (this.progressBar.width() <= 0 || this.duration == -9223372036854775807L) {
            return 0L;
        }
        return (this.scrubberBar.width() * this.duration) / this.progressBar.width();
    }

    private boolean isInSeekBar(float f2, float f3) {
        return this.seekBounds.contains((int) f2, (int) f3);
    }

    @TargetApi(16)
    private void maybeSetImportantForAccessibilityV16() {
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private void positionScrubber(float f2) {
        Rect rect = this.scrubberBar;
        Rect rect2 = this.progressBar;
        rect.right = h0.o((int) f2, rect2.left, rect2.right);
    }

    private Point resolveRelativeTouchPosition(MotionEvent motionEvent) {
        if (this.locationOnScreen == null) {
            this.locationOnScreen = new int[2];
            this.touchPosition = new Point();
        }
        getLocationOnScreen(this.locationOnScreen);
        this.touchPosition.set(((int) motionEvent.getRawX()) - this.locationOnScreen[0], ((int) motionEvent.getRawY()) - this.locationOnScreen[1]);
        return this.touchPosition;
    }

    private boolean scrubIncrementally(long j2) {
        if (this.duration <= 0) {
            return false;
        }
        long scrubberPosition = getScrubberPosition();
        long p = h0.p(scrubberPosition + j2, 0L, this.duration);
        this.scrubPosition = p;
        if (p == scrubberPosition) {
            return false;
        }
        if (!this.scrubbing) {
            startScrubbing();
        }
        Iterator<g.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().c(this, this.scrubPosition);
        }
        update();
        return true;
    }

    private boolean setDrawableLayoutDirection(Drawable drawable) {
        return h0.a >= 23 && setDrawableLayoutDirection(drawable, getLayoutDirection());
    }

    private void startScrubbing() {
        this.scrubbing = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<g.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().d(this, getScrubberPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopScrubbing(boolean z) {
        this.scrubbing = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<g.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().f(this, getScrubberPosition(), z);
        }
    }

    private void update() {
        this.bufferedBar.set(this.progressBar);
        this.scrubberBar.set(this.progressBar);
        long j2 = this.scrubbing ? this.scrubPosition : this.position;
        if (this.duration > 0) {
            int width = (int) ((this.progressBar.width() * this.bufferedPosition) / this.duration);
            Rect rect = this.bufferedBar;
            Rect rect2 = this.progressBar;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.progressBar.width() * j2) / this.duration);
            Rect rect3 = this.scrubberBar;
            Rect rect4 = this.progressBar;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.bufferedBar;
            int i2 = this.progressBar.left;
            rect5.right = i2;
            this.scrubberBar.right = i2;
        }
        invalidate(this.seekBounds);
    }

    private void updateDrawableState() {
        Drawable drawable = this.scrubberDrawable;
        if (drawable != null && drawable.isStateful() && this.scrubberDrawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // f.i.a.a.k1.g
    public void addListener(g.a aVar) {
        this.listeners.add(aVar);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    public boolean isOpenSeek() {
        return true;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.scrubberDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        drawTimeBar(canvas);
        drawPlayhead(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName(a.class.getName());
    }

    @Override // android.view.View
    @TargetApi(21)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(a.class.getCanonicalName());
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.duration <= 0) {
            return;
        }
        int i2 = h0.a;
        if (i2 >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else if (i2 >= 16) {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L36
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L36
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.scrubIncrementally(r0)
            if (r0 == 0) goto L36
            java.lang.Runnable r5 = r4.stopScrubbingRunnable
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.stopScrubbingRunnable
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.scrubbing
            if (r0 == 0) goto L36
            java.lang.Runnable r5 = r4.stopScrubbingRunnable
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.stopScrubbingRunnable
            r5.run()
            return r3
        L36:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.k1.a.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6 = ((i5 - i3) - this.touchTargetHeight) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i4 - i2) - getPaddingRight();
        int i7 = this.touchTargetHeight;
        int i8 = ((i7 - this.barHeight) / 2) + i6;
        this.seekBounds.set(paddingLeft, i6, paddingRight, i7 + i6);
        Rect rect = this.progressBar;
        Rect rect2 = this.seekBounds;
        int i9 = rect2.left;
        int i10 = this.scrubberPadding;
        rect.set(i9 + i10, i8, rect2.right - i10, this.barHeight + i8);
        update();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == 0) {
            size = this.touchTargetHeight;
        } else if (mode != 1073741824) {
            size = Math.min(this.touchTargetHeight, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i2), size);
        updateDrawableState();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        Drawable drawable = this.scrubberDrawable;
        if (drawable == null || !setDrawableLayoutDirection(drawable, i2)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
        if (r3 != 3) goto L37;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L90
            long r2 = r7.duration
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L11
            goto L90
        L11:
            android.graphics.Point r0 = r7.resolveRelativeTouchPosition(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L75
            r5 = 3
            if (r3 == r4) goto L66
            r6 = 2
            if (r3 == r6) goto L29
            if (r3 == r5) goto L66
            goto L90
        L29:
            boolean r8 = r7.scrubbing
            if (r8 == 0) goto L90
            int r8 = r7.fineScrubYThreshold
            if (r0 >= r8) goto L3b
            int r8 = r7.lastCoarseScrubXPosition
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r2 = r2 + r8
            float r8 = (float) r2
            r7.positionScrubber(r8)
            goto L41
        L3b:
            r7.lastCoarseScrubXPosition = r2
            float r8 = (float) r2
            r7.positionScrubber(r8)
        L41:
            long r0 = r7.getScrubberPosition()
            r7.scrubPosition = r0
            java.util.concurrent.CopyOnWriteArraySet<f.i.a.a.k1.g$a> r8 = r7.listeners
            java.util.Iterator r8 = r8.iterator()
        L4d:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r8.next()
            f.i.a.a.k1.g$a r0 = (f.i.a.a.k1.g.a) r0
            long r1 = r7.scrubPosition
            r0.c(r7, r1)
            goto L4d
        L5f:
            r7.update()
            r7.invalidate()
            return r4
        L66:
            boolean r0 = r7.scrubbing
            if (r0 == 0) goto L90
            int r8 = r8.getAction()
            if (r8 != r5) goto L71
            r1 = 1
        L71:
            r7.stopScrubbing(r1)
            return r4
        L75:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.isInSeekBar(r8, r0)
            if (r0 == 0) goto L90
            r7.positionScrubber(r8)
            r7.startScrubbing()
            long r0 = r7.getScrubberPosition()
            r7.scrubPosition = r0
            r7.update()
            r7.invalidate()
            return r4
        L90:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.k1.a.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    @TargetApi(16)
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (super.performAccessibilityAction(i2, bundle)) {
            return true;
        }
        if (this.duration <= 0) {
            return false;
        }
        if (i2 == 8192) {
            if (scrubIncrementally(-getPositionIncrement())) {
                stopScrubbing(false);
            }
        } else if (i2 != 4096) {
            return false;
        } else {
            if (scrubIncrementally(getPositionIncrement())) {
                stopScrubbing(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void removeListener(g.a aVar) {
        this.listeners.remove(aVar);
    }

    @Override // f.i.a.a.k1.g
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i2) {
        c.a.a.b.g.h.m(i2 == 0 || !(jArr == null || zArr == null));
        this.adGroupCount = i2;
        this.adGroupTimesMs = jArr;
        this.playedAdGroups = zArr;
        update();
    }

    public void setAdMarkerColor(@ColorInt int i2) {
        this.adMarkerPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    public void setBufferedColor(@ColorInt int i2) {
        this.bufferedPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    @Override // f.i.a.a.k1.g
    public void setBufferedPosition(long j2) {
        this.bufferedPosition = j2;
        update();
    }

    @Override // f.i.a.a.k1.g
    public void setDuration(long j2) {
        this.duration = j2;
        if (this.scrubbing && j2 == -9223372036854775807L) {
            stopScrubbing(true);
        }
        update();
    }

    @Override // android.view.View, f.i.a.a.k1.g
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.scrubbing || z) {
            return;
        }
        stopScrubbing(true);
    }

    public void setKeyCountIncrement(int i2) {
        c.a.a.b.g.h.m(i2 > 0);
        this.keyCountIncrement = i2;
        this.keyTimeIncrement = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j2) {
        c.a.a.b.g.h.m(j2 > 0);
        this.keyCountIncrement = -1;
        this.keyTimeIncrement = j2;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i2) {
        this.playedAdMarkerPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    public void setPlayedColor(@ColorInt int i2) {
        this.playedPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    @Override // f.i.a.a.k1.g
    public void setPosition(long j2) {
        this.position = j2;
        setContentDescription(getProgressText());
        update();
    }

    public void setScrubberColor(@ColorInt int i2) {
        this.scrubberPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    public void setUnplayedColor(@ColorInt int i2) {
        this.unplayedPaint.setColor(i2);
        invalidate(this.seekBounds);
    }

    public static boolean setDrawableLayoutDirection(Drawable drawable, int i2) {
        return h0.a >= 23 && drawable.setLayoutDirection(i2);
    }
}
