.class public Lchuangyuan/ycj/videolibrary/video/ExoDataBean;
.super Landroid/view/View$BaseSavedState;
.source "ExoDataBean.java"


# instance fields
.field public isLand:Z

.field public nameSwitch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public setSystemUiVisibility:I

.field public switchIndex:I


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public getNameSwitch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->nameSwitch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSetSystemUiVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setSystemUiVisibility:I

    return v0
.end method

.method public getSwitchIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->switchIndex:I

    return v0
.end method

.method public isLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->isLand:Z

    return v0
.end method

.method public setLand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->isLand:Z

    return-void
.end method

.method public setNameSwitch(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->nameSwitch:Ljava/util/ArrayList;

    return-void
.end method

.method public setSetSystemUiVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->setSystemUiVisibility:I

    return-void
.end method

.method public setSwitchIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/video/ExoDataBean;->switchIndex:I

    return-void
.end method
