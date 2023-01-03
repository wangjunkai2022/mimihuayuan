.class public Lcom/comeback/data/ui/nana/bean/MenuBean;
.super Lf/e/a/f/j;
.source "MenuBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;,
        Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;
    }
.end annotation


# instance fields
.field public response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/i/b/b0/b;
        value = "response"
    .end annotation
.end field

.field public status:Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;
    .annotation runtime Lf/i/b/b0/b;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/MenuBean;->response:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/MenuBean;->status:Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;

    return-object v0
.end method

.method public setResponse(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/MenuBean;->response:Ljava/util/List;

    return-void
.end method

.method public setStatus(Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/MenuBean;->status:Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;

    return-void
.end method
