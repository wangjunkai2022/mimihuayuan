.class public final Lm/p/b;
.super Lm/j;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lm/j;


# direct methods
.method public constructor <init>(Lm/j;Lm/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/p/b;->e:Lm/j;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lm/j;-><init>(Lm/j;Z)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/p/b;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/p/b;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/p/b;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V

    return-void
.end method
