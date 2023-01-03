.class public final Lf/e/a/j/n0/f;
.super Ljava/lang/Thread;
.source "MovieFileUtils.java"


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lf/e/a/j/n0/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lf/e/a/j/n0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/n0/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lf/e/a/j/n0/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lf/e/a/j/n0/f;->c:Lf/e/a/j/n0/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/e/a/j/n0/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "QxRaVQ=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v3, "XgwHARNdVAAGXg=="

    invoke-static {v0, v2, v3}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 15
    iget-object v2, p0, Lf/e/a/j/n0/f;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lc/a/a/b/g/h;->c(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 20
    iget-object v0, p0, Lf/e/a/j/n0/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lf/e/a/j/n0/f;->c:Lf/e/a/j/n0/g;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lf/e/a/j/n0/g;->a:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lf/e/a/j/n0/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lf/e/a/j/n0/f;->c:Lf/e/a/j/n0/g;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
