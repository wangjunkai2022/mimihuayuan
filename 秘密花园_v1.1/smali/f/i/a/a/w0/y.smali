.class public final Lf/i/a/a/w0/y;
.super Lf/i/a/a/w0/t;
.source "FloatResamplingAudioProcessor.java"


# static fields
.field public static final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lf/i/a/a/w0/y;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/i/a/a/w0/t;-><init>()V

    return-void
.end method

.method public static n(ILjava/nio/ByteBuffer;)V
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x3e00000000200000L    # 4.656612875245797E-10

    mul-double v0, v0, v2

    double-to-float p0, v0

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 2
    sget v0, Lf/i/a/a/w0/y;->h:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public d(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget v0, p0, Lf/i/a/a/w0/t;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    .line 5
    :goto_1
    invoke-virtual {p0, v3}, Lf/i/a/a/w0/t;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v0, :cond_2

    :goto_2
    if-ge v1, v2, :cond_3

    .line 6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v4, v1, 0x1

    .line 7
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 8
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x3

    .line 9
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 10
    invoke-static {v0, v3}, Lf/i/a/a/w0/y;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, v2, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v1, 0x1

    .line 12
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 13
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v0, v4

    .line 14
    invoke-static {v0, v3}, Lf/i/a/a/w0/y;->n(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public f(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/m$a;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lf/i/a/a/m1/h0;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/w0/t;->m(III)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Lf/i/a/a/w0/m$a;

    invoke-direct {v0, p1, p2, p3}, Lf/i/a/a/w0/m$a;-><init>(III)V

    throw v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/w0/t;->d:I

    invoke-static {v0}, Lf/i/a/a/m1/h0;->S(I)Z

    move-result v0

    return v0
.end method
