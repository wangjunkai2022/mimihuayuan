.class public Lcom/comeback/data/ui/gdian/bean/NovelList;
.super Lf/e/a/f/j;
.source "NovelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/NovelList$NovelEntity;,
        Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public data:Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;

.field public is_login:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->data:Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;

    return-object v0
.end method

.method public getIs_login()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->is_login:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->data:Lcom/comeback/data/ui/gdian/bean/NovelList$DataEntity;

    return-void
.end method

.method public setIs_login(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->is_login:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/NovelList;->msg:Ljava/lang/String;

    return-void
.end method
