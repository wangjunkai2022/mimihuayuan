.class public final Lf/i/a/a/b1/s/a;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lf/i/a/a/b1/s/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/s/a$b;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/b1/s/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/i/a/a/b1/s/f;

.field public d:Lf/i/a/a/b1/s/b;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lf/i/a/a/b1/s/a;->a:[B

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    .line 4
    new-instance v0, Lf/i/a/a/b1/s/f;

    invoke-direct {v0}, Lf/i/a/a/b1/s/f;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/s/a;->c:Lf/i/a/a/b1/s/f;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/d;)Z
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget-object v2, v0, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const v3, 0x1654ae6b

    const v4, 0x1549a966

    const-wide/16 v5, -0x1

    const v7, 0x1c53bb6b

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v2, :cond_4e

    .line 3
    iget-wide v11, v1, Lf/i/a/a/b1/d;->d:J

    .line 4
    iget-object v2, v0, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/b1/s/a$b;

    .line 5
    iget-wide v13, v2, Lf/i/a/a/b1/s/a$b;->b:J

    cmp-long v2, v11, v13

    if-ltz v2, :cond_4e

    .line 6
    iget-object v1, v0, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget-object v2, v0, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/b1/s/a$b;

    .line 7
    iget v2, v2, Lf/i/a/a/b1/s/a$b;->a:I

    .line 8
    check-cast v1, Lf/i/a/a/b1/s/d$b;

    .line 9
    iget-object v1, v1, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v1, :cond_4d

    const/16 v11, 0xa0

    if-eq v2, v11, :cond_49

    const/16 v11, 0xae

    if-eq v2, v11, :cond_f

    const/16 v11, 0x4dbb

    if-eq v2, v11, :cond_d

    const/16 v8, 0x6240

    if-eq v2, v8, :cond_b

    const/16 v8, 0x6d80

    if-eq v2, v8, :cond_9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_5

    if-eq v2, v7, :cond_0

    goto/16 :goto_2b

    .line 10
    :cond_0
    iget-boolean v2, v1, Lf/i/a/a/b1/s/d;->u:Z

    if-nez v2, :cond_4c

    .line 11
    iget-object v2, v1, Lf/i/a/a/b1/s/d;->Y:Lf/i/a/a/b1/h;

    .line 12
    iget-wide v3, v1, Lf/i/a/a/b1/s/d;->p:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    iget-wide v3, v1, Lf/i/a/a/b1/s/d;->s:J

    cmp-long v5, v3, v11

    if-eqz v5, :cond_4

    iget-object v3, v1, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    if-eqz v3, :cond_4

    .line 13
    iget v3, v3, Lf/i/a/a/m1/p;->a:I

    if-eqz v3, :cond_4

    .line 14
    iget-object v4, v1, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    if-eqz v4, :cond_4

    .line 15
    iget v4, v4, Lf/i/a/a/m1/p;->a:I

    if-eq v4, v3, :cond_1

    goto :goto_3

    .line 16
    :cond_1
    new-array v4, v3, [I

    .line 17
    new-array v5, v3, [J

    .line 18
    new-array v6, v3, [J

    .line 19
    new-array v7, v3, [J

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_2

    .line 20
    iget-object v11, v1, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    invoke-virtual {v11, v8}, Lf/i/a/a/m1/p;->b(I)J

    move-result-wide v11

    aput-wide v11, v7, v8

    .line 21
    iget-wide v11, v1, Lf/i/a/a/b1/s/d;->p:J

    iget-object v13, v1, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    invoke-virtual {v13, v8}, Lf/i/a/a/m1/p;->b(I)J

    move-result-wide v13

    add-long/2addr v13, v11

    aput-wide v13, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v8, v3, -0x1

    if-ge v10, v8, :cond_3

    add-int/lit8 v8, v10, 0x1

    .line 22
    aget-wide v11, v5, v8

    aget-wide v13, v5, v10

    sub-long/2addr v11, v13

    long-to-int v12, v11

    aput v12, v4, v10

    .line 23
    aget-wide v11, v7, v8

    aget-wide v13, v7, v10

    sub-long/2addr v11, v13

    aput-wide v11, v6, v10

    move v10, v8

    goto :goto_2

    .line 24
    :cond_3
    iget-wide v10, v1, Lf/i/a/a/b1/s/d;->p:J

    iget-wide v12, v1, Lf/i/a/a/b1/s/d;->o:J

    add-long/2addr v10, v12

    aget-wide v12, v5, v8

    sub-long/2addr v10, v12

    long-to-int v3, v10

    aput v3, v4, v8

    .line 25
    iget-wide v10, v1, Lf/i/a/a/b1/s/d;->s:J

    aget-wide v12, v7, v8

    sub-long/2addr v10, v12

    aput-wide v10, v6, v8

    .line 26
    iput-object v9, v1, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    .line 27
    iput-object v9, v1, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    .line 28
    new-instance v3, Lf/i/a/a/b1/b;

    invoke-direct {v3, v4, v5, v6, v7}, Lf/i/a/a/b1/b;-><init>([I[J[J[J)V

    goto :goto_4

    .line 29
    :cond_4
    :goto_3
    iput-object v9, v1, Lf/i/a/a/b1/s/d;->B:Lf/i/a/a/m1/p;

    .line 30
    iput-object v9, v1, Lf/i/a/a/b1/s/d;->C:Lf/i/a/a/m1/p;

    .line 31
    new-instance v3, Lf/i/a/a/b1/n$b;

    iget-wide v4, v1, Lf/i/a/a/b1/s/d;->s:J

    const-wide/16 v6, 0x0

    .line 32
    invoke-direct {v3, v4, v5, v6, v7}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    .line 33
    :goto_4
    invoke-interface {v2, v3}, Lf/i/a/a/b1/h;->a(Lf/i/a/a/b1/n;)V

    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v1, Lf/i/a/a/b1/s/d;->u:Z

    goto/16 :goto_2b

    .line 35
    :cond_5
    iget-object v2, v1, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    iget-object v1, v1, Lf/i/a/a/b1/s/d;->Y:Lf/i/a/a/b1/h;

    invoke-interface {v1}, Lf/i/a/a/b1/h;->d()V

    goto/16 :goto_2b

    .line 37
    :cond_6
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_7
    iget-wide v2, v1, Lf/i/a/a/b1/s/d;->q:J

    cmp-long v4, v2, v11

    if-nez v4, :cond_8

    const-wide/32 v2, 0xf4240

    .line 39
    iput-wide v2, v1, Lf/i/a/a/b1/s/d;->q:J

    .line 40
    :cond_8
    iget-wide v2, v1, Lf/i/a/a/b1/s/d;->r:J

    cmp-long v4, v2, v11

    if-eqz v4, :cond_4c

    .line 41
    invoke-virtual {v1, v2, v3}, Lf/i/a/a/b1/s/d;->l(J)J

    move-result-wide v2

    iput-wide v2, v1, Lf/i/a/a/b1/s/d;->s:J

    goto/16 :goto_2b

    .line 42
    :cond_9
    iget-object v1, v1, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iget-boolean v2, v1, Lf/i/a/a/b1/s/d$c;->f:Z

    if-eqz v2, :cond_4c

    iget-object v1, v1, Lf/i/a/a/b1/s/d$c;->g:[B

    if-nez v1, :cond_a

    goto/16 :goto_2b

    .line 43
    :cond_a
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_b
    iget-object v1, v1, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iget-boolean v2, v1, Lf/i/a/a/b1/s/d$c;->f:Z

    if-eqz v2, :cond_4c

    .line 45
    iget-object v2, v1, Lf/i/a/a/b1/s/d$c;->h:Lf/i/a/a/b1/p$a;

    if-eqz v2, :cond_c

    .line 46
    new-instance v3, Lf/i/a/a/z0/e;

    const/4 v4, 0x1

    new-array v5, v4, [Lf/i/a/a/z0/e$b;

    new-instance v6, Lf/i/a/a/z0/e$b;

    sget-object v7, Lf/i/a/a/q;->a:Ljava/util/UUID;

    iget-object v2, v2, Lf/i/a/a/b1/p$a;->b:[B

    const-string v8, "video/webm"

    invoke-direct {v6, v7, v8, v2}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v6, v5, v10

    .line 47
    invoke-direct {v3, v9, v4, v5}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    .line 48
    iput-object v3, v1, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    goto/16 :goto_2b

    .line 49
    :cond_c
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_d
    iget v2, v1, Lf/i/a/a/b1/s/d;->v:I

    if-eq v2, v8, :cond_e

    iget-wide v3, v1, Lf/i/a/a/b1/s/d;->w:J

    cmp-long v8, v3, v5

    if-eqz v8, :cond_e

    if-ne v2, v7, :cond_4c

    .line 51
    iput-wide v3, v1, Lf/i/a/a/b1/s/d;->y:J

    goto/16 :goto_2b

    .line 52
    :cond_e
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_f
    iget-object v2, v1, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iget-object v2, v2, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    const-string v3, "V_VP8"

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "A_AAC"

    const-string v6, "A_VORBIS"

    const-string v7, "A_OPUS"

    const-string v8, "V_THEORA"

    const-string v9, "V_MS/VFW/FOURCC"

    const-string v10, "V_MPEGH/ISO/HEVC"

    const-string v11, "V_MPEG4/ISO/AVC"

    const-string v12, "V_MPEG4/ISO/AP"

    const-string v13, "V_MPEG4/ISO/ASP"

    const-string v14, "V_MPEG4/ISO/SP"

    const-string v15, "V_MPEG2"

    const-string v0, "V_AV1"

    move-object/from16 p1, v3

    const-string v3, "V_VP9"

    move-object/from16 v16, v1

    const-string v1, "S_TEXT/UTF8"

    move-object/from16 v17, v1

    const-string v1, "S_TEXT/ASS"

    move-object/from16 v18, v1

    const-string v1, "A_PCM/INT/LIT"

    move-object/from16 v19, v1

    const-string v1, "A_DTS/EXPRESS"

    move-object/from16 v20, v1

    const-string v1, "S_HDMV/PGS"

    move-object/from16 v21, v1

    const-string v1, "A_DTS"

    move-object/from16 v22, v1

    const-string v1, "A_AC3"

    move-object/from16 v23, v1

    const-string v1, "A_DTS/LOSSLESS"

    move-object/from16 v24, v1

    const-string v1, "S_VOBSUB"

    move-object/from16 v25, v1

    const-string v1, "S_DVBSUB"

    move-object/from16 v26, v1

    const-string v1, "A_MPEG/L3"

    move-object/from16 v27, v1

    const-string v1, "A_MPEG/L2"

    move-object/from16 v28, v1

    const-string v1, "A_TRUEHD"

    move-object/from16 v29, v1

    const-string v1, "A_MS/ACM"

    move-object/from16 v30, v1

    const-string v1, "A_FLAC"

    move-object/from16 v31, v1

    const-string v1, "A_EAC3"

    if-nez v4, :cond_1f

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 57
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 58
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 59
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 60
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 61
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 62
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 63
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 64
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 65
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v4, v28

    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1e

    move-object/from16 v28, v12

    move-object/from16 v12, v27

    .line 69
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1d

    move-object/from16 v27, v14

    move-object/from16 v14, v23

    .line 70
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a

    move-object/from16 v23, v6

    move-object/from16 v6, v29

    .line 72
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_19

    move-object/from16 v29, v6

    move-object/from16 v6, v22

    .line 73
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    move-object/from16 v20, v12

    move-object/from16 v12, v24

    .line 75
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    move-object/from16 v24, v9

    move-object/from16 v9, v31

    .line 76
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_14

    move-object/from16 v31, v13

    move-object/from16 v13, v30

    .line 77
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    move-object/from16 v30, v13

    move-object/from16 v13, v19

    .line 78
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    .line 79
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    .line 80
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_17

    move-object/from16 v18, v5

    move-object/from16 v5, v25

    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    move-object/from16 v25, v5

    move-object/from16 v5, v21

    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_18

    move-object/from16 v21, v14

    move-object/from16 v14, v26

    .line 83
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_a

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_11
    move-object/from16 v25, v5

    goto :goto_6

    :cond_12
    move-object/from16 v30, v13

    goto :goto_5

    :cond_13
    move-object/from16 v24, v9

    move-object/from16 v9, v31

    :cond_14
    move-object/from16 v31, v13

    :goto_5
    move-object/from16 v13, v19

    :cond_15
    move-object/from16 v19, v11

    move-object/from16 v11, v17

    :cond_16
    move-object/from16 v17, v12

    move-object/from16 v12, v18

    :cond_17
    move-object/from16 v18, v5

    :goto_6
    move-object/from16 v5, v21

    :cond_18
    move-object/from16 v21, v14

    move-object/from16 v14, v26

    goto/16 :goto_a

    :cond_19
    move-object/from16 v29, v6

    goto :goto_7

    :cond_1a
    move-object/from16 v23, v6

    :goto_7
    move-object/from16 v6, v22

    :cond_1b
    move-object/from16 v22, v4

    move-object/from16 v4, v20

    :cond_1c
    move-object/from16 v20, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v14

    :goto_8
    move-object/from16 v14, v26

    move-object/from16 v36, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v31

    move-object/from16 v31, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v36

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v27, v14

    move-object/from16 v14, v26

    move-object/from16 v36, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v36

    goto :goto_9

    :cond_1e
    move-object/from16 v28, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v27

    move-object/from16 v27, v14

    goto :goto_8

    :cond_1f
    move-object/from16 v4, v20

    move-object/from16 v20, v27

    move-object/from16 v27, v14

    move-object/from16 v14, v26

    move-object/from16 v36, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v36

    :goto_9
    move-object/from16 v37, v24

    move-object/from16 v24, v9

    move-object/from16 v9, v31

    move-object/from16 v31, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v37

    :goto_a
    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_48

    move-object/from16 v26, v14

    move-object/from16 v2, v16

    .line 84
    iget-object v14, v2, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    move-object/from16 v16, v6

    iget-object v6, v2, Lf/i/a/a/b1/s/d;->Y:Lf/i/a/a/b1/h;

    move-object/from16 v32, v2

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->c:I

    move-object/from16 v33, v6

    .line 85
    iget-object v6, v14, Lf/i/a/a/b1/s/d$c;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v34

    move/from16 v35, v2

    const/16 v2, 0xf

    sparse-switch v34, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xc

    goto/16 :goto_d

    :sswitch_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x16

    goto/16 :goto_d

    :sswitch_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x11

    goto/16 :goto_d

    :sswitch_3
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    goto/16 :goto_d

    :sswitch_4
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x19

    goto/16 :goto_d

    :sswitch_5
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x8

    goto/16 :goto_d

    :sswitch_6
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1a

    goto/16 :goto_d

    :sswitch_7
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x18

    goto/16 :goto_d

    :sswitch_8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x14

    goto/16 :goto_d

    :sswitch_9
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xa

    goto/16 :goto_d

    :sswitch_a
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1c

    goto/16 :goto_d

    :sswitch_b
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto/16 :goto_d

    :sswitch_c
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto/16 :goto_d

    :sswitch_d
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    goto/16 :goto_d

    :sswitch_e
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x13

    goto/16 :goto_d

    :sswitch_f
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x10

    goto/16 :goto_d

    :sswitch_10
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xd

    goto/16 :goto_d

    :sswitch_11
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x15

    goto/16 :goto_d

    :sswitch_12
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1b

    goto/16 :goto_d

    :sswitch_13
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x7

    goto/16 :goto_d

    :sswitch_14
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x5

    goto/16 :goto_d

    :sswitch_15
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1d

    goto :goto_d

    :sswitch_16
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x9

    goto :goto_d

    :sswitch_17
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xf

    goto :goto_d

    :sswitch_18
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xe

    goto :goto_d

    :sswitch_19
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0xb

    goto :goto_d

    :sswitch_1a
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x12

    goto :goto_d

    :sswitch_1b
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x17

    goto :goto_d

    :sswitch_1c
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x4

    goto :goto_d

    :sswitch_1d
    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x6

    goto :goto_d

    :cond_20
    :goto_c
    const/4 v0, -0x1

    :goto_d
    const-string v1, "application/pgs"

    const-string v3, "application/vobsub"

    const-string v4, "text/x-ssa"

    const-string v5, "application/x-subrip"

    const-string v6, "video/x-unknown"

    const-string v7, "application/dvbsubs"

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 87
    iget-object v2, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    const/4 v6, 0x0

    aget-byte v8, v2, v6

    aput-byte v8, v0, v6

    const/4 v6, 0x1

    aget-byte v8, v2, v6

    aput-byte v8, v0, v6

    const/4 v6, 0x2

    aget-byte v8, v2, v6

    aput-byte v8, v0, v6

    const/4 v6, 0x3

    aget-byte v2, v2, v6

    aput-byte v2, v0, v6

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v7

    goto/16 :goto_1b

    :pswitch_1
    move-object v6, v1

    goto/16 :goto_1a

    .line 88
    :pswitch_2
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v3

    goto/16 :goto_1b

    :pswitch_3
    move-object v6, v4

    goto/16 :goto_1a

    :pswitch_4
    move-object v6, v5

    goto/16 :goto_1a

    .line 89
    :pswitch_5
    iget v0, v14, Lf/i/a/a/b1/s/d$c;->M:I

    invoke-static {v0}, Lf/i/a/a/m1/h0;->G(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_10

    .line 90
    :pswitch_6
    new-instance v0, Lf/i/a/a/m1/u;

    iget-object v2, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-direct {v0, v2}, Lf/i/a/a/m1/u;-><init>([B)V

    .line 91
    :try_start_0
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->i()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_21

    goto :goto_e

    :cond_21
    const v6, 0xfffe

    if-ne v2, v6, :cond_22

    const/16 v2, 0x18

    .line 92
    invoke-virtual {v0, v2}, Lf/i/a/a/m1/u;->A(I)V

    .line 93
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v8

    .line 94
    sget-object v2, Lf/i/a/a/b1/s/d;->e0:Ljava/util/UUID;

    .line 95
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-nez v2, :cond_22

    .line 96
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->j()J

    move-result-wide v8

    .line 97
    sget-object v0, Lf/i/a/a/b1/s/d;->e0:Ljava/util/UUID;

    .line 98
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v8, v10

    if-nez v0, :cond_22

    :goto_e
    const/4 v0, 0x1

    goto :goto_f

    :cond_22
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_24

    .line 99
    iget v0, v14, Lf/i/a/a/b1/s/d$c;->M:I

    invoke-static {v0}, Lf/i/a/a/m1/h0;->G(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_10

    :cond_23
    const-string v2, "audio/raw"

    const/4 v6, 0x0

    goto/16 :goto_1c

    :cond_24
    :goto_10
    const-string v0, "audio/x-unknown"

    const/4 v2, -0x1

    goto :goto_12

    .line 100
    :catch_0
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_7
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "audio/flac"

    goto/16 :goto_1b

    :pswitch_8
    const-string v6, "audio/vnd.dts.hd"

    goto/16 :goto_1a

    :pswitch_9
    const-string v6, "audio/vnd.dts"

    goto/16 :goto_1a

    .line 102
    :pswitch_a
    new-instance v0, Lf/i/a/a/b1/s/d$d;

    invoke-direct {v0}, Lf/i/a/a/b1/s/d$d;-><init>()V

    iput-object v0, v14, Lf/i/a/a/b1/s/d$c;->Q:Lf/i/a/a/b1/s/d$d;

    const-string v6, "audio/true-hd"

    goto/16 :goto_1a

    :pswitch_b
    const-string v6, "audio/eac3"

    goto/16 :goto_1a

    :pswitch_c
    const-string v6, "audio/ac3"

    goto/16 :goto_1a

    :pswitch_d
    const-string v0, "audio/mpeg"

    goto :goto_11

    :pswitch_e
    const-string v0, "audio/mpeg-L2"

    :goto_11
    const/16 v2, 0x1000

    :goto_12
    const/4 v6, 0x0

    goto/16 :goto_15

    .line 103
    :pswitch_f
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "audio/mp4a-latm"

    goto/16 :goto_1b

    .line 104
    :pswitch_10
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    .line 106
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v8, v14, Lf/i/a/a/b1/s/d$c;->O:J

    invoke-virtual {v2, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 107
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v8, v14, Lf/i/a/a/b1/s/d$c;->P:J

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 109
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1680

    const-string v0, "audio/opus"

    goto :goto_15

    .line 110
    :pswitch_11
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    const-string v2, "Error parsing vorbis codec private"

    const/4 v6, 0x0

    .line 111
    :try_start_1
    aget-byte v6, v0, v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2a

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 112
    :goto_13
    aget-byte v9, v0, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_25

    add-int/lit16 v8, v8, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_25
    add-int/lit8 v9, v6, 0x1

    .line 113
    aget-byte v6, v0, v6

    add-int/2addr v8, v6

    const/4 v6, 0x0

    .line 114
    :goto_14
    aget-byte v10, v0, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_26

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_26
    add-int/lit8 v10, v9, 0x1

    .line 115
    aget-byte v9, v0, v9

    add-int/2addr v6, v9

    .line 116
    aget-byte v9, v0, v10

    const/4 v11, 0x1

    if-ne v9, v11, :cond_29

    .line 117
    new-array v9, v8, [B

    const/4 v11, 0x0

    .line 118
    invoke-static {v0, v10, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v8

    .line 119
    aget-byte v8, v0, v10

    const/4 v11, 0x3

    if-ne v8, v11, :cond_28

    add-int/2addr v10, v6

    .line 120
    aget-byte v6, v0, v10

    const/4 v8, 0x5

    if-ne v6, v8, :cond_27

    .line 121
    array-length v6, v0

    sub-int/2addr v6, v10

    new-array v6, v6, [B

    .line 122
    array-length v8, v0

    sub-int/2addr v8, v10

    const/4 v11, 0x0

    invoke-static {v0, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v2, 0x2000

    const-string v6, "audio/vorbis"

    move-object/from16 v36, v6

    move-object v6, v0

    move-object/from16 v0, v36

    :goto_15
    const/4 v8, -0x1

    move/from16 v19, v2

    const/16 v22, -0x1

    goto/16 :goto_1d

    .line 126
    :cond_27
    :try_start_2
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_28
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_29
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2a
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :catch_1
    new-instance v0, Lf/i/a/a/h0;

    invoke-direct {v0, v2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_12
    new-instance v0, Lf/i/a/a/m1/u;

    iget-object v8, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-direct {v0, v8}, Lf/i/a/a/m1/u;-><init>([B)V

    const/16 v8, 0x10

    .line 132
    :try_start_3
    invoke-virtual {v0, v8}, Lf/i/a/a/m1/u;->B(I)V

    .line 133
    invoke-virtual {v0}, Lf/i/a/a/m1/u;->g()J

    move-result-wide v8

    const-wide/32 v10, 0x58564944

    cmp-long v12, v8, v10

    if-nez v12, :cond_2b

    .line 134
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/divx"

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_2b
    const-wide/32 v10, 0x33363248

    cmp-long v12, v8, v10

    if-nez v12, :cond_2c

    .line 135
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/3gpp"

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_2c
    const-wide/32 v10, 0x31435657

    cmp-long v12, v8, v10

    if-nez v12, :cond_2f

    .line 136
    iget v6, v0, Lf/i/a/a/m1/u;->b:I

    add-int/lit8 v6, v6, 0x14

    .line 137
    iget-object v0, v0, Lf/i/a/a/m1/u;->a:[B

    .line 138
    :goto_16
    array-length v8, v0

    add-int/lit8 v8, v8, -0x4

    if-ge v6, v8, :cond_2e

    .line 139
    aget-byte v8, v0, v6

    if-nez v8, :cond_2d

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v0, v8

    if-nez v8, :cond_2d

    add-int/lit8 v8, v6, 0x2

    aget-byte v8, v0, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2d

    add-int/lit8 v8, v6, 0x3

    aget-byte v8, v0, v8

    if-ne v8, v2, :cond_2d

    .line 140
    array-length v2, v0

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 141
    new-instance v2, Landroid/util/Pair;

    const-string v6, "video/wvc1"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_17

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 142
    :cond_2e
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    :cond_2f
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :goto_17
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 145
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_1b

    .line 146
    :catch_2
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Error parsing FourCC private data"

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_13
    new-instance v0, Lf/i/a/a/m1/u;

    iget-object v2, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-direct {v0, v2}, Lf/i/a/a/m1/u;-><init>([B)V

    invoke-static {v0}, Lf/i/a/a/n1/l;->a(Lf/i/a/a/m1/u;)Lf/i/a/a/n1/l;

    move-result-object v0

    .line 148
    iget-object v2, v0, Lf/i/a/a/n1/l;->a:Ljava/util/List;

    .line 149
    iget v0, v0, Lf/i/a/a/n1/l;->b:I

    iput v0, v14, Lf/i/a/a/b1/s/d$c;->V:I

    const-string v0, "video/hevc"

    goto :goto_18

    .line 150
    :pswitch_14
    new-instance v0, Lf/i/a/a/m1/u;

    iget-object v2, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-direct {v0, v2}, Lf/i/a/a/m1/u;-><init>([B)V

    invoke-static {v0}, Lf/i/a/a/n1/h;->b(Lf/i/a/a/m1/u;)Lf/i/a/a/n1/h;

    move-result-object v0

    .line 151
    iget-object v2, v0, Lf/i/a/a/n1/h;->a:Ljava/util/List;

    .line 152
    iget v0, v0, Lf/i/a/a/n1/h;->b:I

    iput v0, v14, Lf/i/a/a/b1/s/d$c;->V:I

    const-string v0, "video/avc"

    :goto_18
    move-object/from16 v36, v2

    move-object v2, v0

    move-object/from16 v0, v36

    goto :goto_1b

    .line 153
    :pswitch_15
    iget-object v0, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    if-nez v0, :cond_30

    const/4 v0, 0x0

    goto :goto_19

    .line 154
    :cond_30
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_19
    const-string v2, "video/mp4v-es"

    goto :goto_1b

    :pswitch_16
    const-string v6, "video/mpeg2"

    goto :goto_1a

    :pswitch_17
    const-string v6, "video/av01"

    goto :goto_1a

    :pswitch_18
    const-string v6, "video/x-vnd.on2.vp9"

    goto :goto_1a

    :pswitch_19
    const-string v6, "video/x-vnd.on2.vp8"

    :goto_1a
    :pswitch_1a
    const/4 v0, 0x0

    move-object v2, v6

    :goto_1b
    const/4 v6, -0x1

    move-object v6, v0

    const/4 v0, -0x1

    :goto_1c
    const/4 v8, -0x1

    move/from16 v22, v0

    move-object v0, v2

    const/16 v19, -0x1

    .line 155
    :goto_1d
    iget-boolean v2, v14, Lf/i/a/a/b1/s/d$c;->S:Z

    or-int/lit8 v2, v2, 0x0

    .line 156
    iget-boolean v8, v14, Lf/i/a/a/b1/s/d$c;->R:Z

    if-eqz v8, :cond_31

    const/4 v8, 0x2

    goto :goto_1e

    :cond_31
    const/4 v8, 0x0

    :goto_1e
    or-int/2addr v2, v8

    .line 157
    invoke-static {v0}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 158
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->L:I

    iget v3, v14, Lf/i/a/a/b1/s/d$c;->N:I

    iget-object v4, v14, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    iget-object v5, v14, Lf/i/a/a/b1/s/d$c;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v20, v1

    move/from16 v21, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move/from16 v25, v2

    move-object/from16 v26, v5

    invoke-static/range {v15 .. v26}, Lf/i/a/a/b0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lf/i/a/a/z0/e;ILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v0

    const/4 v1, 0x1

    goto/16 :goto_29

    .line 159
    :cond_32
    invoke-static {v0}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 160
    iget v1, v14, Lf/i/a/a/b1/s/d$c;->o:I

    if-nez v1, :cond_35

    .line 161
    iget v1, v14, Lf/i/a/a/b1/s/d$c;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->k:I

    :cond_33
    iput v1, v14, Lf/i/a/a/b1/s/d$c;->m:I

    .line 162
    iget v1, v14, Lf/i/a/a/b1/s/d$c;->n:I

    if-ne v1, v2, :cond_34

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->l:I

    :cond_34
    iput v1, v14, Lf/i/a/a/b1/s/d$c;->n:I

    goto :goto_1f

    :cond_35
    const/4 v2, -0x1

    .line 163
    :goto_1f
    iget v1, v14, Lf/i/a/a/b1/s/d$c;->m:I

    if-eq v1, v2, :cond_36

    iget v3, v14, Lf/i/a/a/b1/s/d$c;->n:I

    if-eq v3, v2, :cond_36

    .line 164
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->l:I

    mul-int v2, v2, v1

    int-to-float v1, v2

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->k:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v25, v1

    goto :goto_20

    :cond_36
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v25, -0x40800000    # -1.0f

    .line 165
    :goto_20
    iget-boolean v1, v14, Lf/i/a/a/b1/s/d$c;->v:Z

    if-eqz v1, :cond_39

    .line 166
    iget v1, v14, Lf/i/a/a/b1/s/d$c;->B:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->C:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->D:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->E:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->F:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->G:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->H:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->I:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->J:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_38

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->K:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_37

    goto/16 :goto_21

    :cond_37
    const/16 v1, 0x19

    new-array v1, v1, [B

    .line 167
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 168
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->B:F

    const v4, 0x47435000    # 50000.0f

    mul-float v3, v3, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->C:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->D:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->E:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->F:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->G:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->H:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->I:F

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->J:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->K:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->z:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    iget v3, v14, Lf/i/a/a/b1/s/d$c;->A:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22

    :cond_38
    :goto_21
    const/4 v1, 0x0

    .line 181
    :goto_22
    new-instance v2, Lf/i/a/a/n1/i;

    iget v3, v14, Lf/i/a/a/b1/s/d$c;->w:I

    iget v4, v14, Lf/i/a/a/b1/s/d$c;->y:I

    iget v5, v14, Lf/i/a/a/b1/s/d$c;->x:I

    invoke-direct {v2, v3, v4, v5, v1}, Lf/i/a/a/n1/i;-><init>(III[B)V

    move-object/from16 v28, v2

    goto :goto_23

    :cond_39
    const/4 v1, 0x0

    move-object/from16 v28, v1

    .line 182
    :goto_23
    iget-object v1, v14, Lf/i/a/a/b1/s/d$c;->a:Ljava/lang/String;

    const-string v2, "htc_video_rotA-000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x0

    goto :goto_24

    .line 183
    :cond_3a
    iget-object v1, v14, Lf/i/a/a/b1/s/d$c;->a:Ljava/lang/String;

    const-string v2, "htc_video_rotA-090"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x5a

    goto :goto_24

    .line 184
    :cond_3b
    iget-object v1, v14, Lf/i/a/a/b1/s/d$c;->a:Ljava/lang/String;

    const-string v2, "htc_video_rotA-180"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/16 v1, 0xb4

    goto :goto_24

    .line 185
    :cond_3c
    iget-object v1, v14, Lf/i/a/a/b1/s/d$c;->a:Ljava/lang/String;

    const-string v2, "htc_video_rotA-270"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/16 v1, 0x10e

    goto :goto_24

    :cond_3d
    const/4 v1, -0x1

    .line 186
    :goto_24
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->p:I

    if-nez v2, :cond_42

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->q:F

    const/4 v3, 0x0

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_42

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->r:F

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_42

    .line 189
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->s:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3e

    const/4 v1, 0x0

    const/16 v24, 0x0

    goto :goto_26

    .line 190
    :cond_3e
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->r:F

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3f

    const/16 v1, 0x5a

    const/16 v24, 0x5a

    goto :goto_26

    .line 191
    :cond_3f
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->r:F

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_41

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->r:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_40

    goto :goto_25

    .line 193
    :cond_40
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->r:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_42

    const/16 v1, 0x10e

    const/16 v24, 0x10e

    goto :goto_26

    :cond_41
    :goto_25
    const/16 v1, 0xb4

    const/16 v24, 0xb4

    goto :goto_26

    :cond_42
    move/from16 v24, v1

    .line 194
    :goto_26
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget v1, v14, Lf/i/a/a/b1/s/d$c;->k:I

    iget v2, v14, Lf/i/a/a/b1/s/d$c;->l:I

    const/high16 v22, -0x40800000    # -1.0f

    iget-object v3, v14, Lf/i/a/a/b1/s/d$c;->t:[B

    iget v4, v14, Lf/i/a/a/b1/s/d$c;->u:I

    iget-object v5, v14, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    move-object/from16 v16, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v23, v6

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v29, v5

    .line 195
    invoke-static/range {v15 .. v29}, Lf/i/a/a/b0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILf/i/a/a/n1/i;Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v0

    const/4 v1, 0x2

    goto/16 :goto_29

    .line 196
    :cond_43
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 197
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v14, Lf/i/a/a/b1/s/d$c;->T:Ljava/lang/String;

    iget-object v4, v14, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    invoke-static {v1, v0, v2, v3, v4}, Lf/i/a/a/b0;->q(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v0

    goto/16 :goto_28

    .line 198
    :cond_44
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    sget-object v3, Lf/i/a/a/b1/s/d;->b0:[B

    .line 201
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, v14, Lf/i/a/a/b1/s/d$c;->i:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v3, v14, Lf/i/a/a/b1/s/d$c;->T:Ljava/lang/String;

    const/16 v21, -0x1

    iget-object v4, v14, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    const-wide v23, 0x7fffffffffffffffL

    move-object/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v25, v1

    invoke-static/range {v15 .. v25}, Lf/i/a/a/b0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILf/i/a/a/z0/e;JLjava/util/List;)Lf/i/a/a/b0;

    move-result-object v0

    goto :goto_28

    .line 204
    :cond_45
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 206
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_27

    .line 207
    :cond_46
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_47
    :goto_27
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    iget-object v1, v14, Lf/i/a/a/b1/s/d$c;->T:Ljava/lang/String;

    iget-object v3, v14, Lf/i/a/a/b1/s/d$c;->j:Lf/i/a/a/z0/e;

    move-object/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    .line 209
    invoke-static/range {v15 .. v22}, Lf/i/a/a/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v0

    :goto_28
    const/4 v1, 0x3

    .line 210
    :goto_29
    iget v2, v14, Lf/i/a/a/b1/s/d$c;->c:I

    move-object/from16 v3, v33

    invoke-interface {v3, v2, v1}, Lf/i/a/a/b1/h;->q(II)Lf/i/a/a/b1/p;

    move-result-object v1

    iput-object v1, v14, Lf/i/a/a/b1/s/d$c;->U:Lf/i/a/a/b1/p;

    .line 211
    invoke-interface {v1, v0}, Lf/i/a/a/b1/p;->d(Lf/i/a/a/b0;)V

    move-object/from16 v0, v32

    .line 212
    iget-object v1, v0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    iget-object v2, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    iget v3, v2, Lf/i/a/a/b1/s/d$c;->c:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2a

    :cond_48
    move-object/from16 v0, v16

    :goto_2a
    const/4 v1, 0x0

    .line 213
    iput-object v1, v0, Lf/i/a/a/b1/s/d;->t:Lf/i/a/a/b1/s/d$c;

    goto :goto_2b

    :cond_49
    move-object v0, v1

    .line 214
    iget v1, v0, Lf/i/a/a/b1/s/d;->E:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4a

    goto :goto_2b

    .line 215
    :cond_4a
    iget-boolean v1, v0, Lf/i/a/a/b1/s/d;->X:Z

    if-nez v1, :cond_4b

    .line 216
    iget v1, v0, Lf/i/a/a/b1/s/d;->M:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lf/i/a/a/b1/s/d;->M:I

    .line 217
    :cond_4b
    iget-object v1, v0, Lf/i/a/a/b1/s/d;->c:Landroid/util/SparseArray;

    iget v2, v0, Lf/i/a/a/b1/s/d;->K:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/b1/s/d$c;

    iget-wide v2, v0, Lf/i/a/a/b1/s/d;->F:J

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/b1/s/d;->b(Lf/i/a/a/b1/s/d$c;J)V

    const/4 v1, 0x0

    .line 218
    iput v1, v0, Lf/i/a/a/b1/s/d;->E:I

    :cond_4c
    :goto_2b
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_4d
    throw v9

    :cond_4e
    const/4 v0, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p0

    .line 220
    iget v9, v8, Lf/i/a/a/b1/s/a;->e:I

    if-nez v9, :cond_55

    .line 221
    iget-object v9, v8, Lf/i/a/a/b1/s/a;->c:Lf/i/a/a/b1/s/f;

    const/4 v10, 0x4

    invoke-virtual {v9, v1, v2, v0, v10}, Lf/i/a/a/b1/s/f;->c(Lf/i/a/a/b1/d;ZZI)J

    move-result-wide v11

    const-wide/16 v13, -0x2

    cmp-long v2, v11, v13

    if-nez v2, :cond_53

    .line 222
    iput v0, v1, Lf/i/a/a/b1/d;->f:I

    .line 223
    :goto_2c
    iget-object v2, v8, Lf/i/a/a/b1/s/a;->a:[B

    .line 224
    invoke-virtual {v1, v2, v0, v10, v0}, Lf/i/a/a/b1/d;->d([BIIZ)Z

    .line 225
    iget-object v2, v8, Lf/i/a/a/b1/s/a;->a:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lf/i/a/a/b1/s/f;->b(I)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_52

    if-gt v2, v10, :cond_52

    .line 226
    iget-object v9, v8, Lf/i/a/a/b1/s/a;->a:[B

    invoke-static {v9, v2, v0}, Lf/i/a/a/b1/s/f;->a([BIZ)J

    move-result-wide v9

    long-to-int v0, v9

    .line 227
    iget-object v9, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    check-cast v9, Lf/i/a/a/b1/s/d$b;

    .line 228
    iget-object v9, v9, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v9, :cond_51

    if-eq v0, v4, :cond_50

    const v9, 0x1f43b675

    if-eq v0, v9, :cond_50

    if-eq v0, v7, :cond_50

    if-ne v0, v3, :cond_4f

    goto :goto_2d

    :cond_4f
    const/4 v9, 0x0

    goto :goto_2e

    :cond_50
    :goto_2d
    const/4 v9, 0x1

    :goto_2e
    if-eqz v9, :cond_52

    .line 229
    invoke-virtual {v1, v2}, Lf/i/a/a/b1/d;->h(I)V

    int-to-long v11, v0

    goto :goto_2f

    :cond_51
    const/4 v0, 0x0

    .line 230
    throw v0

    :cond_52
    const/4 v0, 0x1

    .line 231
    invoke-virtual {v1, v0}, Lf/i/a/a/b1/d;->h(I)V

    const/4 v0, 0x0

    const/4 v10, 0x4

    goto :goto_2c

    :cond_53
    :goto_2f
    const/4 v0, 0x1

    cmp-long v2, v11, v5

    if-nez v2, :cond_54

    const/4 v0, 0x0

    return v0

    :cond_54
    const/4 v2, 0x0

    long-to-int v3, v11

    .line 232
    iput v3, v8, Lf/i/a/a/b1/s/a;->f:I

    .line 233
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    goto :goto_30

    :cond_55
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 234
    :goto_30
    iget v3, v8, Lf/i/a/a/b1/s/a;->e:I

    if-ne v3, v0, :cond_56

    .line 235
    iget-object v3, v8, Lf/i/a/a/b1/s/a;->c:Lf/i/a/a/b1/s/f;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v2, v0, v4}, Lf/i/a/a/b1/s/f;->c(Lf/i/a/a/b1/d;ZZI)J

    move-result-wide v2

    iput-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    const/4 v0, 0x2

    .line 236
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    .line 237
    :cond_56
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v2, v8, Lf/i/a/a/b1/s/a;->f:I

    check-cast v0, Lf/i/a/a/b1/s/d$b;

    .line 238
    iget-object v0, v0, Lf/i/a/a/b1/s/d$b;->a:Lf/i/a/a/b1/s/d;

    if-eqz v0, :cond_63

    sparse-switch v2, :sswitch_data_1

    const/4 v0, 0x0

    goto :goto_31

    :sswitch_1e
    const/4 v0, 0x5

    goto :goto_31

    :sswitch_1f
    const/4 v0, 0x4

    goto :goto_31

    :sswitch_20
    const/4 v0, 0x1

    goto :goto_31

    :sswitch_21
    const/4 v0, 0x3

    goto :goto_31

    :sswitch_22
    const/4 v0, 0x2

    :goto_31
    if-eqz v0, :cond_62

    const/4 v2, 0x1

    if-eq v0, v2, :cond_61

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x5

    if-ne v0, v2, :cond_59

    .line 239
    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_58

    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-nez v0, :cond_57

    goto :goto_32

    .line 240
    :cond_57
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Invalid float size: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_58
    :goto_32
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v2, v8, Lf/i/a/a/b1/s/a;->f:I

    iget-wide v3, v8, Lf/i/a/a/b1/s/a;->g:J

    long-to-int v4, v3

    invoke-virtual {v8, v1, v4}, Lf/i/a/a/b1/s/a;->b(Lf/i/a/a/b1/d;I)D

    move-result-wide v3

    check-cast v0, Lf/i/a/a/b1/s/d$b;

    invoke-virtual {v0, v2, v3, v4}, Lf/i/a/a/b1/s/d$b;->b(ID)V

    const/4 v0, 0x0

    .line 242
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    goto/16 :goto_36

    .line 243
    :cond_59
    new-instance v1, Lf/i/a/a/h0;

    const-string v2, "Invalid element type "

    invoke-static {v2, v0}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_5a
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v2, v8, Lf/i/a/a/b1/s/a;->f:I

    iget-wide v3, v8, Lf/i/a/a/b1/s/a;->g:J

    long-to-int v4, v3

    check-cast v0, Lf/i/a/a/b1/s/d$b;

    invoke-virtual {v0, v2, v4, v1}, Lf/i/a/a/b1/s/d$b;->a(IILf/i/a/a/b1/d;)V

    const/4 v0, 0x0

    .line 245
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    goto/16 :goto_36

    .line 246
    :cond_5b
    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5e

    .line 247
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v4, v8, Lf/i/a/a/b1/s/a;->f:I

    long-to-int v3, v2

    if-nez v3, :cond_5c

    const-string v1, ""

    :goto_33
    const/4 v2, 0x0

    goto :goto_35

    .line 248
    :cond_5c
    new-array v2, v3, [B

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v1, v2, v5, v3, v5}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    :goto_34
    if-lez v3, :cond_5d

    add-int/lit8 v1, v3, -0x1

    .line 250
    aget-byte v6, v2, v1

    if-nez v6, :cond_5d

    move v3, v1

    goto :goto_34

    .line 251
    :cond_5d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_33

    .line 252
    :goto_35
    check-cast v0, Lf/i/a/a/b1/s/d$b;

    invoke-virtual {v0, v4, v1}, Lf/i/a/a/b1/s/d$b;->e(ILjava/lang/String;)V

    .line 253
    iput v2, v8, Lf/i/a/a/b1/s/a;->e:I

    goto :goto_36

    .line 254
    :cond_5e
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "String element size: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_5f
    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    const-wide/16 v4, 0x8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_60

    .line 256
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v4, v8, Lf/i/a/a/b1/s/a;->f:I

    long-to-int v3, v2

    invoke-virtual {v8, v1, v3}, Lf/i/a/a/b1/s/a;->c(Lf/i/a/a/b1/d;I)J

    move-result-wide v1

    check-cast v0, Lf/i/a/a/b1/s/d$b;

    invoke-virtual {v0, v4, v1, v2}, Lf/i/a/a/b1/s/d$b;->c(IJ)V

    const/4 v0, 0x0

    .line 257
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    goto :goto_36

    .line 258
    :cond_60
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Invalid integer size: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_61
    iget-wide v4, v1, Lf/i/a/a/b1/d;->d:J

    .line 260
    iget-wide v0, v8, Lf/i/a/a/b1/s/a;->g:J

    add-long/2addr v0, v4

    .line 261
    iget-object v2, v8, Lf/i/a/a/b1/s/a;->b:Ljava/util/ArrayDeque;

    new-instance v3, Lf/i/a/a/b1/s/a$b;

    iget v6, v8, Lf/i/a/a/b1/s/a;->f:I

    const/4 v7, 0x0

    invoke-direct {v3, v6, v0, v1, v7}, Lf/i/a/a/b1/s/a$b;-><init>(IJLf/i/a/a/b1/s/a$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 262
    iget-object v0, v8, Lf/i/a/a/b1/s/a;->d:Lf/i/a/a/b1/s/b;

    iget v3, v8, Lf/i/a/a/b1/s/a;->f:I

    iget-wide v6, v8, Lf/i/a/a/b1/s/a;->g:J

    move-object v2, v0

    check-cast v2, Lf/i/a/a/b1/s/d$b;

    invoke-virtual/range {v2 .. v7}, Lf/i/a/a/b1/s/d$b;->d(IJJ)V

    const/4 v0, 0x0

    .line 263
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    :goto_36
    const/4 v0, 0x1

    return v0

    :cond_62
    const/4 v0, 0x0

    .line 264
    iget-wide v2, v8, Lf/i/a/a/b1/s/a;->g:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lf/i/a/a/b1/d;->h(I)V

    .line 265
    iput v0, v8, Lf/i/a/a/b1/s/a;->e:I

    move-object v0, v8

    goto/16 :goto_0

    :cond_63
    const/4 v0, 0x0

    .line 266
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d
        -0x7ce7f3b0 -> :sswitch_1c
        -0x76567dc0 -> :sswitch_1b
        -0x6a615338 -> :sswitch_1a
        -0x672350af -> :sswitch_19
        -0x585f4fce -> :sswitch_18
        -0x585f4fcd -> :sswitch_17
        -0x51dc40b2 -> :sswitch_16
        -0x37a9c464 -> :sswitch_15
        -0x2016c535 -> :sswitch_14
        -0x2016c4e5 -> :sswitch_13
        -0x19552dbd -> :sswitch_12
        -0x1538b2ba -> :sswitch_11
        0x3c02325 -> :sswitch_10
        0x3c02353 -> :sswitch_f
        0x3c030c5 -> :sswitch_e
        0x4e81333 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_22
        0x86 -> :sswitch_21
        0x88 -> :sswitch_22
        0x9b -> :sswitch_22
        0x9f -> :sswitch_22
        0xa0 -> :sswitch_20
        0xa1 -> :sswitch_1f
        0xa3 -> :sswitch_1f
        0xae -> :sswitch_20
        0xb0 -> :sswitch_22
        0xb3 -> :sswitch_22
        0xb5 -> :sswitch_1e
        0xb7 -> :sswitch_20
        0xba -> :sswitch_22
        0xbb -> :sswitch_20
        0xd7 -> :sswitch_22
        0xe0 -> :sswitch_20
        0xe1 -> :sswitch_20
        0xe7 -> :sswitch_22
        0xf1 -> :sswitch_22
        0xfb -> :sswitch_22
        0x4254 -> :sswitch_22
        0x4255 -> :sswitch_1f
        0x4282 -> :sswitch_21
        0x4285 -> :sswitch_22
        0x42f7 -> :sswitch_22
        0x4489 -> :sswitch_1e
        0x47e1 -> :sswitch_22
        0x47e2 -> :sswitch_1f
        0x47e7 -> :sswitch_20
        0x47e8 -> :sswitch_22
        0x4dbb -> :sswitch_20
        0x5031 -> :sswitch_22
        0x5032 -> :sswitch_22
        0x5034 -> :sswitch_20
        0x5035 -> :sswitch_20
        0x536e -> :sswitch_21
        0x53ab -> :sswitch_1f
        0x53ac -> :sswitch_22
        0x53b8 -> :sswitch_22
        0x54b0 -> :sswitch_22
        0x54b2 -> :sswitch_22
        0x54ba -> :sswitch_22
        0x55aa -> :sswitch_22
        0x55b0 -> :sswitch_20
        0x55b9 -> :sswitch_22
        0x55ba -> :sswitch_22
        0x55bb -> :sswitch_22
        0x55bc -> :sswitch_22
        0x55bd -> :sswitch_22
        0x55d0 -> :sswitch_20
        0x55d1 -> :sswitch_1e
        0x55d2 -> :sswitch_1e
        0x55d3 -> :sswitch_1e
        0x55d4 -> :sswitch_1e
        0x55d5 -> :sswitch_1e
        0x55d6 -> :sswitch_1e
        0x55d7 -> :sswitch_1e
        0x55d8 -> :sswitch_1e
        0x55d9 -> :sswitch_1e
        0x55da -> :sswitch_1e
        0x56aa -> :sswitch_22
        0x56bb -> :sswitch_22
        0x6240 -> :sswitch_20
        0x6264 -> :sswitch_22
        0x63a2 -> :sswitch_1f
        0x6d80 -> :sswitch_20
        0x7670 -> :sswitch_20
        0x7671 -> :sswitch_22
        0x7672 -> :sswitch_1f
        0x7673 -> :sswitch_1e
        0x7674 -> :sswitch_1e
        0x7675 -> :sswitch_1e
        0x22b59c -> :sswitch_21
        0x23e383 -> :sswitch_22
        0x2ad7b1 -> :sswitch_22
        0x114d9b74 -> :sswitch_20
        0x1549a966 -> :sswitch_20
        0x1654ae6b -> :sswitch_20
        0x18538067 -> :sswitch_20
        0x1a45dfa3 -> :sswitch_20
        0x1c53bb6b -> :sswitch_20
        0x1f43b675 -> :sswitch_20
    .end sparse-switch
.end method

.method public final b(Lf/i/a/a/b1/d;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/i/a/a/b1/s/a;->c(Lf/i/a/a/b1/d;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public final c(Lf/i/a/a/b1/d;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/s/a;->a:[B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, p2, v1}, Lf/i/a/a/b1/d;->g([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 3
    iget-object p1, p0, Lf/i/a/a/b1/s/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
