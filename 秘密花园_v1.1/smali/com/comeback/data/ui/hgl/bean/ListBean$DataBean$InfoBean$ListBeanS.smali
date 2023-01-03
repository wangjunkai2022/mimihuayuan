.class public Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;
.super Ljava/lang/Object;
.source "ListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBeanS"
.end annotation


# instance fields
.field public anyway:Ljava/lang/String;

.field public avatar:Ljava/lang/String;

.field public avatar_thumb:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public game:Ljava/lang/String;

.field public game_action:Ljava/lang/String;

.field public goodnum:Ljava/lang/String;

.field public hotpostion:Ljava/lang/String;

.field public isvideo:Ljava/lang/String;

.field public level_anchor:Ljava/lang/String;

.field public nums:Ljava/lang/String;

.field public pull:Ljava/lang/String;

.field public stream:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type_money:Ljava/lang/String;

.field public type_money_val:Ljava/lang/String;

.field public type_pass:Ljava/lang/String;

.field public type_pass_val:Ljava/lang/String;

.field public type_super_vip:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public user_nicename:Ljava/lang/String;

.field public votestotal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnyway()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->anyway:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar_thumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->avatar_thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->game:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_action()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->game_action:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodnum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->goodnum:Ljava/lang/String;

    return-object v0
.end method

.method public getHotpostion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->hotpostion:Ljava/lang/String;

    return-object v0
.end method

.method public getIsvideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->isvideo:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel_anchor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->level_anchor:Ljava/lang/String;

    return-object v0
.end method

.method public getNums()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->nums:Ljava/lang/String;

    const-string v2, "F4f/zIzvsg=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPull()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->pull:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->stream:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType_money()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_money:Ljava/lang/String;

    return-object v0
.end method

.method public getType_money_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_money_val:Ljava/lang/String;

    return-object v0
.end method

.method public getType_pass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_pass:Ljava/lang/String;

    return-object v0
.end method

.method public getType_pass_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_pass_val:Ljava/lang/String;

    return-object v0
.end method

.method public getType_super_vip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_super_vip:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_nicename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->user_nicename:Ljava/lang/String;

    return-object v0
.end method

.method public getVotestotal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->votestotal:Ljava/lang/String;

    return-object v0
.end method

.method public setAnyway(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->anyway:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setAvatar_thumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->avatar_thumb:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->city:Ljava/lang/String;

    return-void
.end method

.method public setGame(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->game:Ljava/lang/String;

    return-void
.end method

.method public setGame_action(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->game_action:Ljava/lang/String;

    return-void
.end method

.method public setGoodnum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->goodnum:Ljava/lang/String;

    return-void
.end method

.method public setHotpostion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->hotpostion:Ljava/lang/String;

    return-void
.end method

.method public setIsvideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->isvideo:Ljava/lang/String;

    return-void
.end method

.method public setLevel_anchor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->level_anchor:Ljava/lang/String;

    return-void
.end method

.method public setNums(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->nums:Ljava/lang/String;

    return-void
.end method

.method public setPull(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->pull:Ljava/lang/String;

    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->stream:Ljava/lang/String;

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->thumb:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->title:Ljava/lang/String;

    return-void
.end method

.method public setType_money(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_money:Ljava/lang/String;

    return-void
.end method

.method public setType_money_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_money_val:Ljava/lang/String;

    return-void
.end method

.method public setType_pass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_pass:Ljava/lang/String;

    return-void
.end method

.method public setType_pass_val(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_pass_val:Ljava/lang/String;

    return-void
.end method

.method public setType_super_vip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->type_super_vip:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser_nicename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->user_nicename:Ljava/lang/String;

    return-void
.end method

.method public setVotestotal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hgl/bean/ListBean$DataBean$InfoBean$ListBeanS;->votestotal:Ljava/lang/String;

    return-void
.end method
