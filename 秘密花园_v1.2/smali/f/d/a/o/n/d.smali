.class public Lf/d/a/o/n/d;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lf/d/a/o/n/g;
.implements Lf/d/a/o/m/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/g;",
        "Lf/d/a/o/m/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/o/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/d/a/o/n/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/o/n/g$a;

.field public d:I

.field public e:Lf/d/a/o/f;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/o/o/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Lf/d/a/o/o/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/h<",
            "*>;",
            "Lf/d/a/o/n/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lf/d/a/o/n/h;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lf/d/a/o/n/d;->d:I

    .line 4
    iput-object v0, p0, Lf/d/a/o/n/d;->a:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 6
    iput-object p2, p0, Lf/d/a/o/n/d;->c:Lf/d/a/o/n/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lf/d/a/o/n/h;Lf/d/a/o/n/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/d/a/o/f;",
            ">;",
            "Lf/d/a/o/n/h<",
            "*>;",
            "Lf/d/a/o/n/g$a;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lf/d/a/o/n/d;->d:I

    .line 9
    iput-object p1, p0, Lf/d/a/o/n/d;->a:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 11
    iput-object p3, p0, Lf/d/a/o/n/d;->c:Lf/d/a/o/n/g$a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/d;->c:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/d;->e:Lf/d/a/o/f;

    iget-object v2, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    iget-object v2, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    sget-object v3, Lf/d/a/o/a;->c:Lf/d/a/o/a;

    invoke-interface {v0, v1, p1, v2, v3}, Lf/d/a/o/n/g$a;->b(Lf/d/a/o/f;Ljava/lang/Exception;Lf/d/a/o/m/d;Lf/d/a/o/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v0}, Lf/d/a/o/m/d;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/d/a/o/n/d;->c:Lf/d/a/o/n/g$a;

    iget-object v1, p0, Lf/d/a/o/n/d;->e:Lf/d/a/o/f;

    iget-object v2, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    iget-object v3, v2, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    sget-object v4, Lf/d/a/o/a;->c:Lf/d/a/o/a;

    iget-object v5, p0, Lf/d/a/o/n/d;->e:Lf/d/a/o/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lf/d/a/o/n/g$a;->f(Lf/d/a/o/f;Ljava/lang/Object;Lf/d/a/o/m/d;Lf/d/a/o/a;Lf/d/a/o/f;)V

    return-void
.end method

.method public e()Z
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/d/a/o/n/d;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    iget v3, p0, Lf/d/a/o/n/d;->g:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    const/4 v0, 0x0

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 4
    iget v3, p0, Lf/d/a/o/n/d;->g:I

    iget-object v4, p0, Lf/d/a/o/n/d;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 5
    iget-object v3, p0, Lf/d/a/o/n/d;->f:Ljava/util/List;

    iget v4, p0, Lf/d/a/o/n/d;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lf/d/a/o/n/d;->g:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/o/o/n;

    .line 6
    iget-object v4, p0, Lf/d/a/o/n/d;->i:Ljava/io/File;

    iget-object v5, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 7
    iget v6, v5, Lf/d/a/o/n/h;->e:I

    .line 8
    iget v7, v5, Lf/d/a/o/n/h;->f:I

    .line 9
    iget-object v5, v5, Lf/d/a/o/n/h;->i:Lf/d/a/o/h;

    .line 10
    invoke-interface {v3, v4, v6, v7, v5}, Lf/d/a/o/o/n;->a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;

    move-result-object v3

    iput-object v3, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    .line 11
    iget-object v3, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    iget-object v4, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    iget-object v4, v4, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    invoke-interface {v4}, Lf/d/a/o/m/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/d/a/o/n/h;->g(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v0, p0, Lf/d/a/o/n/d;->h:Lf/d/a/o/o/n$a;

    iget-object v0, v0, Lf/d/a/o/o/n$a;->c:Lf/d/a/o/m/d;

    iget-object v3, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 13
    iget-object v3, v3, Lf/d/a/o/n/h;->o:Lf/d/a/f;

    .line 14
    invoke-interface {v0, v3, p0}, Lf/d/a/o/m/d;->f(Lf/d/a/f;Lf/d/a/o/m/d$a;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    return v0

    .line 15
    :cond_6
    :goto_4
    iget v0, p0, Lf/d/a/o/n/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lf/d/a/o/n/d;->d:I

    .line 16
    iget-object v2, p0, Lf/d/a/o/n/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    return v1

    .line 17
    :cond_7
    iget-object v0, p0, Lf/d/a/o/n/d;->a:Ljava/util/List;

    iget v2, p0, Lf/d/a/o/n/d;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/o/f;

    .line 18
    new-instance v2, Lf/d/a/o/n/e;

    iget-object v3, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 19
    iget-object v3, v3, Lf/d/a/o/n/h;->n:Lf/d/a/o/f;

    .line 20
    invoke-direct {v2, v0, v3}, Lf/d/a/o/n/e;-><init>(Lf/d/a/o/f;Lf/d/a/o/f;)V

    .line 21
    iget-object v3, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    invoke-virtual {v3}, Lf/d/a/o/n/h;->b()Lf/d/a/o/n/c0/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lf/d/a/o/n/c0/a;->b(Lf/d/a/o/f;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lf/d/a/o/n/d;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 22
    iput-object v0, p0, Lf/d/a/o/n/d;->e:Lf/d/a/o/f;

    .line 23
    iget-object v0, p0, Lf/d/a/o/n/d;->b:Lf/d/a/o/n/h;

    .line 24
    iget-object v0, v0, Lf/d/a/o/n/h;->c:Lf/d/a/e;

    .line 25
    iget-object v0, v0, Lf/d/a/e;->b:Lf/d/a/h;

    .line 26
    invoke-virtual {v0, v2}, Lf/d/a/h;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lf/d/a/o/n/d;->f:Ljava/util/List;

    .line 28
    iput v1, p0, Lf/d/a/o/n/d;->g:I

    goto/16 :goto_0
.end method
