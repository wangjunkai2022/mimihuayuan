.class public Lcom/comeback/data/ui/mimei/bean/ComicHomeType;
.super Lf/e/a/f/j;
.source "ComicHomeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;
    }
.end annotation


# instance fields
.field public success:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getSuccess()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->success:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    return-object v0
.end method

.method public setSuccess(Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType;->success:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;

    return-void
.end method
