.class public final Lf/i/a/a/h1/t0/k/h;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    .line 4
    iput-wide p4, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/h1/t0/k/h;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;
    .locals 11
    .param p1    # Lf/i/a/a/h1/t0/k/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lc/a/a/b/g/h;->d1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lc/a/a/b/g/h;->d1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    const-wide/16 v3, -0x1

    cmp-long p2, v0, v3

    if-eqz p2, :cond_2

    iget-wide v5, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    add-long v7, v5, v0

    iget-wide v9, p1, Lf/i/a/a/h1/t0/k/h;->a:J

    cmp-long p2, v7, v9

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Lf/i/a/a/h1/t0/k/h;

    iget-wide v7, p1, Lf/i/a/a/h1/t0/k/h;->b:J

    cmp-long p1, v7, v3

    if-nez p1, :cond_1

    move-wide v7, v3

    goto :goto_0

    :cond_1
    add-long/2addr v0, v7

    move-wide v7, v0

    :goto_0
    move-object v1, p2

    move-wide v3, v5

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/h1/t0/k/h;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 6
    :cond_2
    iget-wide v0, p1, Lf/i/a/a/h1/t0/k/h;->b:J

    cmp-long p2, v0, v3

    if-eqz p2, :cond_4

    iget-wide p1, p1, Lf/i/a/a/h1/t0/k/h;->a:J

    add-long v5, p1, v0

    iget-wide v7, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 7
    new-instance v7, Lf/i/a/a/h1/t0/k/h;

    iget-wide v5, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    cmp-long v8, v5, v3

    if-nez v8, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    add-long/2addr v0, v5

    move-wide v5, v0

    :goto_1
    move-object v1, v7

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/h1/t0/k/h;-><init>(Ljava/lang/String;JJ)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x0

    :goto_3
    return-object v7
.end method

.method public b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->e1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lf/i/a/a/h1/t0/k/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lf/i/a/a/h1/t0/k/h;

    .line 3
    iget-wide v2, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    iget-wide v4, p1, Lf/i/a/a/h1/t0/k/h;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    iget-wide v4, p1, Lf/i/a/a/h1/t0/k/h;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    iget-object p1, p1, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lf/i/a/a/h1/t0/k/h;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-wide v1, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lf/i/a/a/h1/t0/k/h;->d:I

    .line 6
    :cond_0
    iget v0, p0, Lf/i/a/a/h1/t0/k/h;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RangedUri(referenceUri="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/h1/t0/k/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/k/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lf/i/a/a/h1/t0/k/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
