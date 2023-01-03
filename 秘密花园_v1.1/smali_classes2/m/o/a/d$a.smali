.class public final Lm/o/a/d$a;
.super Lm/j;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Lm/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/n/c<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lm/j;Lm/n/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TR;>;",
            "Lm/n/c<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm/j;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/a/d$a;->e:Lm/j;

    .line 3
    iput-object p2, p0, Lm/o/a/d$a;->f:Lm/n/c;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/o/a/d$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/o/a/d$a;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/o/a/d$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lm/o/a/d$a;->g:Z

    .line 4
    iget-object v0, p0, Lm/o/a/d$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

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
    :try_start_0
    iget-object v0, p0, Lm/o/a/d$a;->f:Lm/n/c;

    invoke-interface {v0, p1}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lm/o/a/d$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lm/j;->a:Lm/o/d/g;

    invoke-virtual {v1}, Lm/o/d/g;->c()V

    .line 5
    invoke-static {v0, p1}, Lm/m/f;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/o/a/d$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Lm/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/a/d$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->i(Lm/f;)V

    return-void
.end method
