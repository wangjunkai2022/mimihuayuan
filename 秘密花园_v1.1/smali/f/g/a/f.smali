.class public Lf/g/a/f;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf/g/a/d;

.field public final c:Lf/g/a/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lf/g/a/h;

    invoke-direct {v0}, Lf/g/a/h;-><init>()V

    new-instance v1, Lf/g/a/a;

    invoke-direct {v1}, Lf/g/a/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lf/g/a/f;->a:Ljava/util/Set;

    .line 4
    iput-object v0, p0, Lf/g/a/f;->b:Lf/g/a/d;

    .line 5
    iput-object v1, p0, Lf/g/a/f;->c:Lf/g/a/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "lib"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/g/a/f;->b:Lf/g/a/d;

    check-cast v0, Lf/g/a/h;

    invoke-virtual {v0, p2}, Lf/g/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p3}, Lc/a/a/b/g/h;->i0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lf/g/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lf/g/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v1, "."

    invoke-static {p2, v1, p3}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/g/a/e;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Lc/a/a/b/g/h;->i0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Beginning load of %s..."

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez p4, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lf/g/a/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lf/g/a/f$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lf/g/a/f$a;-><init>(Lf/g/a/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lf/g/a/e;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given library is either null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    iget-object v0, v1, Lf/g/a/f;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s already loaded previously!"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    :try_start_0
    iget-object v0, v1, Lf/g/a/f;->b:Lf/g/a/d;

    check-cast v0, Lf/g/a/h;

    if-eqz v0, :cond_1

    .line 4
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lf/g/a/f;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "%s (%s) was loaded normally!"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p3, v7, v4

    .line 6
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 7
    :cond_1
    throw v6
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-array v7, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    .line 9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Loading the library normally failed: %s"

    invoke-static {v0, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object p3, v0, v4

    .line 10
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s (%s) was not loaded normally, re-linking..."

    invoke-static {v7, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    invoke-virtual/range {p0 .. p3}, Lf/g/a/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_e

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lf/g/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 14
    invoke-virtual/range {p0 .. p3}, Lf/g/a/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 15
    iget-object v9, v1, Lf/g/a/f;->b:Lf/g/a/d;

    check-cast v9, Lf/g/a/h;

    invoke-virtual {v9, v2}, Lf/g/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    new-instance v10, Lf/g/a/g;

    invoke-direct {v10, v1, v9}, Lf/g/a/g;-><init>(Lf/g/a/f;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    array-length v9, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_5

    aget-object v11, v7, v10

    .line 18
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 19
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 20
    :cond_5
    :goto_1
    iget-object v7, v1, Lf/g/a/f;->c:Lf/g/a/c;

    iget-object v8, v1, Lf/g/a/f;->b:Lf/g/a/d;

    check-cast v8, Lf/g/a/h;

    if-eqz v8, :cond_16

    .line 21
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v8

    if-lez v9, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v8}, Lc/a/a/b/g/h;->i0(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    new-array v8, v5, [Ljava/lang/String;

    .line 23
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v9, v8, v3

    sget-object v9, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v9, v8, v4

    goto :goto_2

    :cond_7
    new-array v8, v4, [Ljava/lang/String;

    .line 24
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v9, v8, v3

    .line 25
    :goto_2
    iget-object v9, v1, Lf/g/a/f;->b:Lf/g/a/d;

    .line 26
    check-cast v9, Lf/g/a/h;

    invoke-virtual {v9, v2}, Lf/g/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 27
    check-cast v7, Lf/g/a/a;

    if-eqz v7, :cond_15

    move-object/from16 v10, p1

    .line 28
    :try_start_1
    invoke-virtual {v7, v10, v8, v9, v1}, Lf/g/a/a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lf/g/a/f;)Lf/g/a/a$a;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v7, :cond_13

    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v10, v8, 0x1

    const/4 v11, 0x5

    if-ge v8, v11, :cond_10

    :try_start_2
    const-string v8, "Found %s! Extracting..."

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v9, v11, v3

    .line 29
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v12, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 30
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v8, :cond_8

    goto/16 :goto_d

    .line 31
    :cond_8
    :try_start_4
    iget-object v8, v7, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    iget-object v11, v7, Lf/g/a/a$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v8, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 32
    :try_start_5
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v12, 0x1000

    :try_start_6
    new-array v12, v12, [B

    const-wide/16 v13, 0x0

    .line 33
    :goto_4
    invoke-virtual {v8, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v6, -0x1

    if-ne v15, v6, :cond_a

    .line 34
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 35
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v17
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v6, v13, v17

    if-eqz v6, :cond_9

    .line 37
    :try_start_7
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 38
    :catch_1
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_d

    .line 39
    :cond_9
    :try_start_9
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 40
    :catch_2
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 41
    :catch_3
    :try_start_b
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 43
    invoke-virtual {v0, v4}, Ljava/io/File;->setWritable(Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 44
    :try_start_c
    iget-object v6, v7, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_11

    .line 45
    iget-object v6, v7, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_e

    .line 46
    :cond_a
    :try_start_d
    invoke-virtual {v11, v12, v3, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    int-to-long v3, v15

    add-long/2addr v13, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v6, v11

    goto :goto_5

    :catch_4
    nop

    goto :goto_8

    :catch_5
    nop

    goto :goto_b

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v16, v6

    move-object v6, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_6
    if-eqz v6, :cond_b

    .line 47
    :try_start_e
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_7

    :catch_6
    nop

    :cond_b
    :goto_7
    if-eqz v16, :cond_c

    .line 48
    :try_start_f
    invoke-interface/range {v16 .. v16}, Ljava/io/Closeable;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 49
    :catch_7
    :cond_c
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_8
    const/4 v8, 0x0

    :catch_9
    const/4 v11, 0x0

    :goto_8
    if-eqz v8, :cond_d

    .line 50
    :try_start_11
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_9

    :catch_a
    nop

    :cond_d
    :goto_9
    if-eqz v11, :cond_f

    .line 51
    :goto_a
    :try_start_12
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_d

    :catch_b
    const/4 v8, 0x0

    :catch_c
    const/4 v11, 0x0

    :goto_b
    if-eqz v8, :cond_e

    .line 52
    :try_start_13
    invoke-interface {v8}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_c

    :catch_d
    nop

    :cond_e
    :goto_c
    if-eqz v11, :cond_f

    goto :goto_a

    :catch_e
    :cond_f
    :goto_d
    move v8, v10

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 53
    :cond_10
    :try_start_14
    iget-object v3, v7, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v3, :cond_11

    .line 54
    iget-object v3, v7, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 55
    :catch_f
    :cond_11
    :goto_e
    iget-object v3, v1, Lf/g/a/f;->b:Lf/g/a/d;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lf/g/a/h;

    if-eqz v3, :cond_12

    .line 56
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Lf/g/a/f;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 58
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s (%s) was re-linked!"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_12
    const/4 v2, 0x0

    .line 59
    throw v2

    .line 60
    :cond_13
    :try_start_15
    new-instance v0, Lf/g/a/b;

    invoke-direct {v0, v9}, Lf/g/a/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catchall_3
    move-exception v0

    move-object v6, v7

    goto :goto_f

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_14

    .line 61
    :try_start_16
    iget-object v2, v6, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_14

    .line 62
    iget-object v2, v6, Lf/g/a/a$a;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    .line 63
    :catch_10
    :cond_14
    throw v0

    :cond_15
    move-object v2, v6

    .line 64
    throw v2

    :cond_16
    move-object v2, v6

    .line 65
    throw v2
.end method
