.class public final Li/m0/g/l$a;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Lj/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:Lj/j;


# direct methods
.method public constructor <init>(Lj/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/g/l$a;->f:Lj/j;

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    :goto_0
    iget v0, p0, Li/m0/g/l$a;->d:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Li/m0/g/l$a;->f:Lj/j;

    iget v3, p0, Li/m0/g/l$a;->e:I

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lj/j;->skip(J)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li/m0/g/l$a;->e:I

    .line 4
    iget v0, p0, Li/m0/g/l$a;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 5
    :cond_0
    iget v0, p0, Li/m0/g/l$a;->c:I

    .line 6
    iget-object v1, p0, Li/m0/g/l$a;->f:Lj/j;

    invoke-static {v1}, Li/m0/b;->y(Lj/j;)I

    move-result v1

    iput v1, p0, Li/m0/g/l$a;->d:I

    .line 7
    iput v1, p0, Li/m0/g/l$a;->a:I

    .line 8
    iget-object v1, p0, Li/m0/g/l$a;->f:Lj/j;

    invoke-interface {v1}, Lj/j;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 9
    iget-object v2, p0, Li/m0/g/l$a;->f:Lj/j;

    invoke-interface {v2}, Lj/j;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Li/m0/g/l$a;->b:I

    .line 10
    sget-object v2, Li/m0/g/l;->f:Li/m0/g/l;

    .line 11
    sget-object v2, Li/m0/g/l;->e:Ljava/util/logging/Logger;

    .line 12
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Li/m0/g/l;->f:Li/m0/g/l;

    .line 13
    sget-object v8, Li/m0/g/l;->e:Ljava/util/logging/Logger;

    .line 14
    sget-object v2, Li/m0/g/e;->e:Li/m0/g/e;

    const/4 v3, 0x1

    iget v4, p0, Li/m0/g/l$a;->c:I

    iget v5, p0, Li/m0/g/l$a;->a:I

    iget v7, p0, Li/m0/g/l$a;->b:I

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Li/m0/g/e;->a(ZIIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object v2, p0, Li/m0/g/l$a;->f:Lj/j;

    invoke-interface {v2}, Lj/j;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Li/m0/g/l$a;->c:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != TYPE_CONTINUATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    iget-object v3, p0, Li/m0/g/l$a;->f:Lj/j;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lj/a0;->c(Lj/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    return-wide v1

    .line 19
    :cond_5
    iget p3, p0, Li/m0/g/l$a;->d:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Li/m0/g/l$a;->d:I

    return-wide p1

    :cond_6
    const-string p1, "sink"

    .line 20
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/g/l$a;->f:Lj/j;

    invoke-interface {v0}, Lj/a0;->i()Lj/b0;

    move-result-object v0

    return-object v0
.end method
