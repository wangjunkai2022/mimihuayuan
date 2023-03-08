.class public final Lf/i/a/a/d1/g/b;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lf/i/a/a/d1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;
    .locals 11

    .line 1
    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 4
    new-instance v1, Lf/i/a/a/m1/u;

    invoke-direct {v1, v0, p1}, Lf/i/a/a/m1/u;-><init>([BI)V

    .line 5
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v9

    .line 8
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    .line 9
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v5

    .line 10
    invoke-virtual {v1}, Lf/i/a/a/m1/u;->q()J

    move-result-wide v7

    .line 11
    iget v1, v1, Lf/i/a/a/m1/u;->b:I

    .line 12
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 13
    new-instance p1, Lf/i/a/a/d1/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lf/i/a/a/d1/a$b;

    new-instance v1, Lf/i/a/a/d1/g/a;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lf/i/a/a/d1/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    return-object p1
.end method
