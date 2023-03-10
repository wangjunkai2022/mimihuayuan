.class public Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;
.super Ljava/lang/Object;
.source "NovelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/NovelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public cate_id:I

.field public create_at:Ljava/lang/String;

.field public id:I

.field public is_collect:Z

.field public thumb:Ljava/lang/Object;

.field public title:Ljava/lang/String;

.field public update_at:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCate_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->cate_id:I

    return v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->id:I

    return v0
.end method

.method public getThumb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->thumb:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->update_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_collect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->is_collect:Z

    return v0
.end method

.method public setCate_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->cate_id:I

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->id:I

    return-void
.end method

.method public setIs_collect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->is_collect:Z

    return-void
.end method

.method public setThumb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->thumb:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->update_at:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/NovelList$DataBean;->url:Ljava/lang/String;

    return-void
.end method
