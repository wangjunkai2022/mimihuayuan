.class public Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;
.super Ljava/lang/Object;
.source "ConfBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ConfBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;

.field public final synthetic this$0:Lcom/comeback/data/ui/gkj/bean/ConfBean;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/bean/ConfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;->this$0:Lcom/comeback/data/ui/gkj/bean/ConfBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;->data:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;

    return-object v0
.end method

.method public setData(Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;->data:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;

    return-void
.end method
