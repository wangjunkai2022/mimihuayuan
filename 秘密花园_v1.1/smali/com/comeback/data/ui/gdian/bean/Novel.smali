.class public Lcom/comeback/data/ui/gdian/bean/Novel;
.super Lf/e/a/f/j;
.source "Novel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;
    }
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public data:Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;

.field public is_login:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->data:Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;

    return-object v0
.end method

.method public getIs_login()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->is_login:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->code:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->data:Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;

    return-void
.end method

.method public setIs_login(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->is_login:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/Novel;->msg:Ljava/lang/String;

    return-void
.end method
