.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendViewQueryGroupBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;
    }
.end annotation


# instance fields
.field public view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView_group()Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;->view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;

    return-object v0
.end method

.method public setView_group(Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean;->view_group:Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean;

    return-void
.end method
