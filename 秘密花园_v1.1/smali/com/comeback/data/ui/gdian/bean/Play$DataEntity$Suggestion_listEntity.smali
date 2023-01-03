.class public Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;
.super Ljava/lang/Object;
.source "Play.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Suggestion_listEntity"
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

.field public final synthetic this$1:Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->this$1:Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->actor_ids:Ljava/util/List;

    return-object v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->collect_count_cycle:I

    return v0
.end method

.method public getForever_point()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->forever_point:I

    return v0
.end method

.method public getJav_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->jav_number:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getList_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->list_type:I

    return v0
.end method

.method public getMovie_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_id:I

    return v0
.end method

.method public getMovie_long()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_long:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_preview_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_preview_img:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_score:I

    return v0
.end method

.method public getNeed_login()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->need_login:I

    return v0
.end method

.method public getNeed_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->need_vip:I

    return v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->push_time:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->watch_count:I

    return v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->watch_count_cycle:I

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
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->actor_ids:Ljava/util/List;

    return-void
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->collect_count_cycle:I

    return-void
.end method

.method public setForever_point(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->forever_point:I

    return-void
.end method

.method public setJav_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->jav_number:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->labels:Ljava/util/List;

    return-void
.end method

.method public setList_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->list_type:I

    return-void
.end method

.method public setMovie_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_cover:Ljava/lang/String;

    return-void
.end method

.method public setMovie_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_id:I

    return-void
.end method

.method public setMovie_long(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_long:Ljava/lang/String;

    return-void
.end method

.method public setMovie_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_name:Ljava/lang/String;

    return-void
.end method

.method public setMovie_preview_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_preview_img:Ljava/lang/String;

    return-void
.end method

.method public setMovie_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->movie_score:I

    return-void
.end method

.method public setNeed_login(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->need_login:I

    return-void
.end method

.method public setNeed_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->need_vip:I

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->push_time:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;->watch_count_cycle:I

    return-void
.end method
