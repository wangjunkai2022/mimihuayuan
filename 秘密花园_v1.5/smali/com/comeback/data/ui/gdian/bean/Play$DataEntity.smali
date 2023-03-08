.class public Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;
.super Ljava/lang/Object;
.source "Play.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/Play;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;,
        Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;
    }
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

.field public can_watch_time:I

.field public collect_count:I

.field public collect_count_cycle:I

.field public comment_count:I

.field public discount:I

.field public forever_point:I

.field public history_line:I

.field public history_long:I

.field public introduction:Ljava/lang/String;

.field public is_collect:I

.field public is_like:I

.field public is_watch:I

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

.field public like_count:I

.field public movie_cover:Ljava/lang/String;

.field public movie_id:I

.field public movie_long:Ljava/lang/String;

.field public movie_m3u8_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;",
            ">;"
        }
    .end annotation
.end field

.field public movie_mp4:Ljava/lang/String;

.field public movie_name:Ljava/lang/String;

.field public movie_preview_img:Ljava/lang/String;

.field public movie_score:I

.field public movie_second:I

.field public need_login:I

.field public need_vip:I

.field public oneday_point:I

.field public push_time:I

.field public suggestion_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/Play;

.field public user_coupons_state:I

.field public vip_line_num:I

.field public watch_count:I

.field public watch_count_cycle:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/Play;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/Play;

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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->actor_ids:Ljava/util/List;

    return-object v0
.end method

.method public getCan_watch_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->can_watch_time:I

    return v0
.end method

.method public getCollect_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->collect_count:I

    return v0
.end method

.method public getCollect_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->collect_count_cycle:I

    return v0
.end method

.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->comment_count:I

    return v0
.end method

.method public getDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->discount:I

    return v0
.end method

.method public getForever_point()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->forever_point:I

    return v0
.end method

.method public getHistory_line()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->history_line:I

    return v0
.end method

.method public getHistory_long()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->history_long:I

    return v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_collect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_collect:I

    return v0
.end method

.method public getIs_like()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_like:I

    return v0
.end method

.method public getIs_watch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_watch:I

    return v0
.end method

.method public getJav_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->jav_number:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getLike_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->like_count:I

    return v0
.end method

.method public getMovie_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_id:I

    return v0
.end method

.method public getMovie_long()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_long:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_m3u8_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_m3u8_url:Ljava/util/List;

    return-object v0
.end method

.method public getMovie_mp4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_mp4:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_preview_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_preview_img:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_score()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_score:I

    return v0
.end method

.method public getMovie_second()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_second:I

    return v0
.end method

.method public getNeed_login()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->need_login:I

    return v0
.end method

.method public getNeed_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->need_vip:I

    return v0
.end method

.method public getOneday_point()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->oneday_point:I

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->getMovie_m3u8_url()Ljava/util/List;

    move-result-object v0

    const-string v1, "XxYXFBhJFhwEEUNJGgsKD0JMAAsG"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->getMovie_m3u8_url()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->getMovie_m3u8_url()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;

    .line 5
    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBIPBRJM"

    .line 7
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBIPBRJdVAAGXgs="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPush_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->push_time:I

    return v0
.end method

.method public getSuggestion_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->suggestion_list:Ljava/util/List;

    return-object v0
.end method

.method public getUser_coupons_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->user_coupons_state:I

    return v0
.end method

.method public getVip_line_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->vip_line_num:I

    return v0
.end method

.method public getWatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->watch_count:I

    return v0
.end method

.method public getWatch_count_cycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->watch_count_cycle:I

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
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->actor_ids:Ljava/util/List;

    return-void
.end method

.method public setCan_watch_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->can_watch_time:I

    return-void
.end method

.method public setCollect_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->collect_count:I

    return-void
.end method

.method public setCollect_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->collect_count_cycle:I

    return-void
.end method

.method public setComment_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->comment_count:I

    return-void
.end method

.method public setDiscount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->discount:I

    return-void
.end method

.method public setForever_point(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->forever_point:I

    return-void
.end method

.method public setHistory_line(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->history_line:I

    return-void
.end method

.method public setHistory_long(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->history_long:I

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setIs_collect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_collect:I

    return-void
.end method

.method public setIs_like(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_like:I

    return-void
.end method

.method public setIs_watch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->is_watch:I

    return-void
.end method

.method public setJav_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->jav_number:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->labels:Ljava/util/List;

    return-void
.end method

.method public setLike_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->like_count:I

    return-void
.end method

.method public setMovie_cover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_cover:Ljava/lang/String;

    return-void
.end method

.method public setMovie_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_id:I

    return-void
.end method

.method public setMovie_long(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_long:Ljava/lang/String;

    return-void
.end method

.method public setMovie_m3u8_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Movie_m3u8_urlEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_m3u8_url:Ljava/util/List;

    return-void
.end method

.method public setMovie_mp4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_mp4:Ljava/lang/String;

    return-void
.end method

.method public setMovie_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_name:Ljava/lang/String;

    return-void
.end method

.method public setMovie_preview_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_preview_img:Ljava/lang/String;

    return-void
.end method

.method public setMovie_score(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_score:I

    return-void
.end method

.method public setMovie_second(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->movie_second:I

    return-void
.end method

.method public setNeed_login(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->need_login:I

    return-void
.end method

.method public setNeed_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->need_vip:I

    return-void
.end method

.method public setOneday_point(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->oneday_point:I

    return-void
.end method

.method public setPush_time(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->push_time:I

    return-void
.end method

.method public setSuggestion_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/Play$DataEntity$Suggestion_listEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->suggestion_list:Ljava/util/List;

    return-void
.end method

.method public setUser_coupons_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->user_coupons_state:I

    return-void
.end method

.method public setVip_line_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->vip_line_num:I

    return-void
.end method

.method public setWatch_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->watch_count:I

    return-void
.end method

.method public setWatch_count_cycle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/Play$DataEntity;->watch_count_cycle:I

    return-void
.end method
