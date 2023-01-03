.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean$QueryBean$SortBean;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean$QueryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortBean"
.end annotation


# instance fields
.field public group_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean$QueryBean$SortBean;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$RecommendViewQueryGroupBean$ViewGroupBean$ChildrenBeanX$ChildrenBean$QueryBean$SortBean;->group_id:Ljava/lang/String;

    return-void
.end method
