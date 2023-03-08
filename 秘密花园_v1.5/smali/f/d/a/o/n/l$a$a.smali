.class public Lf/d/a/o/n/l$a$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lf/d/a/u/j/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/u/j/a$b<",
        "Lf/d/a/o/n/i<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/d/a/o/n/l$a;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/l$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/l$a$a;->a:Lf/d/a/o/n/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lf/d/a/o/n/i;

    iget-object v1, p0, Lf/d/a/o/n/l$a$a;->a:Lf/d/a/o/n/l$a;

    iget-object v2, v1, Lf/d/a/o/n/l$a;->a:Lf/d/a/o/n/i$d;

    iget-object v1, v1, Lf/d/a/o/n/l$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v2, v1}, Lf/d/a/o/n/i;-><init>(Lf/d/a/o/n/i$d;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
