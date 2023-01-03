.class public final Lf/j/a/a/m/a;
.super Ljava/lang/Object;
.source "DesignUtil.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lf/j/a/a/l/a;


# direct methods
.method public constructor <init>(Lf/j/a/a/l/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j/a/a/m/a;->a:Lf/j/a/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/j/a/a/m/a;->a:Lf/j/a/a/l/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    add-int/2addr p1, p2

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    check-cast v0, Lf/j/a/a/j/a;

    .line 4
    iput-boolean v3, v0, Lf/j/a/a/j/a;->g:Z

    .line 5
    iput-boolean v1, v0, Lf/j/a/a/j/a;->h:Z

    return-void
.end method
