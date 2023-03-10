.class public Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;
.super Ljava/lang/Object;
.source "TbsCoreLoadStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsCoreLoadStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TbsSequenceQueue"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

.field public b:I

.field public c:I

.field public d:[I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsCoreLoadStat;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    .line 4
    iput v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    .line 5
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsCoreLoadStat;II)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->a:Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->b:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    .line 10
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    .line 11
    iput p3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    .line 12
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    .line 13
    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    .line 14
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->c:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    aput p1, v1, v0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "sequeue is full"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2
    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    .line 3
    iput v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    return-void
.end method

.method public element()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    aget v0, v0, v1

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "sequeue is null"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public empty()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    aget v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    iput v3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    const/4 v3, 0x0

    aput v3, v0, v1

    return v2

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "sequeue is null"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->e:I

    :goto_0
    iget v2, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->f:I

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsCoreLoadStat$TbsSequenceQueue;->d:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
