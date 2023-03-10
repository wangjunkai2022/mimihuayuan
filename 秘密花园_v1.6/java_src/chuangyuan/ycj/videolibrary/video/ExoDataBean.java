package chuangyuan.ycj.videolibrary.video;

import android.os.Parcelable;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ExoDataBean extends View.BaseSavedState {
    public boolean isLand;
    public ArrayList<String> nameSwitch;
    public int setSystemUiVisibility;
    public int switchIndex;

    public ExoDataBean(Parcelable parcelable) {
        super(parcelable);
    }

    public ArrayList<String> getNameSwitch() {
        return this.nameSwitch;
    }

    public int getSetSystemUiVisibility() {
        return this.setSystemUiVisibility;
    }

    public int getSwitchIndex() {
        return this.switchIndex;
    }

    public boolean isLand() {
        return this.isLand;
    }

    public void setLand(boolean z) {
        this.isLand = z;
    }

    public void setNameSwitch(ArrayList<String> arrayList) {
        this.nameSwitch = arrayList;
    }

    public void setSetSystemUiVisibility(int i2) {
        this.setSystemUiVisibility = i2;
    }

    public void setSwitchIndex(int i2) {
        this.switchIndex = i2;
    }
}
