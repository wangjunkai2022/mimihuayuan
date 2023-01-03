.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;
    }
.end annotation


# instance fields
.field public app_version:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public editable:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public order_index:I

.field public recommend_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;

.field public search_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;

.field public searchable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->order_index:I

    return v0
.end method

.method public getRecommend_view_query_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->recommend_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;

    return-object v0
.end method

.method public getSearch_view_query_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->search_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->editable:Z

    return v0
.end method

.method public isSearchable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->searchable:Z

    return v0
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->editable:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrder_index(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->order_index:I

    return-void
.end method

.method public setRecommend_view_query_group(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->recommend_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;

    return-void
.end method

.method public setSearch_view_query_group(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->search_view_query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;

    return-void
.end method

.method public setSearchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;->searchable:Z

    return-void
.end method
