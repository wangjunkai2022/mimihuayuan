.class public Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoEntity"
.end annotation


# instance fields
.field public actor_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public collect_count_cycle:I

.field public forever_point:I

.field public jav_number:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public list_type:I

.field public movie_cover:Ljava/lang/String;

.field public movie_id:I

.field public movie_long:Ljava/lang/String;

.field public movie_name:Ljava/lang/String;

.field public movie_preview_img:Ljava/lang/String;

.field public movie_score:I

.field public need_login:I

.field public need_vip:I

.field public push_time:I

.field public final synthetic this$1:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->this$1:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->need_vip:I

    return p0
.end method


# virtual methods
.method public getActor_ids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->actor_ids:Ljava/util/List;

    return-object v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->collect_count_cycle:I

    return v0
.end method

.method public getForever_point()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->forever_point:I

    return v0
.end method

.method public getJav_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->jav_number:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getList_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->list_type:I

    return v0
.end method

.method public getMovie_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_id:I

    return v0
.end method

.method public getMovie_long()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_long:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_preview_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_preview_img:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_score:I

    return v0
.end method

.method public getNeed_login()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->need_login:I

    return v0
.end method

.method public getNeed_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->need_vip:I

    return v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->push_time:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count:I

    return v0
.end method

.method public getWatch_countText()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "0c7Cgvne36fN"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "B0xT"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QITPxY3hlNXn2A=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count_cycle:I

    return v0
.end method

.method public setActor_ids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->actor_ids:Ljava/util/List;

    return-void
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->collect_count_cycle:I

    return-void
.end method

.method public setForever_point(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->forever_point:I

    return-void
.end method

.method public setJav_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->jav_number:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->labels:Ljava/util/List;

    return-void
.end method

.method public setList_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->list_type:I

    return-void
.end method

.method public setMovie_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_cover:Ljava/lang/String;

    return-void
.end method

.method public setMovie_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_id:I

    return-void
.end method

.method public setMovie_long(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_long:Ljava/lang/String;

    return-void
.end method

.method public setMovie_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_name:Ljava/lang/String;

    return-void
.end method

.method public setMovie_preview_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_preview_img:Ljava/lang/String;

    return-void
.end method

.method public setMovie_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->movie_score:I

    return-void
.end method

.method public setNeed_login(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->need_login:I

    return-void
.end method

.method public setNeed_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->need_vip:I

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->push_time:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->watch_count_cycle:I

    return-void
.end method
