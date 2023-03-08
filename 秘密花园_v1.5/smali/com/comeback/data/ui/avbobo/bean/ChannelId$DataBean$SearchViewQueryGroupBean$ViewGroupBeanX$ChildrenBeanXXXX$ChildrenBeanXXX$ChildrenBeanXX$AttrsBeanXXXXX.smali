.class public Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX$AttrsBeanXXXXX;
.super Ljava/lang/Object;
.source "ChannelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrsBeanXXXXX"
.end annotation


# instance fields
.field public selected:Z

.field public view:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX$AttrsBeanXXXXX;->view:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX$AttrsBeanXXXXX;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX$AttrsBeanXXXXX;->selected:Z

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/ChannelId$DataBean$SearchViewQueryGroupBean$ViewGroupBeanX$ChildrenBeanXXXX$ChildrenBeanXXX$ChildrenBeanXX$AttrsBeanXXXXX;->view:Ljava/lang/String;

    return-void
.end method
