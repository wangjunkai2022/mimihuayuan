.class public final Lk/a/f/k;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field public static final r:[C

.field public static final s:[I


# instance fields
.field public final a:Lk/a/f/a;

.field public final b:Lk/a/f/e;

.field public c:Lk/a/f/l;

.field public d:Lk/a/f/i;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/StringBuilder;

.field public i:Lk/a/f/i$i;

.field public j:Lk/a/f/i$h;

.field public k:Lk/a/f/i$g;

.field public l:Lk/a/f/i$c;

.field public m:Lk/a/f/i$e;

.field public n:Lk/a/f/i$d;

.field public o:Ljava/lang/String;

.field public final p:[I

.field public final q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk/a/f/k;->r:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lk/a/f/k;->s:[I

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lk/a/f/a;Lk/a/f/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/f/l;->a:Lk/a/f/l;

    iput-object v0, p0, Lk/a/f/k;->c:Lk/a/f/l;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk/a/f/k;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/a/f/k;->f:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lk/a/f/k;->g:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Lk/a/f/i$h;

    invoke-direct {v0}, Lk/a/f/i$h;-><init>()V

    iput-object v0, p0, Lk/a/f/k;->j:Lk/a/f/i$h;

    .line 8
    new-instance v0, Lk/a/f/i$g;

    invoke-direct {v0}, Lk/a/f/i$g;-><init>()V

    iput-object v0, p0, Lk/a/f/k;->k:Lk/a/f/i$g;

    .line 9
    new-instance v0, Lk/a/f/i$c;

    invoke-direct {v0}, Lk/a/f/i$c;-><init>()V

    iput-object v0, p0, Lk/a/f/k;->l:Lk/a/f/i$c;

    .line 10
    new-instance v0, Lk/a/f/i$e;

    invoke-direct {v0}, Lk/a/f/i$e;-><init>()V

    iput-object v0, p0, Lk/a/f/k;->m:Lk/a/f/i$e;

    .line 11
    new-instance v0, Lk/a/f/i$d;

    invoke-direct {v0}, Lk/a/f/i$d;-><init>()V

    iput-object v0, p0, Lk/a/f/k;->n:Lk/a/f/i$d;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lk/a/f/k;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lk/a/f/k;->q:[I

    .line 14
    iput-object p1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 15
    iput-object p2, p0, Lk/a/f/k;->b:Lk/a/f/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lk/a/f/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Character;Z)[I
    .locals 13

    .line 1
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->k()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    sget-object v0, Lk/a/f/k;->r:[C

    .line 4
    invoke-virtual {p1}, Lk/a/f/a;->b()V

    .line 5
    invoke-virtual {p1}, Lk/a/f/a;->l()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, p1, Lk/a/f/a;->a:[C

    iget p1, p1, Lk/a/f/a;->e:I

    aget-char p1, v2, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object v1

    .line 6
    :cond_3
    iget-object p1, p0, Lk/a/f/k;->p:[I

    .line 7
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 8
    iget v2, v0, Lk/a/f/a;->c:I

    iget v5, v0, Lk/a/f/a;->e:I

    sub-int/2addr v2, v5

    const/16 v5, 0x400

    if-ge v2, v5, :cond_4

    .line 9
    iput v4, v0, Lk/a/f/a;->d:I

    .line 10
    :cond_4
    invoke-virtual {v0}, Lk/a/f/a;->b()V

    .line 11
    iget v2, v0, Lk/a/f/a;->e:I

    iput v2, v0, Lk/a/f/a;->g:I

    .line 12
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v4, ";"

    const/16 v5, 0x61

    const/16 v6, 0x41

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/4 v9, -0x1

    if-eqz v0, :cond_12

    .line 13
    iget-object p2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lk/a/f/a;->o(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 14
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 15
    invoke-virtual {v0}, Lk/a/f/a;->b()V

    .line 16
    iget v10, v0, Lk/a/f/a;->e:I

    .line 17
    :goto_1
    iget v11, v0, Lk/a/f/a;->e:I

    iget v12, v0, Lk/a/f/a;->c:I

    if-ge v11, v12, :cond_8

    .line 18
    iget-object v12, v0, Lk/a/f/a;->a:[C

    aget-char v11, v12, v11

    if-lt v11, v8, :cond_5

    if-le v11, v7, :cond_7

    :cond_5
    if-lt v11, v6, :cond_6

    const/16 v12, 0x46

    if-le v11, v12, :cond_7

    :cond_6
    if-lt v11, v5, :cond_8

    const/16 v12, 0x66

    if-gt v11, v12, :cond_8

    .line 19
    :cond_7
    iget v11, v0, Lk/a/f/a;->e:I

    add-int/2addr v11, v3

    iput v11, v0, Lk/a/f/a;->e:I

    goto :goto_1

    .line 20
    :cond_8
    iget-object v3, v0, Lk/a/f/a;->a:[C

    iget-object v5, v0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v0, v0, Lk/a/f/a;->e:I

    sub-int/2addr v0, v10

    invoke-static {v3, v5, v10, v0}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_9
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 22
    invoke-virtual {v0}, Lk/a/f/a;->b()V

    .line 23
    iget v3, v0, Lk/a/f/a;->e:I

    .line 24
    :goto_2
    iget v5, v0, Lk/a/f/a;->e:I

    iget v6, v0, Lk/a/f/a;->c:I

    if-ge v5, v6, :cond_a

    .line 25
    iget-object v6, v0, Lk/a/f/a;->a:[C

    aget-char v6, v6, v5

    if-lt v6, v8, :cond_a

    if-gt v6, v7, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 26
    iput v5, v0, Lk/a/f/a;->e:I

    goto :goto_2

    .line 27
    :cond_a
    iget-object v5, v0, Lk/a/f/a;->a:[C

    iget-object v6, v0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v0, v0, Lk/a/f/a;->e:I

    sub-int/2addr v0, v3

    invoke-static {v5, v6, v3, v0}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    const-string p1, "numeric reference with no numerals"

    .line 29
    invoke-virtual {p0, p1}, Lk/a/f/k;->a(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {p1}, Lk/a/f/a;->u()V

    return-object v1

    .line 31
    :cond_b
    iget-object v1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 32
    iput v9, v1, Lk/a/f/a;->g:I

    .line 33
    invoke-virtual {v1, v4}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 34
    invoke-virtual {p0, v2}, Lk/a/f/k;->a(Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_d

    const/16 p2, 0x10

    goto :goto_4

    :cond_d
    const/16 p2, 0xa

    .line 35
    :goto_4
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 p2, -0x1

    :goto_5
    if-eq p2, v9, :cond_11

    const v0, 0xd800

    if-lt p2, v0, :cond_e

    const v0, 0xdfff

    if-le p2, v0, :cond_11

    :cond_e
    const v0, 0x10ffff

    if-le p2, v0, :cond_f

    goto :goto_6

    :cond_f
    const/16 v0, 0x80

    if-lt p2, v0, :cond_10

    .line 36
    sget-object v1, Lk/a/f/k;->s:[I

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_10

    const-string v0, "character is not a valid unicode code point"

    .line 37
    invoke-virtual {p0, v0}, Lk/a/f/k;->a(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lk/a/f/k;->s:[I

    add-int/lit8 p2, p2, -0x80

    aget p2, v0, p2

    :cond_10
    const/4 v0, 0x0

    .line 39
    aput p2, p1, v0

    return-object p1

    :cond_11
    :goto_6
    const/4 p2, 0x0

    const-string v0, "character outside of valid range"

    .line 40
    invoke-virtual {p0, v0}, Lk/a/f/k;->a(Ljava/lang/String;)V

    const v0, 0xfffd

    .line 41
    aput v0, p1, p2

    return-object p1

    .line 42
    :cond_12
    iget-object v0, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 43
    invoke-virtual {v0}, Lk/a/f/a;->b()V

    .line 44
    iget v10, v0, Lk/a/f/a;->e:I

    .line 45
    :goto_7
    iget v11, v0, Lk/a/f/a;->e:I

    iget v12, v0, Lk/a/f/a;->c:I

    if-ge v11, v12, :cond_16

    .line 46
    iget-object v12, v0, Lk/a/f/a;->a:[C

    aget-char v11, v12, v11

    if-lt v11, v6, :cond_13

    const/16 v12, 0x5a

    if-le v11, v12, :cond_15

    :cond_13
    if-lt v11, v5, :cond_14

    const/16 v12, 0x7a

    if-le v11, v12, :cond_15

    .line 47
    :cond_14
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 48
    :cond_15
    iget v11, v0, Lk/a/f/a;->e:I

    add-int/2addr v11, v3

    iput v11, v0, Lk/a/f/a;->e:I

    goto :goto_7

    .line 49
    :cond_16
    :goto_8
    invoke-virtual {v0}, Lk/a/f/a;->m()Z

    move-result v5

    if-nez v5, :cond_17

    .line 50
    iget-object v5, v0, Lk/a/f/a;->a:[C

    iget v6, v0, Lk/a/f/a;->e:I

    aget-char v5, v5, v6

    if-lt v5, v8, :cond_17

    if-gt v5, v7, :cond_17

    add-int/lit8 v6, v6, 0x1

    .line 51
    iput v6, v0, Lk/a/f/a;->e:I

    goto :goto_8

    .line 52
    :cond_17
    iget-object v5, v0, Lk/a/f/a;->a:[C

    iget-object v6, v0, Lk/a/f/a;->h:[Ljava/lang/String;

    iget v0, v0, Lk/a/f/a;->e:I

    sub-int/2addr v0, v10

    invoke-static {v5, v6, v10, v0}, Lk/a/f/a;->c([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v5, p0, Lk/a/f/k;->a:Lk/a/f/a;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lk/a/f/a;->p(C)Z

    move-result v5

    .line 54
    invoke-static {v0}, Lk/a/e/i;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 55
    sget-object v6, Lk/a/e/i$b;->g:Lk/a/e/i$b;

    invoke-virtual {v6, v0}, Lk/a/e/i$b;->a(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_18

    const/4 v6, 0x1

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_19

    if-eqz v5, :cond_19

    goto :goto_a

    :cond_19
    const/4 v6, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v6, 0x1

    :goto_b
    if-nez v6, :cond_1c

    .line 56
    iget-object p1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {p1}, Lk/a/f/a;->u()V

    if-eqz v5, :cond_1b

    const-string p1, "invalid named reference"

    .line 57
    invoke-virtual {p0, p1}, Lk/a/f/k;->a(Ljava/lang/String;)V

    :cond_1b
    return-object v1

    :cond_1c
    if-eqz p2, :cond_20

    .line 58
    iget-object p2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 59
    invoke-virtual {p2}, Lk/a/f/a;->l()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_c

    .line 60
    :cond_1d
    iget-object v5, p2, Lk/a/f/a;->a:[C

    iget p2, p2, Lk/a/f/a;->e:I

    aget-char p2, v5, p2

    if-lt p2, v8, :cond_1e

    if-gt p2, v7, :cond_1e

    const/4 p2, 0x1

    goto :goto_d

    :cond_1e
    :goto_c
    const/4 p2, 0x0

    :goto_d
    if-nez p2, :cond_1f

    .line 61
    iget-object p2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {p2, v5}, Lk/a/f/a;->q([C)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 62
    :cond_1f
    iget-object p1, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {p1}, Lk/a/f/a;->u()V

    return-object v1

    .line 63
    :cond_20
    iget-object p2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    .line 64
    iput v9, p2, Lk/a/f/a;->g:I

    .line 65
    invoke-virtual {p2, v4}, Lk/a/f/a;->n(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_21

    .line 66
    invoke-virtual {p0, v2}, Lk/a/f/k;->a(Ljava/lang/String;)V

    .line 67
    :cond_21
    iget-object p2, p0, Lk/a/f/k;->q:[I

    .line 68
    sget-object v1, Lk/a/e/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    const/4 v4, 0x0

    .line 69
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    aput v5, p2, v4

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    aput v1, p2, v3

    const/4 p2, 0x2

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    .line 71
    sget-object v1, Lk/a/e/i$b;->g:Lk/a/e/i$b;

    invoke-virtual {v1, v0}, Lk/a/e/i$b;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_23

    .line 72
    aput v1, p2, v4

    const/4 p2, 0x1

    goto :goto_e

    :cond_23
    const/4 p2, 0x0

    :goto_e
    if-ne p2, v3, :cond_24

    .line 73
    iget-object p2, p0, Lk/a/f/k;->q:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_24
    if-ne p2, v2, :cond_25

    .line 74
    iget-object p1, p0, Lk/a/f/k;->q:[I

    return-object p1

    :cond_25
    const-string p1, "Unexpected characters returned for "

    .line 75
    invoke-static {p1, v0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/k;->n:Lk/a/f/i$d;

    invoke-virtual {v0}, Lk/a/f/i$d;->g()Lk/a/f/i;

    .line 2
    iget-object v0, p0, Lk/a/f/k;->n:Lk/a/f/i$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk/a/f/i$d;->d:Z

    return-void
.end method

.method public d(Z)Lk/a/f/i$i;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/f/k;->j:Lk/a/f/i$h;

    invoke-virtual {p1}, Lk/a/f/i$h;->s()Lk/a/f/i$i;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/f/k;->k:Lk/a/f/i$g;

    invoke-virtual {p1}, Lk/a/f/i$i;->s()Lk/a/f/i$i;

    :goto_0
    iput-object p1, p0, Lk/a/f/k;->i:Lk/a/f/i$i;

    return-object p1
.end method

.method public e(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/f/k;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/k;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lk/a/f/k;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/f/k;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk/a/f/k;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/f/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lk/a/f/k;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public g(Lk/a/f/i;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/a/f/k;->e:Z

    invoke-static {v0}, Lj/b;->m(Z)V

    .line 2
    iput-object p1, p0, Lk/a/f/k;->d:Lk/a/f/i;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk/a/f/k;->e:Z

    .line 4
    iget-object v0, p1, Lk/a/f/i;->a:Lk/a/f/i$j;

    sget-object v1, Lk/a/f/i$j;->b:Lk/a/f/i$j;

    if-ne v0, v1, :cond_0

    .line 5
    check-cast p1, Lk/a/f/i$h;

    .line 6
    iget-object p1, p1, Lk/a/f/i$i;->b:Ljava/lang/String;

    iput-object p1, p0, Lk/a/f/k;->o:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lk/a/f/i$j;->c:Lk/a/f/i$j;

    if-ne v0, v1, :cond_1

    .line 8
    check-cast p1, Lk/a/f/i$g;

    .line 9
    iget-object p1, p1, Lk/a/f/i$i;->j:Lk/a/e/b;

    if-eqz p1, :cond_1

    const-string p1, "Attributes incorrectly present on end tag"

    .line 10
    invoke-virtual {p0, p1}, Lk/a/f/k;->j(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/k;->i:Lk/a/f/i$i;

    .line 2
    iget-object v1, v0, Lk/a/f/i$i;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lk/a/f/i$i;->r()V

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p0, v0}, Lk/a/f/k;->g(Lk/a/f/i;)V

    return-void
.end method

.method public i(Lk/a/f/l;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lk/a/f/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lk/a/f/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public k(Lk/a/f/l;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    invoke-virtual {v0}, Lk/a/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/f/k;->b:Lk/a/f/e;

    new-instance v1, Lk/a/f/d;

    iget-object v2, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v2}, Lk/a/f/a;->t()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v5}, Lk/a/f/a;->k()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lk/a/f/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/f/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v0}, Lk/a/f/i$i;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk/a/f/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
