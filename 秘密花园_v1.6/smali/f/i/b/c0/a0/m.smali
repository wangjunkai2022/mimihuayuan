.class public final Lf/i/b/c0/a0/m;
.super Lf/i/b/z;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/b/c0/a0/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lf/i/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lf/i/b/j;

.field public final d:Lf/i/b/d0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/d0/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lf/i/b/a0;

.field public final f:Lf/i/b/c0/a0/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/c0/a0/m<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public g:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/b/v;Lf/i/b/n;Lf/i/b/j;Lf/i/b/d0/a;Lf/i/b/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/v<",
            "TT;>;",
            "Lf/i/b/n<",
            "TT;>;",
            "Lf/i/b/j;",
            "Lf/i/b/d0/a<",
            "TT;>;",
            "Lf/i/b/a0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    new-instance p5, Lf/i/b/c0/a0/m$b;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lf/i/b/c0/a0/m$b;-><init>(Lf/i/b/c0/a0/m;Lf/i/b/c0/a0/m$a;)V

    iput-object p5, p0, Lf/i/b/c0/a0/m;->f:Lf/i/b/c0/a0/m$b;

    .line 3
    iput-object p1, p0, Lf/i/b/c0/a0/m;->a:Lf/i/b/v;

    .line 4
    iput-object p2, p0, Lf/i/b/c0/a0/m;->b:Lf/i/b/n;

    .line 5
    iput-object p3, p0, Lf/i/b/c0/a0/m;->c:Lf/i/b/j;

    .line 6
    iput-object p4, p0, Lf/i/b/c0/a0/m;->d:Lf/i/b/d0/a;

    .line 7
    iput-object v0, p0, Lf/i/b/c0/a0/m;->e:Lf/i/b/a0;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/m;->b:Lf/i/b/n;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/b/c0/a0/m;->g:Lf/i/b/z;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/m;->c:Lf/i/b/j;

    iget-object v1, p0, Lf/i/b/c0/a0/m;->e:Lf/i/b/a0;

    iget-object v2, p0, Lf/i/b/c0/a0/m;->d:Lf/i/b/d0/a;

    .line 4
    invoke-virtual {v0, v1, v2}, Lf/i/b/j;->g(Lf/i/b/a0;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    iput-object v0, p0, Lf/i/b/c0/a0/m;->g:Lf/i/b/z;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lf/i/b/e0/a;->V()Lf/i/b/e0/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lf/i/b/e0/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 7
    :try_start_1
    sget-object v1, Lf/i/b/c0/a0/o;->X:Lf/i/b/z;

    invoke-virtual {v1, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/i/b/o;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lf/i/b/e0/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Lf/i/b/w;

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 9
    new-instance v0, Lf/i/b/p;

    invoke-direct {v0, p1}, Lf/i/b/p;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 10
    new-instance v0, Lf/i/b/w;

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 11
    sget-object p1, Lf/i/b/q;->a:Lf/i/b/q;

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 12
    instance-of v1, p1, Lf/i/b/q;

    if-eqz v1, :cond_2

    return-object v0

    .line 13
    :cond_2
    iget-object v0, p0, Lf/i/b/c0/a0/m;->b:Lf/i/b/n;

    iget-object v1, p0, Lf/i/b/c0/a0/m;->d:Lf/i/b/d0/a;

    .line 14
    iget-object v1, v1, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 15
    iget-object v2, p0, Lf/i/b/c0/a0/m;->f:Lf/i/b/c0/a0/m$b;

    invoke-interface {v0, p1, v1, v2}, Lf/i/b/n;->a(Lf/i/b/o;Ljava/lang/reflect/Type;Lf/i/b/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    throw v0

    .line 17
    :cond_4
    new-instance v0, Lf/i/b/w;

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/m;->a:Lf/i/b/v;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/b/c0/a0/m;->g:Lf/i/b/z;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/b/c0/a0/m;->c:Lf/i/b/j;

    iget-object v1, p0, Lf/i/b/c0/a0/m;->e:Lf/i/b/a0;

    iget-object v2, p0, Lf/i/b/c0/a0/m;->d:Lf/i/b/d0/a;

    .line 4
    invoke-virtual {v0, v1, v2}, Lf/i/b/j;->g(Lf/i/b/a0;Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    iput-object v0, p0, Lf/i/b/c0/a0/m;->g:Lf/i/b/z;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lf/i/b/e0/c;->I()Lf/i/b/e0/c;

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lf/i/b/c0/a0/m;->d:Lf/i/b/d0/a;

    .line 8
    iget-object v1, v1, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 9
    iget-object v2, p0, Lf/i/b/c0/a0/m;->f:Lf/i/b/c0/a0/m$b;

    invoke-interface {v0, p2, v1, v2}, Lf/i/b/v;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i/b/u;)Lf/i/b/o;

    move-result-object p2

    .line 10
    sget-object v0, Lf/i/b/c0/a0/o;->X:Lf/i/b/z;

    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void
.end method
