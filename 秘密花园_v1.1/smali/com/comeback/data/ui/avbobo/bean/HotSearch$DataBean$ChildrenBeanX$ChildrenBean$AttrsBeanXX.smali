.class public Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean$AttrsBeanXX;
.super Ljava/lang/Object;
.source "HotSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrsBeanXX"
.end annotation


# instance fields
.field public enabled:Z

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
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean$AttrsBeanXX;->view:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean$AttrsBeanXX;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean$AttrsBeanXX;->enabled:Z

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/HotSearch$DataBean$ChildrenBeanX$ChildrenBean$AttrsBeanXX;->view:Ljava/lang/String;

    return-void
.end method
