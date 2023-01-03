.class public Lm/o/a/e;
.super Lm/j;
.source "OnSubscribeSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic h:Lm/i;


# direct methods
.method public constructor <init>(Lm/o/a/f;Lm/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/o/a/e;->h:Lm/i;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lm/o/a/e;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lm/o/a/e;->f:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lm/o/a/e;->h:Lm/i;

    iget-object v1, p0, Lm/o/a/e;->g:Ljava/lang/Object;

    check-cast v0, Lm/o/a/k;

    .line 4
    iget-object v2, v0, Lm/o/a/k;->b:Lm/j;

    new-instance v3, Lm/o/b/a;

    iget-object v0, v0, Lm/o/a/k;->b:Lm/j;

    invoke-direct {v3, v0, v1}, Lm/o/b/a;-><init>(Lm/j;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lm/j;->i(Lm/f;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lm/o/a/e;->h:Lm/i;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Observable emitted no items"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Lm/o/a/k;

    .line 6
    iget-object v0, v0, Lm/o/a/k;->b:Lm/j;

    invoke-virtual {v0, v1}, Lm/j;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/a/e;->h:Lm/i;

    check-cast v0, Lm/o/a/k;

    .line 2
    iget-object v0, v0, Lm/o/a/k;->b:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {p1}, Lm/o/d/g;->c()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm/o/a/e;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lm/o/a/e;->e:Z

    .line 3
    iget-object p1, p0, Lm/o/a/e;->h:Lm/i;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Observable emitted too many elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lm/o/a/k;

    .line 4
    iget-object p1, p1, Lm/o/a/k;->b:Lm/j;

    invoke-virtual {p1, v0}, Lm/j;->e(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {p1}, Lm/o/d/g;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v1, p0, Lm/o/a/e;->f:Z

    .line 7
    iput-object p1, p0, Lm/o/a/e;->g:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lm/j;->h(J)V

    return-void
.end method
