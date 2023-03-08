.class public Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageEntity"
.end annotation


# instance fields
.field public atlas_cover:Ljava/lang/String;

.field public atlas_id:I

.field public atlas_long:I

.field public atlas_name:Ljava/lang/String;

.field public collect_count_cycle:I

.field public push_time:I

.field public final synthetic this$1:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->this$1:Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtlas_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlas_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_id:I

    return v0
.end method

.method public getAtlas_long()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_long:I

    return v0
.end method

.method public getAtlas_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->collect_count_cycle:I

    return v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->push_time:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count:I

    return v0
.end method

.method public getWatch_countText()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count:I

    const-string v1, "09jZgtvnGQ=="

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-float v0, v0

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v0, v2

    .line 3
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "B0xT"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QA=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count_cycle:I

    return v0
.end method

.method public setAtlas_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_cover:Ljava/lang/String;

    return-void
.end method

.method public setAtlas_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_id:I

    return-void
.end method

.method public setAtlas_long(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_long:I

    return-void
.end method

.method public setAtlas_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->atlas_name:Ljava/lang/String;

    return-void
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->collect_count_cycle:I

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->push_time:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;->watch_count_cycle:I

    return-void
.end method
