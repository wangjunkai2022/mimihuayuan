.class public Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;
.super Ljava/lang/Object;
.source "AuthBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/AuthBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseEntity"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/AuthBean;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/AuthBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->this$0:Lcom/comeback/data/ui/nana/bean/AuthBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->code:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/AuthBean$ResponseEntity;->token:Ljava/lang/String;

    return-void
.end method
