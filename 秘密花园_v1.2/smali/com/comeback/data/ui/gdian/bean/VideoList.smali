.class public Lcom/comeback/data/ui/gdian/bean/VideoList;
.super Lf/e/a/f/k;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public data:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;

.field public is_login:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->data:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;

    return-object v0
.end method

.method public getIs_login()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->is_login:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->data:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity;

    return-void
.end method

.method public setIs_login(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->is_login:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/VideoList;->msg:Ljava/lang/String;

    return-void
.end method
