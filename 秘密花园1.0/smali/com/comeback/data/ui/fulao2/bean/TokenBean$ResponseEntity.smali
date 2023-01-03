.class public Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;
.super Ljava/lang/Object;
.source "TokenBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/bean/TokenBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseEntity"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/comeback/data/ui/fulao2/bean/TokenBean;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/bean/TokenBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;->this$0:Lcom/comeback/data/ui/fulao2/bean/TokenBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/bean/TokenBean$ResponseEntity;->token:Ljava/lang/String;

    return-void
.end method
