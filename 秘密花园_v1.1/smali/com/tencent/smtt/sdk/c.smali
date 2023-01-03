.class public Lcom/tencent/smtt/sdk/c;
.super Ljava/lang/Object;
.source "OatHelper.java"


# static fields
.field public static a:I = 0x5

.field public static b:I = 0x10

.field public static c:[C = null

.field public static d:Ljava/lang/String; = "dex2oat-cmdline"

.field public static e:J = 0x1000L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    sput-object v0, Lcom/tencent/smtt/sdk/c;->c:[C

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/tencent/smtt/utils/c;

    invoke-direct {p0, p1}, Lcom/tencent/smtt/utils/c;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/tencent/smtt/sdk/c;->c:[C

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 3
    sget-object p1, Lcom/tencent/smtt/sdk/c;->c:[C

    sget v0, Lcom/tencent/smtt/sdk/c;->a:I

    aget-char p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/c;->a(Z)V

    .line 4
    sget-wide v0, Lcom/tencent/smtt/sdk/c;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/utils/c;->a(J)V

    .line 5
    invoke-static {p0}, Lcom/tencent/smtt/sdk/c;->a(Lcom/tencent/smtt/utils/c;)[C

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 9
    aget-object v0, p0, v0

    add-int/lit8 v2, v1, 0x1

    .line 10
    aget-object v1, p0, v1

    .line 11
    sget-object v3, Lcom/tencent/smtt/sdk/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static a(Lcom/tencent/smtt/utils/c;)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [C

    new-array v0, v0, [C

    .line 12
    invoke-virtual {p0, v1}, Lcom/tencent/smtt/utils/c;->a([C)I

    const/4 v2, 0x0

    .line 13
    aget-char v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x6f

    if-ne v3, v6, :cond_1

    aget-char v3, v1, v5

    const/16 v6, 0x61

    if-ne v3, v6, :cond_1

    aget-char v3, v1, v4

    const/16 v6, 0x74

    if-ne v3, v6, :cond_1

    .line 14
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/c;->a([C)I

    .line 15
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 16
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 17
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 18
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 19
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 20
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 21
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 22
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 23
    aget-char v0, v0, v5

    const/16 v1, 0x34

    if-gt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 25
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 26
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 28
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 29
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 30
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 31
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 32
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 33
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    .line 34
    invoke-virtual {p0}, Lcom/tencent/smtt/utils/c;->b()I

    move-result v0

    .line 35
    new-array v0, v0, [C

    .line 36
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/utils/c;->a([C)I

    return-object v0

    .line 37
    :cond_1
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aget-char v3, v1, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v0, v2

    aget-char v2, v1, v5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v5

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Invalid art magic %c%c%c"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
