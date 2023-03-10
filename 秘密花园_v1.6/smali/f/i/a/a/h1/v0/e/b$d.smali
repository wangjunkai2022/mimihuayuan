.class public Lf/i/a/a/h1/v0/e/b$d;
.super Lf/i/a/a/h1/v0/e/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:Lf/i/a/a/b0;


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "QualityLevel"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lf/i/a/a/h1/v0/e/b$a;-><init>(Lf/i/a/a/h1/v0/e/b$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3
    invoke-static {p0}, Lf/i/a/a/m1/h0;->x(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lf/i/a/a/m1/i;->c([BI)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_4

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 6
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v4, Lf/i/a/a/m1/i;->a:[B

    array-length v5, v4

    add-int/2addr v3, v5

    .line 8
    array-length v5, p0

    array-length v4, v4

    sub-int/2addr v5, v4

    :goto_0
    const/4 v4, -0x1

    if-gt v3, v5, :cond_3

    .line 9
    invoke-static {p0, v3}, Lf/i/a/a/m1/i;->c([BI)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v4, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[B

    const/4 v5, 0x0

    .line 11
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 12
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v4

    if-ge v5, v7, :cond_4

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_4
    array-length v7, p0

    :goto_3
    sub-int/2addr v7, v6

    .line 14
    new-array v8, v7, [B

    .line 15
    invoke-static {p0, v6, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    aput-object v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_6

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 18
    :cond_6
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/e/b$d;->e:Lf/i/a/a/b0;

    return-object v0
.end method

.method public k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Type"

    .line 1
    invoke-virtual {v0, v2}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Index"

    .line 2
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "Name"

    .line 3
    invoke-virtual {v0, v4}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const-string v4, "Bitrate"

    .line 4
    invoke-virtual {v0, v1, v4}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    const-string v4, "FourCC"

    .line 5
    invoke-virtual {v0, v1, v4}, Lf/i/a/a/h1/v0/e/b$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "H264"

    .line 6
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "audio/mp4a-latm"

    if-nez v7, :cond_e

    const-string v7, "X264"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "AVC1"

    .line 7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "DAVC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v7, "AAC"

    .line 8
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "AACL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "AACH"

    .line 9
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "AACP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v7, "TTML"

    .line 10
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "DFXP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v7, "ac-3"

    .line 11
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "dac3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "ec-3"

    .line 12
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "dec3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "dtsc"

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v4, "audio/vnd.dts"

    goto :goto_6

    :cond_5
    const-string v7, "dtsh"

    .line 14
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "dtsl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    :cond_6
    const-string v7, "dtse"

    .line 15
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v4, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_7
    const-string v7, "opus"

    .line 16
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "audio/opus"

    goto :goto_6

    :cond_8
    move-object v4, v3

    goto :goto_6

    :cond_9
    :goto_0
    const-string v4, "audio/vnd.dts.hd"

    goto :goto_6

    :cond_a
    :goto_1
    const-string v4, "audio/eac3"

    goto :goto_6

    :cond_b
    :goto_2
    const-string v4, "audio/ac3"

    goto :goto_6

    :cond_c
    :goto_3
    const-string v4, "application/ttml+xml"

    goto :goto_6

    :cond_d
    :goto_4
    move-object v4, v8

    goto :goto_6

    :cond_e
    :goto_5
    const-string v4, "video/avc"

    :goto_6
    const-string v7, "CodecPrivateData"

    const/4 v9, 0x2

    if-ne v2, v9, :cond_f

    const-string v2, "MaxWidth"

    .line 17
    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    const-string v2, "MaxHeight"

    .line 18
    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 19
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lf/i/a/a/h1/v0/e/b$d;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    const/4 v9, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "video/mp4"

    move-object v8, v4

    .line 21
    invoke-static/range {v5 .. v16}, Lf/i/a/a/b0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lf/i/a/a/b0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/h1/v0/e/b$d;->e:Lf/i/a/a/b0;

    goto/16 :goto_c

    :cond_f
    const-string v11, "Language"

    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v2, v13, :cond_17

    if-nez v4, :cond_10

    move-object v4, v8

    :cond_10
    const-string v2, "Channels"

    .line 22
    invoke-virtual {v0, v1, v2}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string v13, "SamplingRate"

    .line 23
    invoke-virtual {v0, v1, v13}, Lf/i/a/a/h1/v0/e/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    .line 24
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lf/i/a/a/h1/v0/e/b$d;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 26
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 27
    :goto_7
    sget-object v7, Lf/i/a/a/m1/i;->b:[I

    array-length v8, v7

    if-ge v1, v8, :cond_12

    .line 28
    aget v7, v7, v1

    if-ne v13, v7, :cond_11

    move v3, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    const/4 v1, -0x1

    .line 29
    :goto_8
    sget-object v7, Lf/i/a/a/m1/i;->c:[I

    array-length v8, v7

    if-ge v14, v8, :cond_14

    .line 30
    aget v7, v7, v14

    if-ne v2, v7, :cond_13

    move v1, v14

    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_14
    if-eq v13, v12, :cond_15

    if-eq v1, v12, :cond_15

    .line 31
    invoke-static {v9, v3, v1}, Lf/i/a/a/m1/i;->a(III)[B

    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_9

    .line 33
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample rate or number of channels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_16
    :goto_9
    invoke-virtual {v0, v11}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v7, "audio/mp4"

    move-object v8, v4

    move v11, v2

    move v12, v13

    move-object v13, v1

    .line 35
    invoke-static/range {v5 .. v16}, Lf/i/a/a/b0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/h1/v0/e/b$d;->e:Lf/i/a/a/b0;

    goto :goto_c

    :cond_17
    const/4 v1, 0x3

    if-ne v2, v1, :cond_1d

    const-string v1, "Subtype"

    .line 36
    invoke-virtual {v0, v1}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1f72e2

    if-eq v2, v3, :cond_19

    const v3, 0x1ff691

    if-eq v2, v3, :cond_18

    goto :goto_a

    :cond_18
    const-string v2, "DESC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v12, 0x1

    goto :goto_a

    :cond_19
    const-string v2, "CAPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v12, 0x0

    :cond_1a
    :goto_a
    if-eqz v12, :cond_1c

    if-eq v12, v13, :cond_1b

    const/4 v12, 0x0

    goto :goto_b

    :cond_1b
    const/16 v1, 0x400

    const/16 v12, 0x400

    goto :goto_b

    :cond_1c
    const/16 v1, 0x40

    const/16 v12, 0x40

    .line 38
    :goto_b
    invoke-virtual {v0, v11}, Lf/i/a/a/h1/v0/e/b$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v7, "application/mp4"

    move-object v8, v4

    .line 39
    invoke-static/range {v5 .. v13}, Lf/i/a/a/b0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/h1/v0/e/b$d;->e:Lf/i/a/a/b0;

    goto :goto_c

    :cond_1d
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v7, "application/mp4"

    move-object v8, v4

    .line 40
    invoke-static/range {v5 .. v13}, Lf/i/a/a/b0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    iput-object v1, v0, Lf/i/a/a/h1/v0/e/b$d;->e:Lf/i/a/a/b0;

    :goto_c
    return-void
.end method
