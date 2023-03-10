.class public Lf/d/a/o/n/l$a;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/i$d;

.field public final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lf/d/a/o/n/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lf/d/a/o/n/i$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/n/l$a$a;

    invoke-direct {v0, p0}, Lf/d/a/o/n/l$a$a;-><init>(Lf/d/a/o/n/l$a;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lf/d/a/u/j/a;->a(ILf/d/a/u/j/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/n/l$a;->b:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lf/d/a/o/n/l$a;->a:Lf/d/a/o/n/i$d;

    return-void
.end method
