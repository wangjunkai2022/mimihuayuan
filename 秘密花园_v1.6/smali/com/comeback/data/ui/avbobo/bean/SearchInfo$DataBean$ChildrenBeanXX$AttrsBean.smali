.class public Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean;
.super Ljava/lang/Object;
.source "SearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;
    }
.end annotation


# instance fields
.field public view:Ljava/lang/String;

.field public viewProps:Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;


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
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean;->view:Ljava/lang/String;

    return-object v0
.end method

.method public getViewProps()Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean;->viewProps:Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;

    return-object v0
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean;->view:Ljava/lang/String;

    return-void
.end method

.method public setViewProps(Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean;->viewProps:Lcom/comeback/data/ui/avbobo/bean/SearchInfo$DataBean$ChildrenBeanXX$AttrsBean$ViewPropsBean;

    return-void
.end method
