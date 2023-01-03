.class public Lf/d/a/o/n/l$b$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lf/d/a/u/j/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/u/j/a$b<",
        "Lf/d/a/o/n/m<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/d/a/o/n/l$b;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/l$b$a;->a:Lf/d/a/o/n/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lf/d/a/o/n/m;

    iget-object v0, p0, Lf/d/a/o/n/l$b$a;->a:Lf/d/a/o/n/l$b;

    iget-object v1, v0, Lf/d/a/o/n/l$b;->a:Lf/d/a/o/n/d0/a;

    iget-object v2, v0, Lf/d/a/o/n/l$b;->b:Lf/d/a/o/n/d0/a;

    iget-object v3, v0, Lf/d/a/o/n/l$b;->c:Lf/d/a/o/n/d0/a;

    iget-object v4, v0, Lf/d/a/o/n/l$b;->d:Lf/d/a/o/n/d0/a;

    iget-object v5, v0, Lf/d/a/o/n/l$b;->e:Lf/d/a/o/n/n;

    iget-object v6, v0, Lf/d/a/o/n/l$b;->f:Lf/d/a/o/n/q$a;

    iget-object v7, v0, Lf/d/a/o/n/l$b;->g:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lf/d/a/o/n/m;-><init>(Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/n;Lf/d/a/o/n/q$a;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method
