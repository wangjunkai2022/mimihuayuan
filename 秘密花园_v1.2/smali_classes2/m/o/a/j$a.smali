.class public final Lm/o/a/j$a;
.super Lm/j;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;",
        "Lm/n/a;"
    }
.end annotation


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Lm/g$a;

.field public h:Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lm/j;ZLm/g$a;Lm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TT;>;Z",
            "Lm/g$a;",
            "Lm/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/j;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/j$a;->e:Lm/j;

    .line 3
    iput-boolean p2, p0, Lm/o/a/j$a;->f:Z

    .line 4
    iput-object p3, p0, Lm/o/a/j$a;->g:Lm/g$a;

    .line 5
    iput-object p4, p0, Lm/o/a/j$a;->h:Lm/e;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/o/a/j$a;->h:Lm/e;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lm/o/a/j$a;->h:Lm/e;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lm/o/a/j$a;->i:Ljava/lang/Thread;

    .line 4
    invoke-virtual {v0, p0}, Lm/e;->f(Lm/j;)Lm/k;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/o/a/j$a;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lm/o/a/j$a;->g:Lm/g$a;

    invoke-interface {v0}, Lm/k;->c()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lm/o/a/j$a;->g:Lm/g$a;

    invoke-interface {v1}, Lm/k;->c()V

    throw v0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/o/a/j$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lm/o/a/j$a;->g:Lm/g$a;

    invoke-interface {p1}, Lm/k;->c()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lm/o/a/j$a;->g:Lm/g$a;

    invoke-interface {v0}, Lm/k;->c()V

    throw p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/o/a/j$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public i(Lm/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/o/a/j$a;->e:Lm/j;

    new-instance v1, Lm/o/a/j$a$a;

    invoke-direct {v1, p0, p1}, Lm/o/a/j$a$a;-><init>(Lm/o/a/j$a;Lm/f;)V

    invoke-virtual {v0, v1}, Lm/j;->i(Lm/f;)V

    return-void
.end method
