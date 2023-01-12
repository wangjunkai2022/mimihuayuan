.class public Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;
.super Ljava/lang/Object;
.source "ConfBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;
    }
.end annotation


# instance fields
.field public specialNav:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;->this$1:Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpecialNav()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;->specialNav:Ljava/util/List;

    return-object v0
.end method

.method public setSpecialNav(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity$SpecialNavEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ConfBean$ContentEntity$DataEntity;->specialNav:Ljava/util/List;

    return-void
.end method
