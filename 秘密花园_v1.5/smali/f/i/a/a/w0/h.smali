.class public final Lf/i/a/a/w0/h;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/w0/h$b;
    }
.end annotation


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lf/i/a/a/w0/h;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(ILf/i/a/a/m1/u;)V
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Lf/i/a/a/m1/u;->w(I)V

    .line 2
    iget-object p1, p1, Lf/i/a/a/m1/u;->a:[B

    const/4 v0, 0x0

    const/16 v1, -0x54

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 3
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 4
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 5
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 6
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 7
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 8
    aput-byte p0, p1, v0

    return-void
.end method

.method public static b(Lf/i/a/a/m1/t;)Lf/i/a/a/w0/h$b;
    .locals 10

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    .line 2
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_0

    const/16 v0, 0x18

    .line 3
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    move v7, v0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 6
    invoke-virtual {p0}, Lf/i/a/a/m1/t;->e()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/2addr v1, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v5, v6, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v5, 0xa

    .line 7
    invoke-virtual {p0, v5}, Lf/i/a/a/m1/t;->f(I)I

    move-result v5

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/m1/t;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {p0, v4}, Lf/i/a/a/m1/t;->f(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Lf/i/a/a/m1/t;->l(I)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lf/i/a/a/m1/t;->e()Z

    move-result v6

    const v8, 0xbb80

    const v9, 0xac44

    if-eqz v6, :cond_5

    const v6, 0xbb80

    goto :goto_3

    :cond_5
    const v6, 0xac44

    .line 12
    :goto_3
    invoke-virtual {p0, v2}, Lf/i/a/a/m1/t;->f(I)I

    move-result p0

    if-ne v6, v9, :cond_6

    const/16 v9, 0xd

    if-ne p0, v9, :cond_6

    .line 13
    sget-object v0, Lf/i/a/a/w0/h;->a:[I

    aget p0, v0, p0

    move v8, p0

    goto :goto_6

    :cond_6
    if-ne v6, v8, :cond_c

    .line 14
    sget-object v8, Lf/i/a/a/w0/h;->a:[I

    array-length v9, v8

    if-ge p0, v9, :cond_c

    .line 15
    aget v3, v8, p0

    .line 16
    rem-int/lit8 v5, v5, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eq v5, v9, :cond_9

    const/16 v9, 0xb

    if-eq v5, v0, :cond_8

    if-eq v5, v4, :cond_9

    if-eq v5, v2, :cond_7

    goto :goto_4

    :cond_7
    if-eq p0, v4, :cond_b

    if-eq p0, v8, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_5

    :cond_8
    if-eq p0, v8, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_5

    :cond_9
    if-eq p0, v4, :cond_b

    if-ne p0, v8, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move v8, v3

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    .line 17
    :goto_6
    new-instance p0, Lf/i/a/a/w0/h$b;

    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v3 .. v9}, Lf/i/a/a/w0/h$b;-><init>(IIIIILf/i/a/a/w0/h$a;)V

    return-object p0
.end method
