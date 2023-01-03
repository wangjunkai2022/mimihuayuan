.class public final Lf/i/a/a/l1/k0/m;
.super Ljava/lang/Object;
.source "CachedContent.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lf/i/a/a/l1/k0/w;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lf/i/a/a/l1/k0/r;

.field public e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lf/i/a/a/l1/k0/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/l1/k0/m;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    .line 5
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/l1/k0/m;->b(J)Lf/i/a/a/l1/k0/w;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lf/i/a/a/l1/k0/k;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-wide p1, v0, Lf/i/a/a/l1/k0/k;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_1

    .line 4
    :cond_1
    iget-wide p1, v0, Lf/i/a/a/l1/k0/k;->c:J

    :goto_1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_2
    add-long v1, p1, p3

    .line 5
    iget-wide v4, v0, Lf/i/a/a/l1/k0/k;->b:J

    iget-wide v6, v0, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-gez v6, :cond_5

    .line 6
    iget-object v6, p0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v6, v0, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/l1/k0/w;

    .line 7
    iget-wide v6, v3, Lf/i/a/a/l1/k0/k;->b:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    iget-wide v8, v3, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v3, v4, v1

    if-ltz v3, :cond_3

    :cond_5
    :goto_2
    sub-long/2addr v4, p1

    .line 9
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)Lf/i/a/a/l1/k0/w;
    .locals 10

    .line 1
    iget-object v1, p0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    .line 2
    new-instance v9, Lf/i/a/a/l1/k0/w;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lf/i/a/a/l1/k0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/k0/w;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v1, v0, Lf/i/a/a/l1/k0/k;->b:J

    iget-wide v3, v0, Lf/i/a/a/l1/k0/k;->c:J

    add-long/2addr v1, v3

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/l1/k0/w;

    .line 6
    iget-object v2, p0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lf/i/a/a/l1/k0/w;

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v3, p1

    invoke-direct/range {v1 .. v9}, Lf/i/a/a/l1/k0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, v0, Lf/i/a/a/l1/k0/k;->b:J

    sub-long v5, v0, p1

    .line 9
    new-instance v0, Lf/i/a/a/l1/k0/w;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v3, p1

    invoke-direct/range {v1 .. v9}, Lf/i/a/a/l1/k0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public c(Lf/i/a/a/l1/k0/w;JZ)Lf/i/a/a/l1/k0/w;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v2, v1, Lf/i/a/a/l1/k0/k;->e:Ljava/io/File;

    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 4
    iget-wide v5, v1, Lf/i/a/a/l1/k0/k;->b:J

    .line 5
    iget v4, v0, Lf/i/a/a/l1/k0/m;->a:I

    move-wide/from16 v7, p2

    invoke-static/range {v3 .. v8}, Lf/i/a/a/l1/k0/w;->c(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v14, v3

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    move-object v14, v2

    .line 8
    :goto_0
    iget-boolean v2, v1, Lf/i/a/a/l1/k0/k;->d:Z

    invoke-static {v2}, Lc/a/a/b/g/h;->v(Z)V

    .line 9
    new-instance v2, Lf/i/a/a/l1/k0/w;

    iget-object v7, v1, Lf/i/a/a/l1/k0/k;->a:Ljava/lang/String;

    iget-wide v8, v1, Lf/i/a/a/l1/k0/k;->b:J

    iget-wide v10, v1, Lf/i/a/a/l1/k0/k;->c:J

    move-object v6, v2

    move-wide/from16 v12, p2

    invoke-direct/range {v6 .. v14}, Lf/i/a/a/l1/k0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 10
    iget-object v1, v0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    const-class v2, Lf/i/a/a/l1/k0/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lf/i/a/a/l1/k0/m;

    .line 3
    iget v2, p0, Lf/i/a/a/l1/k0/m;->a:I

    iget v3, p1, Lf/i/a/a/l1/k0/m;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    iget-object v3, p1, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    iget-object v3, p1, Lf/i/a/a/l1/k0/m;->c:Ljava/util/TreeSet;

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    iget-object p1, p1, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    .line 6
    invoke-virtual {v2, p1}, Lf/i/a/a/l1/k0/r;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 1
    iget v0, p0, Lf/i/a/a/l1/k0/m;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lf/i/a/a/l1/k0/m;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lf/i/a/a/l1/k0/m;->d:Lf/i/a/a/l1/k0/r;

    invoke-virtual {v0}, Lf/i/a/a/l1/k0/r;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
