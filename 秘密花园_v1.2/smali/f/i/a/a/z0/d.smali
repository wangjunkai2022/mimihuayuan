.class public Lf/i/a/a/z0/d;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lf/i/a/a/z0/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf/i/a/a/z0/j;",
        ">",
        "Ljava/lang/Object;",
        "Lf/i/a/a/z0/g<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static a(Lf/i/a/a/z0/e;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/e;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lf/i/a/a/z0/e$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lf/i/a/a/z0/e;->d:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lf/i/a/a/z0/e;->d:I

    if-ge v1, v2, :cond_4

    .line 3
    iget-object v2, p0, Lf/i/a/a/z0/e;->a:[Lf/i/a/a/z0/e$b;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Lf/i/a/a/z0/e$b;->b(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lf/i/a/a/q;->c:Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lf/i/a/a/q;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lf/i/a/a/z0/e$b;->b(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 6
    iget-object v3, v2, Lf/i/a/a/z0/e$b;->e:[B

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public b(Lf/i/a/a/z0/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/z0/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lf/i/a/a/z0/h;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lf/i/a/a/z0/b;

    .line 3
    iget v0, p1, Lf/i/a/a/z0/b;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lf/i/a/a/z0/b;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    iput v3, p1, Lf/i/a/a/z0/b;->d:I

    .line 5
    iget-object v0, p1, Lf/i/a/a/z0/b;->c:Lf/i/a/a/z0/b$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p1, Lf/i/a/a/z0/b;->g:Lf/i/a/a/z0/b$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v2, p1, Lf/i/a/a/z0/b;->g:Lf/i/a/a/z0/b$a;

    .line 8
    iget-object v0, p1, Lf/i/a/a/z0/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    iput-object v2, p1, Lf/i/a/a/z0/b;->f:Landroid/os/HandlerThread;

    .line 10
    iput-object v2, p1, Lf/i/a/a/z0/b;->h:Lf/i/a/a/z0/j;

    .line 11
    iput-object v2, p1, Lf/i/a/a/z0/b;->i:Lf/i/a/a/z0/f$a;

    .line 12
    iput-object v2, p1, Lf/i/a/a/z0/b;->k:Lf/i/a/a/z0/i$a;

    .line 13
    iput-object v2, p1, Lf/i/a/a/z0/b;->l:Lf/i/a/a/z0/i$b;

    .line 14
    iget-object v0, p1, Lf/i/a/a/z0/b;->j:[B

    if-eqz v0, :cond_2

    .line 15
    iget-object v3, p1, Lf/i/a/a/z0/b;->a:Lf/i/a/a/z0/i;

    invoke-interface {v3, v0}, Lf/i/a/a/z0/i;->a([B)V

    .line 16
    iput-object v2, p1, Lf/i/a/a/z0/b;->j:[B

    .line 17
    iget-object p1, p1, Lf/i/a/a/z0/b;->b:Lf/i/a/a/m1/m;

    sget-object v0, Lf/i/a/a/z0/a;->a:Lf/i/a/a/z0/a;

    invoke-virtual {p1, v0}, Lf/i/a/a/m1/m;->b(Lf/i/a/a/m1/m$a;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 18
    :cond_3
    throw v2
.end method
