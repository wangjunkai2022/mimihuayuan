.class public final Lk/a/f/a;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# instance fields
.field public a:[C

.field public b:Ljava/io/Reader;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lk/a/f/a;->g:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lj/b;->s(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lj/b;->n(Z)V

    .line 6
    iput-object p1, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    const p1, 0x8000

    if-le p2, p1, :cond_0

    const p2, 0x8000

    .line 7
    :cond_0
    new-array p1, p2, [C

    iput-object p1, p0, Lk/a/f/a;->a:[C

    .line 8
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    return-void
.end method

.method public static c([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    mul-int/lit8 v1, p3, 0x1f

    const/4 v2, 0x0

    move v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v5, v4, 0x1

    .line 2
    aget-char v4, p0, v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v1, 0x1ff

    .line 3
    aget-object v3, p1, v1

    if-nez v3, :cond_3

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 5
    aput-object v0, p1, v1

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p3, v4, :cond_5

    move v5, p2

    move v4, p3

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-eqz v4, :cond_6

    add-int/lit8 v4, v5, 0x1

    .line 7
    aget-char v5, p0, v5

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    move v4, v7

    move v6, v8

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    return-object v3

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 9
    aput-object v0, p1, v1

    :goto_3
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lk/a/f/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/a/f/a;->e:I

    return-void
.end method

.method public final b()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lk/a/f/a;->i:Z

    if-nez v0, :cond_9

    iget v0, p0, Lk/a/f/a;->e:I

    iget v1, p0, Lk/a/f/a;->d:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v1, p0, Lk/a/f/a;->g:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v4, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    .line 4
    iget-object v4, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_1
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_4

    .line 5
    iget-object v9, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    iget-object v11, p0, Lk/a/f/a;->a:[C

    iget-object v12, p0, Lk/a/f/a;->a:[C

    array-length v12, v12

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 6
    iput-boolean v10, p0, Lk/a/f/a;->i:Z

    :cond_2
    if-gtz v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v9

    goto :goto_1

    .line 7
    :cond_4
    :goto_2
    iget-object v9, p0, Lk/a/f/a;->b:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_8

    cmp-long v9, v7, v5

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 8
    :goto_3
    invoke-static {v10}, Lj/b;->n(Z)V

    .line 9
    iput v4, p0, Lk/a/f/a;->c:I

    .line 10
    iget v4, p0, Lk/a/f/a;->f:I

    add-int/2addr v4, v0

    iput v4, p0, Lk/a/f/a;->f:I

    .line 11
    iput v1, p0, Lk/a/f/a;->e:I

    .line 12
    iget v0, p0, Lk/a/f/a;->g:I

    if-eq v0, v2, :cond_6

    .line 13
    iput v3, p0, Lk/a/f/a;->g:I

    .line 14
    :cond_6
    iget v0, p0, Lk/a/f/a;->c:I

    const/16 v1, 0x6000

    if-le v0, v1, :cond_7

    goto :goto_4

    :cond_7
    iget v1, p0, Lk/a/f/a;->c:I

    :goto_4
    iput v1, p0, Lk/a/f/a;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Lk/a/b;

    invoke-direct {v1, v0}, Lk/a/b;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_9
    :goto_5
    return-void
.end method

.method public d()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    invoke-virtual {p0}, Lk/a/f/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget v1, p0, Lk/a/f/a;->e:I

    aget-char v0, v0, v1

    .line 3
    :goto_0
    iget v1, p0, Lk/a/f/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/a/f/a;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lk/a/f/a;->e:I

    .line 2
    iget v1, p0, Lk/a/f/a;->c:I

    .line 3
    iget-object v2, p0, Lk/a/f/a;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v3, p0, Lk/a/f/a;->e:I

    if-le v3, v0, :cond_1

    .line 6
    iget-object v1, p0, Lk/a/f/a;->a:[C

    iget-object v2, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p0, Lk/a/f/a;->e:I

    .line 3
    :goto_0
    iget v1, p0, Lk/a/f/a;->e:I

    iget v2, p0, Lk/a/f/a;->c:I

    if-ge v1, v2, :cond_3

    .line 4
    iget-object v2, p0, Lk/a/f/a;->a:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :cond_2
    iget v1, p0, Lk/a/f/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/a/f/a;->e:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lk/a/f/a;->a:[C

    iget-object v2, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v3, p0, Lk/a/f/a;->e:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p0, Lk/a/f/a;->e:I

    :goto_0
    iget v1, p0, Lk/a/f/a;->c:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lk/a/f/a;->a:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 4
    iget p1, p0, Lk/a/f/a;->e:I

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_2

    .line 5
    iget-object p1, p0, Lk/a/f/a;->a:[C

    iget-object v1, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v2, p0, Lk/a/f/a;->e:I

    invoke-static {p1, v1, v2, v0}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget v1, p0, Lk/a/f/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lk/a/f/a;->e:I

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lk/a/f/a;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs h([C)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p0, Lk/a/f/a;->e:I

    .line 3
    iget v1, p0, Lk/a/f/a;->c:I

    .line 4
    iget-object v2, p0, Lk/a/f/a;->a:[C

    .line 5
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 6
    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_2
    iput v4, p0, Lk/a/f/a;->e:I

    if-le v4, v0, :cond_3

    .line 8
    iget-object p1, p0, Lk/a/f/a;->a:[C

    iget-object v1, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, ""

    :goto_3
    return-object p1
.end method

.method public varargs i([C)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p0, Lk/a/f/a;->e:I

    .line 3
    iget v1, p0, Lk/a/f/a;->c:I

    .line 4
    iget-object v2, p0, Lk/a/f/a;->a:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5
    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iput v3, p0, Lk/a/f/a;->e:I

    if-le v3, v0, :cond_2

    .line 7
    iget-object p1, p0, Lk/a/f/a;->a:[C

    iget-object v1, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public j()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget-object v1, p0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v2, p0, Lk/a/f/a;->e:I

    iget v3, p0, Lk/a/f/a;->c:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lk/a/f/a;->c:I

    iput v1, p0, Lk/a/f/a;->e:I

    return-object v0
.end method

.method public k()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    invoke-virtual {p0}, Lk/a/f/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget v1, p0, Lk/a/f/a;->e:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    iget v0, p0, Lk/a/f/a;->e:I

    iget v1, p0, Lk/a/f/a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget v0, p0, Lk/a/f/a;->e:I

    iget v1, p0, Lk/a/f/a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    iget v1, p0, Lk/a/f/a;->c:I

    iget v2, p0, Lk/a/f/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lk/a/f/a;->a:[C

    iget v6, p0, Lk/a/f/a;->e:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lk/a/f/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lk/a/f/a;->e:I

    return v3

    :cond_3
    return v2
.end method

.method public o(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lk/a/f/a;->c:I

    iget v2, p0, Lk/a/f/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 5
    iget-object v5, p0, Lk/a/f/a;->a:[C

    iget v6, p0, Lk/a/f/a;->e:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lk/a/f/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lk/a/f/a;->e:I

    return v3

    :cond_3
    return v2
.end method

.method public p(C)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget v1, p0, Lk/a/f/a;->e:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs q([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    .line 3
    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget v2, p0, Lk/a/f/a;->e:I

    aget-char v0, v0, v2

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public r()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/f/a;->a:[C

    iget v2, p0, Lk/a/f/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 3
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public s(Ljava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk/a/f/a;->b()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3
    iget v1, p0, Lk/a/f/a;->e:I

    :goto_0
    iget v2, p0, Lk/a/f/a;->c:I

    if-ge v1, v2, :cond_3

    .line 4
    iget-object v2, p0, Lk/a/f/a;->a:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 5
    iget v2, p0, Lk/a/f/a;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lk/a/f/a;->a:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 7
    iget v5, p0, Lk/a/f/a;->c:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    .line 8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lk/a/f/a;->a:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    .line 9
    iget p1, p0, Lk/a/f/a;->e:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public t()I
    .locals 2

    .line 1
    iget v0, p0, Lk/a/f/a;->f:I

    iget v1, p0, Lk/a/f/a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lk/a/f/a;->c:I

    iget v1, p0, Lk/a/f/a;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lk/a/f/a;->a:[C

    iget v2, p0, Lk/a/f/a;->e:I

    iget v3, p0, Lk/a/f/a;->c:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    iget v0, p0, Lk/a/f/a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v0, p0, Lk/a/f/a;->e:I

    .line 3
    iput v1, p0, Lk/a/f/a;->g:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Lk/a/b;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lk/a/b;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public v()V
    .locals 3

    .line 1
    iget v0, p0, Lk/a/f/a;->e:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lk/a/f/a;->e:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lk/a/b;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "No buffer left to unconsume"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lk/a/b;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
