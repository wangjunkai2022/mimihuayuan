.class public Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;
.super Lf/i/a/a/k1/a;
.source "ExoDefaultTimeBar.java"


# instance fields
.field public openSeek:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lf/i/a/a/k1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->openSeek:Z

    .line 3
    new-instance v1, Lf/i/a/a/k1/a;

    invoke-direct {v1, p1, v0}, Lf/i/a/a/k1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lf/i/a/a/k1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->openSeek:Z

    .line 6
    new-instance v0, Lf/i/a/a/k1/a;

    invoke-direct {v0, p1, p2}, Lf/i/a/a/k1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isOpenSeek()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->openSeek:Z

    return v0
.end method

.method public setOpenSeek(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchuangyuan/ycj/videolibrary/widget/ExoDefaultTimeBar;->openSeek:Z

    return-void
.end method
