.class public Lcom/umeng/commonsdk/proguard/ab;
.super Lcom/umeng/commonsdk/proguard/ai;
.source "TBinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/ab$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x10000

.field public static final b:I = -0x7fff0000

.field public static final h:Lcom/umeng/commonsdk/proguard/an;


# instance fields
.field public c:Z

.field public d:Z

.field public e:I

.field public f:Z

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/an;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/ab;->h:Lcom/umeng/commonsdk/proguard/an;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/aw;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/proguard/ab;-><init>(Lcom/umeng/commonsdk/proguard/aw;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/aw;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ai;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/ab;->c:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/ab;->d:Z

    .line 5
    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/ab;->f:Z

    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ab;->i:[B

    const/4 p1, 0x2

    new-array v1, p1, [B

    .line 7
    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/ab;->j:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 8
    iput-object v2, p0, Lcom/umeng/commonsdk/proguard/ab;->k:[B

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 9
    iput-object v3, p0, Lcom/umeng/commonsdk/proguard/ab;->l:[B

    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->m:[B

    new-array p1, p1, [B

    .line 11
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ab;->n:[B

    new-array p1, v1, [B

    .line 12
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ab;->o:[B

    new-array p1, v2, [B

    .line 13
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ab;->p:[B

    .line 14
    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/ab;->c:Z

    .line 15
    iput-boolean p3, p0, Lcom/umeng/commonsdk/proguard/ab;->d:Z

    return-void
.end method

.method private a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p3}, Lcom/umeng/commonsdk/proguard/ab;->d(I)V

    .line 47
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/aw;->d([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->d(I)V

    .line 3
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V

    return-object v1

    .line 6
    :cond_0
    new-array v1, v0, [B

    .line 7
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/commonsdk/proguard/aw;->d([BII)I

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->i:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 20
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V

    return-void
.end method

.method public a(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ab;->a(J)V

    return-void
.end method

.method public a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->k:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    .line 25
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    .line 26
    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 27
    aput-byte p1, v0, v1

    .line 28
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V

    return-void
.end method

.method public a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->l:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x1

    .line 30
    aput-byte v1, v0, v5

    const/16 v1, 0x28

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x2

    .line 31
    aput-byte v1, v0, v5

    const/16 v1, 0x20

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    .line 32
    aput-byte v1, v0, v5

    const/16 v1, 0x18

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x4

    .line 33
    aput-byte v1, v0, v5

    const/16 v1, 0x10

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x5

    .line 34
    aput-byte v1, v0, v5

    const/16 v1, 0x8

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    const/4 v6, 0x6

    .line 35
    aput-byte v5, v0, v6

    and-long/2addr p1, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x7

    .line 36
    aput-byte p1, v0, p2

    .line 37
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 9
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ad;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 10
    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/ad;->c:S

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(S)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 14
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ae;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 15
    iget p1, p1, Lcom/umeng/commonsdk/proguard/ae;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 11
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/af;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 12
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 13
    iget p1, p1, Lcom/umeng/commonsdk/proguard/af;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/ab;->d:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x7fff0000

    .line 2
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ag;->b:B

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    .line 4
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/ag;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/lang/String;)V

    .line 5
    iget p1, p1, Lcom/umeng/commonsdk/proguard/ag;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/ag;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/lang/String;)V

    .line 7
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ag;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 8
    iget p1, p1, Lcom/umeng/commonsdk/proguard/ag;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 16
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/am;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    .line 17
    iget p1, p1, Lcom/umeng/commonsdk/proguard/am;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/an;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 40
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    .line 41
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 42
    :catch_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/p;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 44
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(I)V

    .line 45
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, p1, v0}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V

    return-void
.end method

.method public a(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->j:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 22
    aput-byte p1, v0, v1

    .line 23
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/aw;->b([BII)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/ab;->d(I)V

    .line 2
    new-array v0, p1, [B

    .line 3
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/umeng/commonsdk/proguard/aw;->d([BII)I

    .line 4
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/p;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/umeng/commonsdk/proguard/ab;->e:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/ab;->f:Z

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(B)V

    return-void
.end method

.method public d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/ab;->f:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/umeng/commonsdk/proguard/ab;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/commonsdk/proguard/ab;->e:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Message length exceeded: "

    invoke-static {v1, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v1, "Negative length: "

    invoke-static {v1, p1}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Lcom/umeng/commonsdk/proguard/ag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_1

    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    const/high16 v3, -0x7fff0000

    if-ne v2, v3, :cond_0

    .line 2
    new-instance v1, Lcom/umeng/commonsdk/proguard/ag;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->z()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;BI)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v2, "Bad version in readMessageBegin"

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(ILjava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-boolean v2, p0, Lcom/umeng/commonsdk/proguard/ab;->c:Z

    if-nez v2, :cond_2

    .line 5
    new-instance v1, Lcom/umeng/commonsdk/proguard/ag;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;BI)V

    return-object v1

    .line 6
    :cond_2
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    const-string v2, "Missing version in readMessageBegin, old client?"

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Lcom/umeng/commonsdk/proguard/an;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/proguard/ab;->h:Lcom/umeng/commonsdk/proguard/an;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()Lcom/umeng/commonsdk/proguard/ad;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->v()S

    move-result v1

    .line 3
    :goto_0
    new-instance v2, Lcom/umeng/commonsdk/proguard/ad;

    const-string v3, ""

    invoke-direct {v2, v3, v0, v1}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()Lcom/umeng/commonsdk/proguard/af;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/af;-><init>(BBI)V

    return-object v0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Lcom/umeng/commonsdk/proguard/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/ae;-><init>(BI)V

    return-object v0
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()Lcom/umeng/commonsdk/proguard/am;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/am;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/am;-><init>(BI)V

    return-object v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public u()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v2

    aget-byte v0, v0, v2

    .line 3
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2, v1}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->m:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/ab;->a([BII)I

    .line 5
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->m:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public v()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->n:[B

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v2

    .line 5
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ab;->n:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ab;->a([BII)I

    .line 7
    :goto_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->o:[B

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v2

    .line 5
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ab;->o:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ab;->a([BII)I

    .line 7
    :goto_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public x()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ab;->p:[B

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v2

    .line 5
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ab;->p:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/ab;->a([BII)I

    .line 7
    :goto_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public y()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ab;->w()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/aw;->h()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/aw;->f()[B

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/aw;->g()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/ai;->g:Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/aw;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :catch_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/p;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/ab;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
