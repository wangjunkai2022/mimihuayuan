.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchViewQueryGroupBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;,
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;
    }
.end annotation


# instance fields
.field public query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;

.field public view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;->query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;

    return-object v0
.end method

.method public getView_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;->view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;

    return-object v0
.end method

.method public setQuery_group(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;->query_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$QueryGroupBean;

    return-void
.end method

.method public setView_group(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean;->view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX;

    return-void
.end method
