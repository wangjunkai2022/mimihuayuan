.class public Lf/d/a/s/e;
.super Lf/d/a/s/a;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/s/a<",
        "Lf/d/a/s/e;",
        ">;"
    }
.end annotation


# static fields
.field public static A:Lf/d/a/s/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/s/a;-><init>()V

    return-void
.end method

.method public static B(Lf/d/a/o/l;)Lf/d/a/s/e;
    .locals 2
    .param p0    # Lf/d/a/o/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/l<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lf/d/a/s/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/s/e;

    invoke-direct {v0}, Lf/d/a/s/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Lf/d/a/s/a;->x(Lf/d/a/o/l;Z)Lf/d/a/s/a;

    move-result-object p0

    .line 3
    check-cast p0, Lf/d/a/s/e;

    return-object p0
.end method

.method public static C()Lf/d/a/s/e;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/s/e;->A:Lf/d/a/s/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/d/a/s/e;

    invoke-direct {v0}, Lf/d/a/s/e;-><init>()V

    invoke-virtual {v0}, Lf/d/a/s/a;->c()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    invoke-virtual {v0}, Lf/d/a/s/a;->b()Lf/d/a/s/a;

    move-result-object v0

    check-cast v0, Lf/d/a/s/e;

    sput-object v0, Lf/d/a/s/e;->A:Lf/d/a/s/e;

    .line 3
    :cond_0
    sget-object v0, Lf/d/a/s/e;->A:Lf/d/a/s/e;

    return-object v0
.end method
