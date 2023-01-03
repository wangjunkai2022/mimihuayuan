.class public Lf/d/a/o/n/l$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/d0/a;

.field public final b:Lf/d/a/o/n/d0/a;

.field public final c:Lf/d/a/o/n/d0/a;

.field public final d:Lf/d/a/o/n/d0/a;

.field public final e:Lf/d/a/o/n/n;

.field public final f:Lf/d/a/o/n/q$a;

.field public final g:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lf/d/a/o/n/m<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/n;Lf/d/a/o/n/q$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/n/l$b$a;

    invoke-direct {v0, p0}, Lf/d/a/o/n/l$b$a;-><init>(Lf/d/a/o/n/l$b;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lf/d/a/u/j/a;->a(ILf/d/a/u/j/a$b;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/o/n/l$b;->g:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lf/d/a/o/n/l$b;->a:Lf/d/a/o/n/d0/a;

    .line 5
    iput-object p2, p0, Lf/d/a/o/n/l$b;->b:Lf/d/a/o/n/d0/a;

    .line 6
    iput-object p3, p0, Lf/d/a/o/n/l$b;->c:Lf/d/a/o/n/d0/a;

    .line 7
    iput-object p4, p0, Lf/d/a/o/n/l$b;->d:Lf/d/a/o/n/d0/a;

    .line 8
    iput-object p5, p0, Lf/d/a/o/n/l$b;->e:Lf/d/a/o/n/n;

    .line 9
    iput-object p6, p0, Lf/d/a/o/n/l$b;->f:Lf/d/a/o/n/q$a;

    return-void
.end method
