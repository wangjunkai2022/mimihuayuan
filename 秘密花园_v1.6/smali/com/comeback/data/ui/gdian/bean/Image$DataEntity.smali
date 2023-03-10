.class public Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public atlas_cover:Ljava/lang/String;

.field public atlas_id:I

.field public atlas_img:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public atlas_long:I

.field public atlas_name:Ljava/lang/String;

.field public atlas_score:I

.field public collect_count:I

.field public collect_count_cycle:I

.field public comment_count:I

.field public is_collect:I

.field public is_like:I

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public like_count:I

.field public push_time:I

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/Image;

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAtlas_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlas_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_id:I

    return v0
.end method

.method public getAtlas_img()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_img:Ljava/util/List;

    return-object v0
.end method

.method public getAtlas_long()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_long:I

    return v0
.end method

.method public getAtlas_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlas_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_score:I

    return v0
.end method

.method public getCollect_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->collect_count:I

    return v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->collect_count_cycle:I

    return v0
.end method

.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->comment_count:I

    return v0
.end method

.method public getIs_collect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->is_collect:I

    return v0
.end method

.method public getIs_like()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->is_like:I

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getLabelsText()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "GA=="

    .line 5
    invoke-static {v0, v2, v3}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLike_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->like_count:I

    return v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->push_time:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->watch_count:I

    return v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->watch_count_cycle:I

    return v0
.end method

.method public setAtlas_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_cover:Ljava/lang/String;

    return-void
.end method

.method public setAtlas_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_id:I

    return-void
.end method

.method public setAtlas_img(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_img:Ljava/util/List;

    return-void
.end method

.method public setAtlas_long(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_long:I

    return-void
.end method

.method public setAtlas_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_name:Ljava/lang/String;

    return-void
.end method

.method public setAtlas_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->atlas_score:I

    return-void
.end method

.method public setCollect_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->collect_count:I

    return-void
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->collect_count_cycle:I

    return-void
.end method

.method public setComment_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->comment_count:I

    return-void
.end method

.method public setIs_collect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->is_collect:I

    return-void
.end method

.method public setIs_like(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->is_like:I

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->labels:Ljava/util/List;

    return-void
.end method

.method public setLike_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->like_count:I

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->push_time:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Image$DataEntity;->watch_count_cycle:I

    return-void
.end method
