.class public final Lj/v;
.super Ljava/lang/Object;
.source "Segment.kt"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lj/v;

.field public g:Lj/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lj/v;->a:[B

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/v;->e:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lj/v;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/v;->a:[B

    .line 5
    iput p2, p0, Lj/v;->b:I

    .line 6
    iput p3, p0, Lj/v;->c:I

    .line 7
    iput-boolean p4, p0, Lj/v;->d:Z

    .line 8
    iput-boolean p5, p0, Lj/v;->e:Z

    return-void

    :cond_0
    const-string p1, "data"

    .line 9
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a()Lj/v;
    .locals 4

    .line 1
    iget-object v0, p0, Lj/v;->f:Lj/v;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lj/v;->g:Lj/v;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lj/v;->f:Lj/v;

    iput-object v3, v2, Lj/v;->f:Lj/v;

    .line 3
    iget-object v3, p0, Lj/v;->f:Lj/v;

    if-eqz v3, :cond_1

    iput-object v2, v3, Lj/v;->g:Lj/v;

    .line 4
    iput-object v1, p0, Lj/v;->f:Lj/v;

    .line 5
    iput-object v1, p0, Lj/v;->g:Lj/v;

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 7
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1
.end method

.method public final b(Lj/v;)Lj/v;
    .locals 1

    .line 1
    iput-object p0, p1, Lj/v;->g:Lj/v;

    .line 2
    iget-object v0, p0, Lj/v;->f:Lj/v;

    iput-object v0, p1, Lj/v;->f:Lj/v;

    .line 3
    iget-object v0, p0, Lj/v;->f:Lj/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lj/v;->g:Lj/v;

    .line 4
    iput-object p1, p0, Lj/v;->f:Lj/v;

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()Lj/v;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj/v;->d:Z

    .line 2
    new-instance v0, Lj/v;

    iget-object v2, p0, Lj/v;->a:[B

    iget v3, p0, Lj/v;->b:I

    iget v4, p0, Lj/v;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj/v;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final d(Lj/v;I)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    iget-boolean v0, p1, Lj/v;->e:Z

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Lj/v;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 3
    iget-boolean v1, p1, Lj/v;->d:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    .line 4
    iget v3, p1, Lj/v;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    .line 5
    iget-object v1, p1, Lj/v;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Lj/b;->c([BI[BII)V

    .line 6
    iget v0, p1, Lj/v;->c:I

    iget v1, p1, Lj/v;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lj/v;->c:I

    .line 7
    iput v2, p1, Lj/v;->b:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lj/v;->a:[B

    iget v1, p0, Lj/v;->b:I

    iget-object v2, p1, Lj/v;->a:[B

    iget v3, p1, Lj/v;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Lj/b;->c([BI[BII)V

    .line 11
    iget v0, p1, Lj/v;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lj/v;->c:I

    .line 12
    iget p1, p0, Lj/v;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lj/v;->b:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "sink"

    .line 14
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
