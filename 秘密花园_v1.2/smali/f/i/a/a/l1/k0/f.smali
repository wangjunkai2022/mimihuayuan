.class public final Lf/i/a/a/l1/k0/f;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/l1/m$a;


# instance fields
.field public final a:Lf/i/a/a/l1/k0/b;

.field public final b:Lf/i/a/a/l1/m$a;

.field public final c:Lf/i/a/a/l1/m$a;

.field public final d:I

.field public final e:Lf/i/a/a/l1/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Lf/i/a/a/l1/k0/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lf/i/a/a/l1/k0/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k$a;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V
    .locals 0
    .param p4    # Lf/i/a/a/l1/k$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf/i/a/a/l1/k0/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lf/i/a/a/l1/k0/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/l1/k0/f;->a:Lf/i/a/a/l1/k0/b;

    .line 3
    iput-object p2, p0, Lf/i/a/a/l1/k0/f;->b:Lf/i/a/a/l1/m$a;

    .line 4
    iput-object p3, p0, Lf/i/a/a/l1/k0/f;->c:Lf/i/a/a/l1/m$a;

    .line 5
    iput-object p4, p0, Lf/i/a/a/l1/k0/f;->e:Lf/i/a/a/l1/k$a;

    .line 6
    iput p5, p0, Lf/i/a/a/l1/k0/f;->d:I

    .line 7
    iput-object p6, p0, Lf/i/a/a/l1/k0/f;->f:Lf/i/a/a/l1/k0/e$a;

    .line 8
    iput-object p7, p0, Lf/i/a/a/l1/k0/f;->g:Lf/i/a/a/l1/k0/j;

    return-void
.end method


# virtual methods
.method public a()Lf/i/a/a/l1/k0/e;
    .locals 9

    .line 1
    new-instance v8, Lf/i/a/a/l1/k0/e;

    iget-object v1, p0, Lf/i/a/a/l1/k0/f;->a:Lf/i/a/a/l1/k0/b;

    iget-object v0, p0, Lf/i/a/a/l1/k0/f;->b:Lf/i/a/a/l1/m$a;

    .line 2
    invoke-interface {v0}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v2

    iget-object v0, p0, Lf/i/a/a/l1/k0/f;->c:Lf/i/a/a/l1/m$a;

    .line 3
    invoke-interface {v0}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v3

    iget-object v0, p0, Lf/i/a/a/l1/k0/f;->e:Lf/i/a/a/l1/k$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v0, Lf/i/a/a/l1/k0/d;

    .line 5
    new-instance v4, Lf/i/a/a/l1/k0/c;

    iget-object v5, v0, Lf/i/a/a/l1/k0/d;->a:Lf/i/a/a/l1/k0/b;

    iget-wide v6, v0, Lf/i/a/a/l1/k0/d;->b:J

    iget v0, v0, Lf/i/a/a/l1/k0/d;->c:I

    invoke-direct {v4, v5, v6, v7, v0}, Lf/i/a/a/l1/k0/c;-><init>(Lf/i/a/a/l1/k0/b;JI)V

    .line 6
    :goto_0
    iget v5, p0, Lf/i/a/a/l1/k0/f;->d:I

    iget-object v6, p0, Lf/i/a/a/l1/k0/f;->f:Lf/i/a/a/l1/k0/e$a;

    iget-object v7, p0, Lf/i/a/a/l1/k0/f;->g:Lf/i/a/a/l1/k0/j;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/e;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m;Lf/i/a/a/l1/m;Lf/i/a/a/l1/k;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    return-object v8
.end method

.method public bridge synthetic createDataSource()Lf/i/a/a/l1/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/a/a/l1/k0/f;->a()Lf/i/a/a/l1/k0/e;

    move-result-object v0

    return-object v0
.end method
