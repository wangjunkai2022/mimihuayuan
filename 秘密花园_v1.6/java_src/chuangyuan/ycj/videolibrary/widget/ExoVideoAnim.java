package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.utils.ParamsCreator;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ExoVideoAnim extends View {
    public int circleRadius;
    public int circleSpacing;
    public int[] colors;
    public int increment;
    public RectF oval;
    public Paint paint;
    public List<CircleWrapper> wrappers;

    /* loaded from: classes.dex */
    public class CircleWrapper {
        public int diameter;
        public int dynamicDiameter;
        public int initDiameter;
        public int orientation;

        public CircleWrapper() {
        }
    }

    public ExoVideoAnim(@NonNull Context context) {
        super(context);
        this.colors = new int[]{-14848, -15415176, -16590337};
        this.paint = new Paint();
        this.oval = new RectF();
        this.increment = 2;
    }

    private void createWrappers() {
        this.wrappers = new ArrayList();
        int i2 = this.circleRadius * 2;
        CircleWrapper circleWrapper = new CircleWrapper();
        circleWrapper.diameter = i2;
        circleWrapper.initDiameter = i2;
        circleWrapper.dynamicDiameter = circleWrapper.initDiameter;
        circleWrapper.orientation = -1;
        this.wrappers.add(circleWrapper);
        CircleWrapper circleWrapper2 = new CircleWrapper();
        circleWrapper2.diameter = i2;
        double d2 = i2;
        circleWrapper2.initDiameter = (int) (0.75d * d2);
        circleWrapper2.dynamicDiameter = circleWrapper2.initDiameter;
        circleWrapper2.orientation = 1;
        this.wrappers.add(circleWrapper2);
        CircleWrapper circleWrapper3 = new CircleWrapper();
        circleWrapper3.diameter = i2;
        circleWrapper3.initDiameter = (int) (d2 * 0.5d);
        circleWrapper3.dynamicDiameter = circleWrapper3.initDiameter;
        circleWrapper3.orientation = 1;
        this.wrappers.add(circleWrapper3);
    }

    private void drawCircle01(Canvas canvas) {
        this.paint.setColor(this.colors[0]);
        CircleWrapper circleWrapper = this.wrappers.get(0);
        circleWrapper.dynamicDiameter = (circleWrapper.orientation * this.increment) + circleWrapper.dynamicDiameter;
        if (circleWrapper.dynamicDiameter >= circleWrapper.diameter) {
            circleWrapper.orientation = -1;
            circleWrapper.dynamicDiameter = circleWrapper.diameter;
        }
        if (circleWrapper.dynamicDiameter <= 0) {
            circleWrapper.orientation = 1;
            circleWrapper.dynamicDiameter = 0;
        }
        int width = ((getWidth() / 2) - ((((this.wrappers.size() - 1) * this.circleSpacing) + (this.wrappers.size() * (this.circleRadius * 2))) / 2)) + this.circleRadius;
        this.oval.left = width - (circleWrapper.dynamicDiameter / 2);
        this.oval.top = (getHeight() / 2) - (circleWrapper.dynamicDiameter / 2);
        RectF rectF = this.oval;
        rectF.right = rectF.left + circleWrapper.dynamicDiameter;
        RectF rectF2 = this.oval;
        rectF2.bottom = rectF2.top + circleWrapper.dynamicDiameter;
        canvas.drawArc(this.oval, 0.0f, 360.0f, false, this.paint);
    }

    private void drawCircle02(Canvas canvas) {
        this.paint.setColor(this.colors[1]);
        CircleWrapper circleWrapper = this.wrappers.get(1);
        CircleWrapper circleWrapper2 = this.wrappers.get(0);
        if (circleWrapper2.dynamicDiameter == circleWrapper2.initDiameter) {
            circleWrapper.dynamicDiameter = circleWrapper.initDiameter;
        } else {
            circleWrapper.dynamicDiameter = (circleWrapper.orientation * this.increment) + circleWrapper.dynamicDiameter;
            if (circleWrapper.dynamicDiameter >= circleWrapper.diameter) {
                circleWrapper.orientation = -1;
                circleWrapper.dynamicDiameter = circleWrapper.diameter;
            }
            if (circleWrapper.dynamicDiameter <= 0) {
                circleWrapper.orientation = 1;
                circleWrapper.dynamicDiameter = 0;
            }
        }
        int width = ((circleWrapper.diameter + this.circleSpacing) * 1) + ((getWidth() / 2) - ((((this.wrappers.size() - 1) * this.circleSpacing) + (this.wrappers.size() * (this.circleRadius * 2))) / 2)) + this.circleRadius;
        this.oval.left = width - (circleWrapper.dynamicDiameter / 2);
        this.oval.top = (getHeight() / 2) - (circleWrapper.dynamicDiameter / 2);
        RectF rectF = this.oval;
        rectF.right = rectF.left + circleWrapper.dynamicDiameter;
        RectF rectF2 = this.oval;
        rectF2.bottom = rectF2.top + circleWrapper.dynamicDiameter;
        canvas.drawArc(this.oval, 0.0f, 360.0f, false, this.paint);
    }

    private void drawCircle03(Canvas canvas) {
        this.paint.setColor(this.colors[2]);
        CircleWrapper circleWrapper = this.wrappers.get(2);
        CircleWrapper circleWrapper2 = this.wrappers.get(0);
        if (circleWrapper2.dynamicDiameter == circleWrapper2.initDiameter) {
            circleWrapper.dynamicDiameter = circleWrapper.initDiameter;
        } else {
            circleWrapper.dynamicDiameter = (circleWrapper.orientation * this.increment) + circleWrapper.dynamicDiameter;
            if (circleWrapper.dynamicDiameter >= circleWrapper.diameter) {
                circleWrapper.orientation = -1;
                circleWrapper.dynamicDiameter = circleWrapper.diameter;
            }
            if (circleWrapper.dynamicDiameter <= 0) {
                circleWrapper.orientation = 1;
                circleWrapper.dynamicDiameter = 0;
            }
        }
        int width = ((circleWrapper.diameter + this.circleSpacing) * 2) + ((getWidth() / 2) - ((((this.wrappers.size() - 1) * this.circleSpacing) + (this.wrappers.size() * (this.circleRadius * 2))) / 2)) + this.circleRadius;
        this.oval.left = width - (circleWrapper.dynamicDiameter / 2);
        this.oval.top = (getHeight() / 2) - (circleWrapper.dynamicDiameter / 2);
        RectF rectF = this.oval;
        rectF.right = rectF.left + circleWrapper.dynamicDiameter;
        RectF rectF2 = this.oval;
        rectF2.bottom = rectF2.top + circleWrapper.dynamicDiameter;
        canvas.drawArc(this.oval, 0.0f, 360.0f, false, this.paint);
    }

    private int getDefaultHeight() {
        return this.circleRadius * 2;
    }

    private int getDefaultWidth() {
        return ((this.wrappers.size() - 1) * this.circleSpacing) + (this.wrappers.size() * this.circleRadius * 2);
    }

    private int measureHeight(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int defaultHeight = getDefaultHeight();
        return mode == Integer.MIN_VALUE ? Math.min(defaultHeight, size) : defaultHeight;
    }

    private int measureWidth(int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        int defaultWidth = getDefaultWidth();
        return mode == Integer.MIN_VALUE ? Math.min(defaultWidth, size) : defaultWidth;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        drawCircle01(canvas);
        drawCircle02(canvas);
        drawCircle03(canvas);
        invalidate();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(measureWidth(i2), measureHeight(i3));
    }

    public void setColors(@ColorRes int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int[] iArr2 = this.colors;
            if (i2 >= iArr2.length) {
                return;
            }
            iArr2[i2] = iArr[i2];
        }
    }

    public ExoVideoAnim(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colors = new int[]{-14848, -15415176, -16590337};
        this.paint = new Paint();
        this.oval = new RectF();
        this.increment = 2;
        ParamsCreator paramsCreator = new ParamsCreator(getContext());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.exoVideoAnim);
        this.circleRadius = (int) obtainStyledAttributes.getDimension(R.styleable.exoVideoAnim_circleRadius, paramsCreator.getDefaultCircleRadius());
        this.circleSpacing = (int) obtainStyledAttributes.getDimension(R.styleable.exoVideoAnim_circleSpacing, paramsCreator.getDefaultCircleSpacing());
        int i2 = (int) ((this.circleRadius * 2.0d) / ((int) ((((obtainStyledAttributes.getInt(R.styleable.exoVideoAnim_cycle, 2000) / 2) * 1.0d) / 1000.0d) * 83.0d)));
        this.increment = i2;
        this.increment = i2 <= 0 ? 1 : i2;
        createWrappers();
    }
}
