.class public final Lf/i/a/a/b1/u/d$b;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/u/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/p;

.field public final b:Lf/i/a/a/b1/u/l;

.field public c:Lf/i/a/a/b1/u/j;

.field public d:Lf/i/a/a/b1/u/c;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Lf/i/a/a/m1/u;

.field public final j:Lf/i/a/a/m1/u;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    .line 3
    new-instance p1, Lf/i/a/a/b1/u/l;

    invoke-direct {p1}, Lf/i/a/a/b1/u/l;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    .line 4
    new-instance p1, Lf/i/a/a/m1/u;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lf/i/a/a/m1/u;-><init>(I)V

    iput-object p1, p0, Lf/i/a/a/b1/u/d$b;->i:Lf/i/a/a/m1/u;

    .line 5
    new-instance p1, Lf/i/a/a/m1/u;

    invoke-direct {p1}, Lf/i/a/a/m1/u;-><init>()V

    iput-object p1, p0, Lf/i/a/a/b1/u/d$b;->j:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public final a()Lf/i/a/a/b1/u/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v1, v0, Lf/i/a/a/b1/u/l;->a:Lf/i/a/a/b1/u/c;

    iget v1, v1, Lf/i/a/a/b1/u/c;->a:I

    .line 2
    iget-object v0, v0, Lf/i/a/a/b1/u/l;->o:Lf/i/a/a/b1/u/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    .line 3
    invoke-virtual {v0, v1}, Lf/i/a/a/b1/u/j;->a(I)Lf/i/a/a/b1/u/k;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, v0, Lf/i/a/a/b1/u/k;->a:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public b(Lf/i/a/a/b1/u/j;Lf/i/a/a/b1/u/c;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iput-object p1, p0, Lf/i/a/a/b1/u/d$b;->c:Lf/i/a/a/b1/u/j;

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lf/i/a/a/b1/u/d$b;->d:Lf/i/a/a/b1/u/c;

    .line 3
    iget-object p2, p0, Lf/i/a/a/b1/u/d$b;->a:Lf/i/a/a/b1/p;

    iget-object p1, p1, Lf/i/a/a/b1/u/j;->f:Lf/i/a/a/b0;

    invoke-interface {p2, p1}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    .line 4
    invoke-virtual {p0}, Lf/i/a/a/b1/u/d$b;->d()V

    return-void

    .line 5
    :cond_0
    throw v0

    .line 6
    :cond_1
    throw v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget v0, p0, Lf/i/a/a/b1/u/d$b;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lf/i/a/a/b1/u/d$b;->e:I

    .line 2
    iget v0, p0, Lf/i/a/a/b1/u/d$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lf/i/a/a/b1/u/d$b;->f:I

    .line 3
    iget-object v2, p0, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    iget-object v2, v2, Lf/i/a/a/b1/u/l;->h:[I

    iget v3, p0, Lf/i/a/a/b1/u/d$b;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    .line 4
    iput v3, p0, Lf/i/a/a/b1/u/d$b;->g:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf/i/a/a/b1/u/d$b;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/u/d$b;->b:Lf/i/a/a/b1/u/l;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lf/i/a/a/b1/u/l;->e:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lf/i/a/a/b1/u/l;->s:J

    .line 4
    iput-boolean v1, v0, Lf/i/a/a/b1/u/l;->m:Z

    .line 5
    iput-boolean v1, v0, Lf/i/a/a/b1/u/l;->r:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lf/i/a/a/b1/u/l;->o:Lf/i/a/a/b1/u/k;

    .line 7
    iput v1, p0, Lf/i/a/a/b1/u/d$b;->e:I

    .line 8
    iput v1, p0, Lf/i/a/a/b1/u/d$b;->g:I

    .line 9
    iput v1, p0, Lf/i/a/a/b1/u/d$b;->f:I

    .line 10
    iput v1, p0, Lf/i/a/a/b1/u/d$b;->h:I

    return-void
.end method
