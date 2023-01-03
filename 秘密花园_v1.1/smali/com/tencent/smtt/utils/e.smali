.class public Lcom/tencent/smtt/utils/e;
.super Ljava/lang/Object;
.source "Elf.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/e$g;,
        Lcom/tencent/smtt/utils/e$c;,
        Lcom/tencent/smtt/utils/e$j;,
        Lcom/tencent/smtt/utils/e$i;,
        Lcom/tencent/smtt/utils/e$e;,
        Lcom/tencent/smtt/utils/e$l;,
        Lcom/tencent/smtt/utils/e$h;,
        Lcom/tencent/smtt/utils/e$d;,
        Lcom/tencent/smtt/utils/e$k;,
        Lcom/tencent/smtt/utils/e$f;,
        Lcom/tencent/smtt/utils/e$b;,
        Lcom/tencent/smtt/utils/e$a;
    }
.end annotation


# static fields
.field public static final a:[C


# instance fields
.field public final b:[C

.field public c:Z

.field public d:[Lcom/tencent/smtt/utils/e$j;

.field public e:[Lcom/tencent/smtt/utils/e$l;

.field public f:[B

.field public final g:Lcom/tencent/smtt/utils/c;

.field public final h:Lcom/tencent/smtt/utils/e$a;

.field public final i:[Lcom/tencent/smtt/utils/e$k;

.field public j:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/smtt/utils/e;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x7fs
        0x45s
        0x4cs
        0x46s
        0x0s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/UnknownFormatConversionException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/utils/e;->b:[C

    .line 3
    new-instance v0, Lcom/tencent/smtt/utils/c;

    invoke-direct {v0, p1}, Lcom/tencent/smtt/utils/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/e;->g:Lcom/tencent/smtt/utils/c;

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/utils/e;->b:[C

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/utils/c;->a(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance v1, Lcom/tencent/smtt/utils/e$f;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/e$f;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->a:S

    .line 10
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->b:S

    .line 11
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$a;->c:I

    .line 12
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/smtt/utils/e$f;->k:J

    .line 13
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/smtt/utils/e$f;->l:J

    .line 14
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/smtt/utils/e$f;->m:J

    .line 15
    iput-object v1, p0, Lcom/tencent/smtt/utils/e;->h:Lcom/tencent/smtt/utils/e$a;

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/tencent/smtt/utils/e$b;

    invoke-direct {v1}, Lcom/tencent/smtt/utils/e$b;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->a:S

    .line 18
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->b:S

    .line 19
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$a;->c:I

    .line 20
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$b;->k:I

    .line 21
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$b;->l:I

    .line 22
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$b;->m:I

    .line 23
    iput-object v1, p0, Lcom/tencent/smtt/utils/e;->h:Lcom/tencent/smtt/utils/e$a;

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/tencent/smtt/utils/e;->h:Lcom/tencent/smtt/utils/e$a;

    .line 25
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/smtt/utils/e$a;->d:I

    .line 26
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->e:S

    .line 27
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->f:S

    .line 28
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->g:S

    .line 29
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->h:S

    .line 30
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->i:S

    .line 31
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/smtt/utils/e$a;->j:S

    .line 32
    iget-short v2, v1, Lcom/tencent/smtt/utils/e$a;->i:S

    new-array v2, v2, [Lcom/tencent/smtt/utils/e$k;

    iput-object v2, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    const/4 v2, 0x0

    .line 33
    :goto_1
    iget-short v3, v1, Lcom/tencent/smtt/utils/e$a;->i:S

    if-ge v2, v3, :cond_2

    .line 34
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/e$a;->a()J

    move-result-wide v3

    iget-short v5, v1, Lcom/tencent/smtt/utils/e$a;->h:S

    mul-int v5, v5, v2

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 35
    invoke-virtual {v0, v3, v4}, Lcom/tencent/smtt/utils/c;->a(J)V

    if-eqz p1, :cond_1

    .line 36
    new-instance v3, Lcom/tencent/smtt/utils/e$h;

    invoke-direct {v3}, Lcom/tencent/smtt/utils/e$h;-><init>()V

    .line 37
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->g:I

    .line 38
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->h:I

    .line 39
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->a:J

    .line 40
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->b:J

    .line 41
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->c:J

    .line 42
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->d:J

    .line 43
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->i:I

    .line 44
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->j:I

    .line 45
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->e:J

    .line 46
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/smtt/utils/e$h;->f:J

    .line 47
    iget-object v4, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    aput-object v3, v4, v2

    goto :goto_2

    .line 48
    :cond_1
    new-instance v3, Lcom/tencent/smtt/utils/e$d;

    invoke-direct {v3}, Lcom/tencent/smtt/utils/e$d;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->g:I

    .line 50
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->h:I

    .line 51
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->a:I

    .line 52
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->b:I

    .line 53
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->c:I

    .line 54
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->d:I

    .line 55
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->i:I

    .line 56
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$k;->j:I

    .line 57
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->e:I

    .line 58
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v4

    iput v4, v3, Lcom/tencent/smtt/utils/e$d;->f:I

    .line 59
    iget-object v4, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    aput-object v3, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 60
    :cond_2
    iget-short p1, v1, Lcom/tencent/smtt/utils/e$a;->j:S

    const/4 v2, -0x1

    if-le p1, v2, :cond_5

    iget-object v2, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    array-length v3, v2

    if-ge p1, v3, :cond_5

    .line 61
    aget-object p1, v2, p1

    .line 62
    iget v2, p1, Lcom/tencent/smtt/utils/e$k;->h:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/tencent/smtt/utils/e$k;->a()I

    move-result v1

    .line 64
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/smtt/utils/e;->j:[B

    .line 65
    invoke-virtual {p1}, Lcom/tencent/smtt/utils/e$k;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/utils/c;->a(J)V

    .line 66
    iget-object p1, p0, Lcom/tencent/smtt/utils/e;->j:[B

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/utils/c;->a([B)I

    .line 67
    iget-boolean p1, p0, Lcom/tencent/smtt/utils/e;->c:Z

    if-eqz p1, :cond_3

    .line 68
    invoke-direct {p0}, Lcom/tencent/smtt/utils/e;->f()V

    :cond_3
    return-void

    .line 69
    :cond_4
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    const-string v0, "Wrong string section e_shstrndx="

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, v1, Lcom/tencent/smtt/utils/e$a;->j:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_5
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    const-string v0, "Invalid e_shstrndx="

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, v1, Lcom/tencent/smtt/utils/e$a;->j:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_6
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid elf magic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    int-to-long v2, p0

    .line 8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x7f454c46

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/tencent/smtt/utils/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/smtt/utils/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/tencent/smtt/utils/e;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/e;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "checkElfFile Throwable: "

    .line 4
    invoke-static {v0, p0}, Lf/b/a/a/a;->z(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkElfFile UnknownFormatConversionException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkElfFile IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->h:Lcom/tencent/smtt/utils/e$a;

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/utils/e;->g:Lcom/tencent/smtt/utils/c;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->d()Z

    move-result v2

    const-string v3, ".dynsym"

    .line 4
    invoke-virtual {p0, v3}, Lcom/tencent/smtt/utils/e;->a(Ljava/lang/String;)Lcom/tencent/smtt/utils/e$k;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v3}, Lcom/tencent/smtt/utils/e$k;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/tencent/smtt/utils/c;->a(J)V

    .line 6
    invoke-virtual {v3}, Lcom/tencent/smtt/utils/e$k;->a()I

    move-result v5

    if-eqz v2, :cond_0

    const/16 v6, 0x18

    goto :goto_0

    :cond_0
    const/16 v6, 0x10

    :goto_0
    div-int/2addr v5, v6

    .line 7
    new-array v6, v5, [Lcom/tencent/smtt/utils/e$l;

    iput-object v6, p0, Lcom/tencent/smtt/utils/e;->e:[Lcom/tencent/smtt/utils/e$l;

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    if-eqz v2, :cond_1

    .line 8
    new-instance v8, Lcom/tencent/smtt/utils/e$i;

    invoke-direct {v8}, Lcom/tencent/smtt/utils/e$i;-><init>()V

    .line 9
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/e$l;->c:I

    .line 10
    invoke-virtual {v1, v6}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 11
    aget-char v9, v6, v4

    iput-char v9, v8, Lcom/tencent/smtt/utils/e$l;->d:C

    .line 12
    invoke-virtual {v1, v6}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 13
    aget-char v9, v6, v4

    iput-char v9, v8, Lcom/tencent/smtt/utils/e$l;->e:C

    .line 14
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/tencent/smtt/utils/e$i;->a:J

    .line 15
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/tencent/smtt/utils/e$i;->b:J

    .line 16
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v9

    iput-short v9, v8, Lcom/tencent/smtt/utils/e$l;->f:S

    .line 17
    iget-object v9, p0, Lcom/tencent/smtt/utils/e;->e:[Lcom/tencent/smtt/utils/e$l;

    aput-object v8, v9, v7

    goto :goto_2

    .line 18
    :cond_1
    new-instance v8, Lcom/tencent/smtt/utils/e$e;

    invoke-direct {v8}, Lcom/tencent/smtt/utils/e$e;-><init>()V

    .line 19
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/e$l;->c:I

    .line 20
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/e$e;->a:I

    .line 21
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v9

    iput v9, v8, Lcom/tencent/smtt/utils/e$e;->b:I

    .line 22
    invoke-virtual {v1, v6}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 23
    aget-char v9, v6, v4

    iput-char v9, v8, Lcom/tencent/smtt/utils/e$l;->d:C

    .line 24
    invoke-virtual {v1, v6}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 25
    aget-char v9, v6, v4

    iput-char v9, v8, Lcom/tencent/smtt/utils/e$l;->e:C

    .line 26
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->a()S

    move-result v9

    iput-short v9, v8, Lcom/tencent/smtt/utils/e$l;->f:S

    .line 27
    iget-object v9, p0, Lcom/tencent/smtt/utils/e;->e:[Lcom/tencent/smtt/utils/e$l;

    aput-object v8, v9, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 28
    :cond_2
    iget-object v5, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    iget v3, v3, Lcom/tencent/smtt/utils/e$k;->i:I

    aget-object v3, v5, v3

    .line 29
    invoke-virtual {v3}, Lcom/tencent/smtt/utils/e$k;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/tencent/smtt/utils/c;->a(J)V

    .line 30
    invoke-virtual {v3}, Lcom/tencent/smtt/utils/e$k;->a()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/tencent/smtt/utils/e;->f:[B

    .line 31
    invoke-virtual {v1, v3}, Lcom/tencent/smtt/utils/c;->a([B)I

    .line 32
    :cond_3
    iget-short v3, v0, Lcom/tencent/smtt/utils/e$a;->g:S

    new-array v3, v3, [Lcom/tencent/smtt/utils/e$j;

    iput-object v3, p0, Lcom/tencent/smtt/utils/e;->d:[Lcom/tencent/smtt/utils/e$j;

    .line 33
    :goto_3
    iget-short v3, v0, Lcom/tencent/smtt/utils/e$a;->g:S

    if-ge v4, v3, :cond_5

    .line 34
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/e$a;->b()J

    move-result-wide v5

    iget-short v3, v0, Lcom/tencent/smtt/utils/e$a;->f:S

    mul-int v3, v3, v4

    int-to-long v7, v3

    add-long/2addr v5, v7

    .line 35
    invoke-virtual {v1, v5, v6}, Lcom/tencent/smtt/utils/c;->a(J)V

    if-eqz v2, :cond_4

    .line 36
    new-instance v3, Lcom/tencent/smtt/utils/e$g;

    invoke-direct {v3}, Lcom/tencent/smtt/utils/e$g;-><init>()V

    .line 37
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$j;->g:I

    .line 38
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$j;->h:I

    .line 39
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->a:J

    .line 40
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->b:J

    .line 41
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->c:J

    .line 42
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->d:J

    .line 43
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->e:J

    .line 44
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->c()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/tencent/smtt/utils/e$g;->f:J

    .line 45
    iget-object v5, p0, Lcom/tencent/smtt/utils/e;->d:[Lcom/tencent/smtt/utils/e$j;

    aput-object v3, v5, v4

    goto :goto_4

    .line 46
    :cond_4
    new-instance v3, Lcom/tencent/smtt/utils/e$c;

    invoke-direct {v3}, Lcom/tencent/smtt/utils/e$c;-><init>()V

    .line 47
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$j;->g:I

    .line 48
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$j;->h:I

    .line 49
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->a:I

    .line 50
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->b:I

    .line 51
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->c:I

    .line 52
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->d:I

    .line 53
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->e:I

    .line 54
    invoke-virtual {v1}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v5

    iput v5, v3, Lcom/tencent/smtt/utils/e$c;->f:I

    .line 55
    iget-object v5, p0, Lcom/tencent/smtt/utils/e;->d:[Lcom/tencent/smtt/utils/e$j;

    aput-object v3, v5, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method public static g()Z
    .locals 2

    const-string v0, "java.vm.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "2"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/smtt/utils/e$k;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->i:[Lcom/tencent/smtt/utils/e$k;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lcom/tencent/smtt/utils/e$k;->g:I

    invoke-virtual {p0, v4}, Lcom/tencent/smtt/utils/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SHN_UNDEF"

    return-object p1

    :cond_0
    move v0, p1

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/tencent/smtt/utils/e;->j:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/smtt/utils/e;->j:[B

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->b:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sget-object v2, Lcom/tencent/smtt/utils/e;->a:[C

    aget-char v2, v2, v1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final b()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->b:[C

    const/4 v1, 0x4

    aget-char v0, v0, v1

    return v0
.end method

.method public final c()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->b:[C

    const/4 v1, 0x5

    aget-char v0, v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/utils/e;->g:Lcom/tencent/smtt/utils/c;

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/c;->close()V

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->b()C

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/e;->c()C

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
