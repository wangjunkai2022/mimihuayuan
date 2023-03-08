.class public Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;
.super Ljava/lang/Object;
.source "MenuBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/bean/MenuBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusEntity"
.end annotation


# instance fields
.field public code:I
    .annotation runtime Lf/i/b/b0/b;
        value = "code"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "message"
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/nana/bean/MenuBean;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/bean/MenuBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;->this$0:Lcom/comeback/data/ui/nana/bean/MenuBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/bean/MenuBean$StatusEntity;->message:Ljava/lang/String;

    return-void
.end method
