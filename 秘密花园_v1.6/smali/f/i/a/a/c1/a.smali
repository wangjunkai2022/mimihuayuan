.class public final Lf/i/a/a/c1/a;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 2
    iput-object p1, p0, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf/i/a/a/c1/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/c1/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 6
    iput-boolean p5, p0, Lf/i/a/a/c1/a;->g:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p6, :cond_1

    if-eqz p4, :cond_1

    .line 7
    sget p5, Lf/i/a/a/m1/h0;->a:I

    const/16 p6, 0x13

    if-lt p5, p6, :cond_0

    const-string p5, "adaptive-playback"

    .line 8
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 9
    :goto_1
    iput-boolean p5, p0, Lf/i/a/a/c1/a;->e:Z

    const/16 p5, 0x15

    if-eqz p4, :cond_3

    .line 10
    sget p6, Lf/i/a/a/m1/h0;->a:I

    if-lt p6, p5, :cond_2

    const-string p6, "tunneled-playback"

    .line 11
    invoke-virtual {p4, p6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    :cond_3
    :goto_2
    if-nez p7, :cond_6

    if-eqz p4, :cond_5

    .line 12
    sget p6, Lf/i/a/a/m1/h0;->a:I

    if-lt p6, p5, :cond_4

    const-string p5, "secure-playback"

    .line 13
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    goto :goto_3

    :cond_4
    const/4 p4, 0x0

    :goto_3
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 14
    :cond_6
    :goto_4
    iput-boolean p1, p0, Lf/i/a/a/c1/a;->f:Z

    .line 15
    invoke-static {p2}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lf/i/a/a/c1/a;->h:Z

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lf/i/a/a/c1/a;
    .locals 9
    .param p3    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v8, Lf/i/a/a/c1/a;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/c1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v8
.end method


# virtual methods
.method public b(Lf/i/a/a/b0;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/c1/d$c;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 2
    iget-object v3, p0, Lf/i/a/a/c1/a;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {v0}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v4, p0, Lf/i/a/a/c1/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    sget-object v0, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Lf/i/a/a/c1/d;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget-boolean v4, p0, Lf/i/a/a/c1/a;->h:Z

    if-nez v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    iget-object v4, p0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v4, :cond_6

    :cond_5
    new-array v4, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 11
    :cond_6
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 12
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v3, :cond_7

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v7, v0, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_8
    sget-object v0, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_a

    return v1

    .line 14
    :cond_a
    iget-boolean v0, p0, Lf/i/a/a/c1/a;->h:Z

    const/16 v3, 0x15

    if-eqz v0, :cond_10

    .line 15
    iget v0, p1, Lf/i/a/a/b0;->n:I

    if-lez v0, :cond_f

    iget v4, p1, Lf/i/a/a/b0;->o:I

    if-gtz v4, :cond_b

    goto :goto_4

    .line 16
    :cond_b
    sget v5, Lf/i/a/a/m1/h0;->a:I

    if-lt v5, v3, :cond_c

    .line 17
    iget p1, p1, Lf/i/a/a/b0;->p:F

    float-to-double v1, p1

    invoke-virtual {p0, v0, v4, v1, v2}, Lf/i/a/a/c1/a;->e(IID)Z

    move-result p1

    return p1

    :cond_c
    mul-int v0, v0, v4

    .line 18
    invoke-static {}, Lf/i/a/a/c1/d;->g()I

    move-result p1

    if-gt v0, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-nez v1, :cond_e

    .line 19
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    :cond_e
    return v1

    :cond_f
    :goto_4
    return v2

    .line 20
    :cond_10
    sget v0, Lf/i/a/a/m1/h0;->a:I

    if-lt v0, v3, :cond_1d

    iget v0, p1, Lf/i/a/a/b0;->w:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_14

    .line 21
    iget-object v4, p0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_11

    .line 22
    sget-object v0, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto :goto_5

    .line 23
    :cond_11
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_12

    .line 24
    sget-object v0, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto :goto_5

    .line 25
    :cond_12
    invoke-virtual {v4, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 26
    sget-object v0, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_13
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_1e

    .line 27
    :cond_14
    iget p1, p1, Lf/i/a/a/b0;->v:I

    if-eq p1, v3, :cond_1d

    .line 28
    iget-object v0, p0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_15

    .line 29
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto/16 :goto_8

    .line 30
    :cond_15
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_16

    .line 31
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto/16 :goto_8

    .line 32
    :cond_16
    iget-object v3, p0, Lf/i/a/a/c1/a;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    if-gt v0, v2, :cond_1b

    .line 34
    sget v4, Lf/i/a/a/m1/h0;->a:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_17

    if-lez v0, :cond_17

    goto/16 :goto_7

    :cond_17
    const-string v4, "audio/mpeg"

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/3gpp"

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/amr-wb"

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/mp4a-latm"

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/vorbis"

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/opus"

    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/raw"

    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/flac"

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/g711-alaw"

    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/g711-mlaw"

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "audio/gsm"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_7

    :cond_18
    const-string v0, "audio/ac3"

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x6

    goto :goto_7

    :cond_19
    const-string v0, "audio/eac3"

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x10

    goto :goto_7

    :cond_1a
    const/16 v0, 0x1e

    :cond_1b
    :goto_7
    if-ge v0, p1, :cond_1c

    .line 48
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    :goto_8
    const/4 p1, 0x0

    goto :goto_9

    :cond_1c
    const/4 p1, 0x1

    :goto_9
    if-eqz p1, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public c(Lf/i/a/a/b0;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/c1/a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p1, p0, Lf/i/a/a/c1/a;->e:Z

    return p1

    .line 3
    :cond_0
    iget-object p1, p1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lf/i/a/a/c1/d;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lf/i/a/a/b0;Lf/i/a/a/b0;Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf/i/a/a/c1/a;->h:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget-object v3, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lf/i/a/a/b0;->q:I

    iget v3, p2, Lf/i/a/a/b0;->q:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lf/i/a/a/c1/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p1, Lf/i/a/a/b0;->n:I

    iget v3, p2, Lf/i/a/a/b0;->n:I

    if-ne v0, v3, :cond_2

    iget v0, p1, Lf/i/a/a/b0;->o:I

    iget v3, p2, Lf/i/a/a/b0;->o:I

    if-ne v0, v3, :cond_2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p2, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    if-eqz p3, :cond_3

    :cond_1
    iget-object p1, p1, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    iget-object p2, p2, Lf/i/a/a/b0;->u:Lf/i/a/a/n1/i;

    .line 3
    invoke-static {p1, p2}, Lf/i/a/a/m1/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    .line 4
    :cond_4
    iget-object p3, p0, Lf/i/a/a/c1/a;->b:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    iget-object v0, p2, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget p3, p1, Lf/i/a/a/b0;->v:I

    iget v0, p2, Lf/i/a/a/b0;->v:I

    if-ne p3, v0, :cond_8

    iget p3, p1, Lf/i/a/a/b0;->w:I

    iget v0, p2, Lf/i/a/a/b0;->w:I

    if-eq p3, v0, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, p1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lf/i/a/a/c1/d;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 8
    iget-object p2, p2, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lf/i/a/a/c1/d;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_8
    :goto_2
    return v2
.end method

.method public e(IID)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    return v1

    .line 5
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lf/i/a/a/c1/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    if-ge p1, p2, :cond_3

    .line 6
    invoke-static {v0, p2, p1, p3, p4}, Lf/i/a/a/c1/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    sget-object p1, Lf/i/a/a/m1/h0;->e:Ljava/lang/String;

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/c1/a;->a:Ljava/lang/String;

    return-object v0
.end method
