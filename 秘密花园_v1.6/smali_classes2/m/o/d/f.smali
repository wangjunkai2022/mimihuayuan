.class public Lm/o/d/f;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/e$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm/n/c;

.field public final synthetic b:Lm/o/d/d;


# direct methods
.method public constructor <init>(Lm/o/d/d;Lm/n/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/d/f;->b:Lm/o/d/d;

    iput-object p2, p0, Lm/o/d/f;->a:Lm/n/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm/j;

    .line 2
    iget-object v0, p0, Lm/o/d/f;->a:Lm/n/c;

    iget-object v1, p0, Lm/o/d/f;->b:Lm/o/d/d;

    iget-object v1, v1, Lm/o/d/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/e;

    .line 3
    instance-of v1, v0, Lm/o/d/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lm/o/d/d;

    iget-object v0, v0, Lm/o/d/d;->b:Ljava/lang/Object;

    .line 5
    sget-boolean v1, Lm/o/d/d;->c:Z

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lm/o/b/a;

    invoke-direct {v1, p1, v0}, Lm/o/b/a;-><init>(Lm/j;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lm/o/d/d$e;

    invoke-direct {v1, p1, v0}, Lm/o/d/d$e;-><init>(Lm/j;Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p1, v1}, Lm/j;->i(Lm/f;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Lm/p/b;

    invoke-direct {v1, p1, p1}, Lm/p/b;-><init>(Lm/j;Lm/j;)V

    .line 10
    invoke-virtual {v0, v1}, Lm/e;->f(Lm/j;)Lm/k;

    :goto_1
    return-void
.end method
