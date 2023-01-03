.class public Lf/d/a/o/o/p;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/o/p$a;
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/r;

.field public final b:Lf/d/a/o/o/p$a;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/o/r;

    invoke-direct {v0, p1}, Lf/d/a/o/o/r;-><init>(Landroidx/core/util/Pools$Pool;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lf/d/a/o/o/p$a;

    invoke-direct {p1}, Lf/d/a/o/o/p$a;-><init>()V

    iput-object p1, p0, Lf/d/a/o/o/p;->b:Lf/d/a/o/o/p$a;

    .line 4
    iput-object v0, p0, Lf/d/a/o/o/p;->a:Lf/d/a/o/o/r;

    return-void
.end method
