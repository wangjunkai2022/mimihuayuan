.class public Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;
.super Ljava/lang/Object;
.source "LiveChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBean"
.end annotation


# instance fields
.field public img:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->this$1:Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;->title:Ljava/lang/String;

    return-void
.end method
