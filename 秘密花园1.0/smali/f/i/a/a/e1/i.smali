.class public final Lf/i/a/a/e1/i;
.super Ljava/lang/Object;
.source "ActionFile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Ljava/io/DataInputStream;)Lf/i/a/a/e1/u;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    new-array v4, v4, [B

    move-object/from16 v6, p0

    .line 7
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->readFully([B)V

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    if-nez v0, :cond_1

    const-string v9, "progressive"

    .line 8
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 9
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "ss"

    const-string v12, "hls"

    if-nez v9, :cond_4

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_4

    .line 11
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 12
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move v4, v15

    move v15, v14

    const/4 v14, 0x0

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v4, v16

    .line 17
    :goto_3
    new-instance v5, Lf/i/a/a/e1/c0;

    invoke-direct {v5, v14, v15, v4}, Lf/i/a/a/e1/c0;-><init>(III)V

    .line 18
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ge v0, v4, :cond_6

    const-string v4, "dash"

    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 21
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_7

    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/4 v4, 0x3

    if-ge v0, v4, :cond_9

    if-eqz v5, :cond_8

    move-object v4, v5

    goto :goto_7

    .line 23
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 24
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v4, v0

    :goto_7
    if-nez v1, :cond_a

    .line 25
    new-instance v8, Lf/i/a/a/e1/u;

    move-object v0, v8

    move-object v1, v4

    move-object v4, v10

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lf/i/a/a/e1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    return-object v8

    .line 26
    :cond_a
    new-instance v0, Lf/i/a/a/e1/u$b;

    invoke-direct {v0}, Lf/i/a/a/e1/u$b;-><init>()V

    throw v0
.end method
